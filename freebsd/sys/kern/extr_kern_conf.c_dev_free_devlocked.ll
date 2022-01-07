; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_dev_free_devlocked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_dev_free_devlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.cdev_priv = type { i32 }

@devmtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@CDP_UNREF_DTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"destroy_dev() was not called after delist_dev(%p)\00", align 1
@cdevp_free_list = common dso_local global i32 0, align 4
@cdp_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdev*)* @dev_free_devlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_free_devlocked(%struct.cdev* %0) #0 {
  %2 = alloca %struct.cdev*, align 8
  %3 = alloca %struct.cdev_priv*, align 8
  store %struct.cdev* %0, %struct.cdev** %2, align 8
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @mtx_assert(i32* @devmtx, i32 %4)
  %6 = load %struct.cdev*, %struct.cdev** %2, align 8
  %7 = call %struct.cdev_priv* @cdev2priv(%struct.cdev* %6)
  store %struct.cdev_priv* %7, %struct.cdev_priv** %3, align 8
  %8 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CDP_UNREF_DTR, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.cdev*, %struct.cdev** %2, align 8
  %16 = bitcast %struct.cdev* %15 to i8*
  %17 = call i32 @KASSERT(i32 %14, i8* %16)
  %18 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %19 = load i32, i32* @cdp_list, align 4
  %20 = call i32 @TAILQ_INSERT_HEAD(i32* @cdevp_free_list, %struct.cdev_priv* %18, i32 %19)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.cdev_priv* @cdev2priv(%struct.cdev*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.cdev_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
