; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_dofileread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_dofileread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, i32 }
%struct.file = type { i32 }
%struct.uio = type { i64, %struct.thread*, i32, i32 }

@UIO_READ = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@KTR_GENIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, %struct.file*, %struct.uio*, i32, i32)* @dofileread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dofileread(%struct.thread* %0, i32 %1, %struct.file* %2, %struct.uio* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.uio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.file* %2, %struct.file** %10, align 8
  store %struct.uio* %3, %struct.uio** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @AUDIT_ARG_FD(i32 %16)
  %18 = load %struct.uio*, %struct.uio** %11, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load %struct.thread*, %struct.thread** %8, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 0, i64* %26, align 8
  store i32 0, i32* %7, align 4
  br label %81

27:                                               ; preds = %6
  %28 = load i32, i32* @UIO_READ, align 4
  %29 = load %struct.uio*, %struct.uio** %11, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.uio*, %struct.uio** %11, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.thread*, %struct.thread** %8, align 8
  %35 = load %struct.uio*, %struct.uio** %11, align 8
  %36 = getelementptr inbounds %struct.uio, %struct.uio* %35, i32 0, i32 1
  store %struct.thread* %34, %struct.thread** %36, align 8
  %37 = load %struct.uio*, %struct.uio** %11, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load %struct.file*, %struct.file** %10, align 8
  %41 = load %struct.uio*, %struct.uio** %11, align 8
  %42 = load %struct.thread*, %struct.thread** %8, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.thread*, %struct.thread** %8, align 8
  %47 = call i32 @fo_read(%struct.file* %40, %struct.uio* %41, i32 %44, i32 %45, %struct.thread* %46)
  store i32 %47, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %27
  %50 = load %struct.uio*, %struct.uio** %11, align 8
  %51 = getelementptr inbounds %struct.uio, %struct.uio* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @ERESTART, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @EINTR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @EWOULDBLOCK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %59, %55
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %67, %63, %49
  br label %69

69:                                               ; preds = %68, %27
  %70 = load %struct.uio*, %struct.uio** %11, align 8
  %71 = getelementptr inbounds %struct.uio, %struct.uio* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %14, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load %struct.thread*, %struct.thread** %8, align 8
  %77 = getelementptr inbounds %struct.thread, %struct.thread* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %75, i64* %79, align 8
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %69, %22
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @fo_read(%struct.file*, %struct.uio*, i32, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
