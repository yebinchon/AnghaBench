; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athspectral/extr_athspectral.c_spectral_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athspectral/extr_athspectral.c_spectral_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spectralhandler = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i32* }

@SPECTRAL_CONTROL_START = common dso_local global i32 0, align 4
@ATH_DIAG_DYN = common dso_local global i32 0, align 4
@SIOCGATHSPECTRAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spectralhandler*)* @spectral_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spectral_start(%struct.spectralhandler* %0) #0 {
  %2 = alloca %struct.spectralhandler*, align 8
  %3 = alloca i32, align 4
  store %struct.spectralhandler* %0, %struct.spectralhandler** %2, align 8
  %4 = load i32, i32* @SPECTRAL_CONTROL_START, align 4
  %5 = load i32, i32* @ATH_DIAG_DYN, align 4
  %6 = or i32 %4, %5
  %7 = load %struct.spectralhandler*, %struct.spectralhandler** %2, align 8
  %8 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 8
  %10 = call i32 @memset(i32* %3, i32 0, i32 4)
  %11 = load %struct.spectralhandler*, %struct.spectralhandler** %2, align 8
  %12 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 5
  store i32* null, i32** %13, align 8
  %14 = load %struct.spectralhandler*, %struct.spectralhandler** %2, align 8
  %15 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = ptrtoint i32* %3 to i64
  %18 = load %struct.spectralhandler*, %struct.spectralhandler** %2, align 8
  %19 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i64 %17, i64* %20, align 8
  %21 = load %struct.spectralhandler*, %struct.spectralhandler** %2, align 8
  %22 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 4, i32* %23, align 4
  %24 = load %struct.spectralhandler*, %struct.spectralhandler** %2, align 8
  %25 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SIOCGATHSPECTRAL, align 4
  %28 = load %struct.spectralhandler*, %struct.spectralhandler** %2, align 8
  %29 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %28, i32 0, i32 0
  %30 = call i64 @ioctl(i32 %26, i32 %27, %struct.TYPE_2__* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.spectralhandler*, %struct.spectralhandler** %2, align 8
  %34 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
