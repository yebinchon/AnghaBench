; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon_wrapper.c_filemon_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon_wrapper.c_filemon_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filemon = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.uio = type { i32, i64, i64, i32, i32, i32, %struct.iovec* }
%struct.iovec = type { i8*, i64 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filemon*, i8*, i64)* @filemon_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filemon_output(%struct.filemon* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.filemon*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.uio, align 8
  %8 = alloca %struct.iovec, align 8
  %9 = alloca i32, align 4
  store %struct.filemon* %0, %struct.filemon** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.filemon*, %struct.filemon** %4, align 8
  %11 = getelementptr inbounds %struct.filemon, %struct.filemon* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %60

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 6
  store %struct.iovec* %8, %struct.iovec** %20, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = load i32, i32* @UIO_SYSSPACE, align 4
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 5
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @UIO_WRITE, align 4
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @curthread, align 4
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 2
  store i64 -1, i64* %30, align 8
  %31 = load %struct.filemon*, %struct.filemon** %4, align 8
  %32 = getelementptr inbounds %struct.filemon, %struct.filemon* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DTYPE_VNODE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %15
  %39 = call i32 (...) @bwillwrite()
  br label %40

40:                                               ; preds = %38, %15
  %41 = load %struct.filemon*, %struct.filemon** %4, align 8
  %42 = getelementptr inbounds %struct.filemon, %struct.filemon* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.filemon*, %struct.filemon** %4, align 8
  %45 = getelementptr inbounds %struct.filemon, %struct.filemon* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @curthread, align 4
  %48 = call i32 @fo_write(%struct.TYPE_2__* %43, %struct.uio* %7, i32 %46, i32 0, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load %struct.filemon*, %struct.filemon** %4, align 8
  %53 = getelementptr inbounds %struct.filemon, %struct.filemon* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.filemon*, %struct.filemon** %4, align 8
  %59 = getelementptr inbounds %struct.filemon, %struct.filemon* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %14, %56, %51, %40
  ret void
}

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @fo_write(%struct.TYPE_2__*, %struct.uio*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
