; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_process.c_proc_iop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_process.c_proc_iop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }
%struct.iovec = type { i64, i64 }
%struct.uio = type { i32, i64, i32, %struct.thread*, i32, i32, %struct.iovec* }

@SSIZE_MAX = common dso_local global i64 0, align 8
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.thread*, %struct.proc*, i32, i8*, i64, i32)* @proc_iop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @proc_iop(%struct.thread* %0, %struct.proc* %1, i32 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.iovec, align 8
  %15 = alloca %struct.uio, align 8
  %16 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %8, align 8
  store %struct.proc* %1, %struct.proc** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* @SSIZE_MAX, align 8
  %19 = icmp ult i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @MPASS(i32 %20)
  %22 = load i64, i64* %12, align 8
  store i64 %22, i64* %16, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 6
  store %struct.iovec* %14, %struct.iovec** %28, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 5
  store i32 %30, i32* %31, align 4
  %32 = load i64, i64* %16, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* @UIO_SYSSPACE, align 4
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load %struct.thread*, %struct.thread** %8, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 3
  store %struct.thread* %38, %struct.thread** %39, align 8
  %40 = load %struct.proc*, %struct.proc** %9, align 8
  %41 = call i32 @proc_rwmem(%struct.proc* %40, %struct.uio* %15)
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %16, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %6
  store i64 -1, i64* %7, align 8
  br label %52

47:                                               ; preds = %6
  %48 = load i64, i64* %16, align 8
  %49 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %48, %50
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %47, %46
  %53 = load i64, i64* %7, align 8
  ret i64 %53
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @proc_rwmem(%struct.proc*, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
