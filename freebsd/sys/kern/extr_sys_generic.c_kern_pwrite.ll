; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_kern_pwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_kern_pwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.uio = type { i32, i64, i32, %struct.iovec* }
%struct.iovec = type { i64, i8* }

@IOSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_pwrite(%struct.thread* %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.uio, align 8
  %13 = alloca %struct.iovec, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @IOSIZE_MAX, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %6, align 4
  br label %38

20:                                               ; preds = %5
  %21 = load i8*, i8** %9, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 3
  store %struct.iovec* %13, %struct.iovec** %27, align 8
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* @UIO_USERSPACE, align 4
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load %struct.thread*, %struct.thread** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @kern_pwritev(%struct.thread* %33, i32 %34, %struct.uio* %12, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %20, %18
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @kern_pwritev(%struct.thread*, i32, %struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
