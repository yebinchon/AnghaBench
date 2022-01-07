; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_v_addpollinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_v_addpollinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.vpollinfo* }
%struct.vpollinfo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@vnodepoll_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"vnode pollinfo\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@vfs_knllock = common dso_local global i32 0, align 4
@vfs_knlunlock = common dso_local global i32 0, align 4
@vfs_knl_assert_locked = common dso_local global i32 0, align 4
@vfs_knl_assert_unlocked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_addpollinfo(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.vpollinfo*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %4 = load %struct.vnode*, %struct.vnode** %2, align 8
  %5 = getelementptr inbounds %struct.vnode, %struct.vnode* %4, i32 0, i32 0
  %6 = load %struct.vpollinfo*, %struct.vpollinfo** %5, align 8
  %7 = icmp ne %struct.vpollinfo* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  %10 = load i32, i32* @vnodepoll_zone, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.vpollinfo* @uma_zalloc(i32 %10, i32 %13)
  store %struct.vpollinfo* %14, %struct.vpollinfo** %3, align 8
  %15 = load %struct.vpollinfo*, %struct.vpollinfo** %3, align 8
  %16 = getelementptr inbounds %struct.vpollinfo, %struct.vpollinfo* %15, i32 0, i32 1
  %17 = load i32, i32* @MTX_DEF, align 4
  %18 = call i32 @mtx_init(i32* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, i32 %17)
  %19 = load %struct.vpollinfo*, %struct.vpollinfo** %3, align 8
  %20 = getelementptr inbounds %struct.vpollinfo, %struct.vpollinfo* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.vnode*, %struct.vnode** %2, align 8
  %23 = load i32, i32* @vfs_knllock, align 4
  %24 = load i32, i32* @vfs_knlunlock, align 4
  %25 = load i32, i32* @vfs_knl_assert_locked, align 4
  %26 = load i32, i32* @vfs_knl_assert_unlocked, align 4
  %27 = call i32 @knlist_init(i32* %21, %struct.vnode* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.vnode*, %struct.vnode** %2, align 8
  %29 = call i32 @VI_LOCK(%struct.vnode* %28)
  %30 = load %struct.vnode*, %struct.vnode** %2, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load %struct.vpollinfo*, %struct.vpollinfo** %31, align 8
  %33 = icmp ne %struct.vpollinfo* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %9
  %35 = load %struct.vnode*, %struct.vnode** %2, align 8
  %36 = call i32 @VI_UNLOCK(%struct.vnode* %35)
  %37 = load %struct.vpollinfo*, %struct.vpollinfo** %3, align 8
  %38 = call i32 @destroy_vpollinfo_free(%struct.vpollinfo* %37)
  br label %45

39:                                               ; preds = %9
  %40 = load %struct.vpollinfo*, %struct.vpollinfo** %3, align 8
  %41 = load %struct.vnode*, %struct.vnode** %2, align 8
  %42 = getelementptr inbounds %struct.vnode, %struct.vnode* %41, i32 0, i32 0
  store %struct.vpollinfo* %40, %struct.vpollinfo** %42, align 8
  %43 = load %struct.vnode*, %struct.vnode** %2, align 8
  %44 = call i32 @VI_UNLOCK(%struct.vnode* %43)
  br label %45

45:                                               ; preds = %39, %34, %8
  ret void
}

declare dso_local %struct.vpollinfo* @uma_zalloc(i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @knlist_init(i32*, %struct.vnode*, i32, i32, i32, i32) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @destroy_vpollinfo_free(%struct.vpollinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
