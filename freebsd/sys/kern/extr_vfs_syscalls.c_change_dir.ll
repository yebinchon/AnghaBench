; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_change_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_change_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"change_dir(): vp not locked\00", align 1
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @change_dir(%struct.vnode* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %6 = load %struct.vnode*, %struct.vnode** %4, align 8
  %7 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VDIR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOTDIR, align 4
  store i32 %14, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.vnode*, %struct.vnode** %4, align 8
  %17 = load i32, i32* @VEXEC, align 4
  %18 = load %struct.thread*, %struct.thread** %5, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.thread*, %struct.thread** %5, align 8
  %22 = call i32 @VOP_ACCESS(%struct.vnode* %16, i32 %17, i32 %20, %struct.thread* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %15, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
