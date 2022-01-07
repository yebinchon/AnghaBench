; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athspectral/extr_athspectral.c_spectral_opendev.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athspectral/extr_athspectral.c_spectral_opendev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spectralhandler = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@HAL_DIAG_REVS = common dso_local global i32 0, align 4
@SIOCGATHDIAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spectral_opendev(%struct.spectralhandler* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spectralhandler*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  store %struct.spectralhandler* %0, %struct.spectralhandler** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load i32, i32* @SOCK_DGRAM, align 4
  %9 = call i64 @socket(i32 %7, i32 %8, i32 0)
  %10 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %11 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %13 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %55

18:                                               ; preds = %2
  %19 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %20 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strncpy(i32 %22, i8* %23, i32 4)
  %25 = load i32, i32* @HAL_DIAG_REVS, align 4
  %26 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %27 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 8
  %29 = ptrtoint %struct.TYPE_3__* %6 to i64
  %30 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %31 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i64 %29, i64* %32, align 8
  %33 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %34 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 4, i32* %35, align 8
  %36 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %37 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @SIOCGATHDIAG, align 4
  %40 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %41 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %40, i32 0, i32 2
  %42 = call i64 @ioctl(i64 %38, i32 %39, %struct.TYPE_4__* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %18
  %45 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %46 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 0, i32* %3, align 4
  br label %55

50:                                               ; preds = %18
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %54 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %44, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i64, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
