; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_dev_unlock_and_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_dev_unlock_and_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.free_cdevsw = type { i32 }
%struct.cdev_priv_list = type { i32 }
%struct.cdev_priv = type { i32 }
%struct.cdevsw = type { i32 }

@devmtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@cdevp_free_list = common dso_local global i32 0, align 4
@cdp_list = common dso_local global i32 0, align 4
@cdevsw_gt_post_list = common dso_local global %struct.free_cdevsw zeroinitializer, align 4
@d_postfree_list = common dso_local global i32 0, align 4
@M_DEVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dev_unlock_and_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_unlock_and_free() #0 {
  %1 = alloca %struct.cdev_priv_list, align 4
  %2 = alloca %struct.free_cdevsw, align 4
  %3 = alloca %struct.cdev_priv*, align 8
  %4 = alloca %struct.cdevsw*, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @mtx_assert(i32* @devmtx, i32 %5)
  %7 = call i32 @TAILQ_INIT(%struct.cdev_priv_list* %1)
  %8 = load i32, i32* @cdp_list, align 4
  %9 = call i32 @TAILQ_CONCAT(%struct.cdev_priv_list* %1, i32* @cdevp_free_list, i32 %8)
  %10 = bitcast %struct.free_cdevsw* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.free_cdevsw* @cdevsw_gt_post_list to i8*), i64 4, i1 false)
  %11 = call i32 @SLIST_INIT(%struct.free_cdevsw* @cdevsw_gt_post_list)
  %12 = call i32 @mtx_unlock(i32* @devmtx)
  br label %13

13:                                               ; preds = %16, %0
  %14 = call %struct.cdev_priv* @TAILQ_FIRST(%struct.cdev_priv_list* %1)
  store %struct.cdev_priv* %14, %struct.cdev_priv** %3, align 8
  %15 = icmp ne %struct.cdev_priv* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %18 = load i32, i32* @cdp_list, align 4
  %19 = call i32 @TAILQ_REMOVE(%struct.cdev_priv_list* %1, %struct.cdev_priv* %17, i32 %18)
  %20 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %21 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %20, i32 0, i32 0
  %22 = call i32 @devfs_free(i32* %21)
  br label %13

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %27, %23
  %25 = call %struct.cdevsw* @SLIST_FIRST(%struct.free_cdevsw* %2)
  store %struct.cdevsw* %25, %struct.cdevsw** %4, align 8
  %26 = icmp ne %struct.cdevsw* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @d_postfree_list, align 4
  %29 = call i32 @SLIST_REMOVE_HEAD(%struct.free_cdevsw* %2, i32 %28)
  %30 = load %struct.cdevsw*, %struct.cdevsw** %4, align 8
  %31 = load i32, i32* @M_DEVT, align 4
  %32 = call i32 @free(%struct.cdevsw* %30, i32 %31)
  br label %24

33:                                               ; preds = %24
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(%struct.cdev_priv_list*) #1

declare dso_local i32 @TAILQ_CONCAT(%struct.cdev_priv_list*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SLIST_INIT(%struct.free_cdevsw*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.cdev_priv* @TAILQ_FIRST(%struct.cdev_priv_list*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.cdev_priv_list*, %struct.cdev_priv*, i32) #1

declare dso_local i32 @devfs_free(i32*) #1

declare dso_local %struct.cdevsw* @SLIST_FIRST(%struct.free_cdevsw*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(%struct.free_cdevsw*, i32) #1

declare dso_local i32 @free(%struct.cdevsw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
