; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_rlimit_fsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_rlimit_fsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.uio = type { i64, i64 }
%struct.thread = type { i32 }

@VREG = common dso_local global i64 0, align 8
@RLIMIT_FSIZE = common dso_local global i32 0, align 4
@SIGXFSZ = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_rlimit_fsize(%struct.vnode* %0, %struct.uio* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca %struct.thread*, align 8
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %8 = load %struct.vnode*, %struct.vnode** %5, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VREG, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.thread*, %struct.thread** %7, align 8
  %15 = icmp eq %struct.thread* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %45

17:                                               ; preds = %13
  %18 = load %struct.uio*, %struct.uio** %6, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.uio*, %struct.uio** %6, align 8
  %22 = getelementptr inbounds %struct.uio, %struct.uio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.thread*, %struct.thread** %7, align 8
  %26 = load i32, i32* @RLIMIT_FSIZE, align 4
  %27 = call i64 @lim_cur(%struct.thread* %25, i32 %26)
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %17
  %30 = load %struct.thread*, %struct.thread** %7, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PROC_LOCK(i32 %32)
  %34 = load %struct.thread*, %struct.thread** %7, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SIGXFSZ, align 4
  %38 = call i32 @kern_psignal(i32 %36, i32 %37)
  %39 = load %struct.thread*, %struct.thread** %7, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PROC_UNLOCK(i32 %41)
  %43 = load i32, i32* @EFBIG, align 4
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %29, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @lim_cur(%struct.thread*, i32) #1

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @kern_psignal(i32, i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
