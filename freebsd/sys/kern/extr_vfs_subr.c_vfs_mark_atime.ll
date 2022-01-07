; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_mark_atime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_mark_atime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.mount* }
%struct.mount = type { i32 }
%struct.ucred = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"vfs_mark_atime\00", align 1
@MNT_NOATIME = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_mark_atime(%struct.vnode* %0, %struct.ucred* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.mount*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.ucred* %1, %struct.ucred** %4, align 8
  %6 = load %struct.vnode*, %struct.vnode** %3, align 8
  %7 = getelementptr inbounds %struct.vnode, %struct.vnode* %6, i32 0, i32 0
  %8 = load %struct.mount*, %struct.mount** %7, align 8
  store %struct.mount* %8, %struct.mount** %5, align 8
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.mount*, %struct.mount** %5, align 8
  %12 = icmp ne %struct.mount* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.mount*, %struct.mount** %5, align 8
  %15 = getelementptr inbounds %struct.mount, %struct.mount* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MNT_NOATIME, align 4
  %18 = load i32, i32* @MNT_RDONLY, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.vnode*, %struct.vnode** %3, align 8
  %24 = call i32 @VOP_MARKATIME(%struct.vnode* %23)
  br label %25

25:                                               ; preds = %22, %13, %2
  ret void
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_MARKATIME(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
