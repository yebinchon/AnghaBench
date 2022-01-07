; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athspectral/extr_athspectral.c_spectralset.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athspectral/extr_athspectral.c_spectralset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spectralhandler = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i32* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@HAL_SPECTRAL_PARAM_NOVAL = common dso_local global i8* null, align 8
@SPECTRAL_CONTROL_SET_PARAMS = common dso_local global i32 0, align 4
@ATH_DIAG_IN = common dso_local global i32 0, align 4
@SIOCGATHSPECTRAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spectralset(%struct.spectralhandler* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.spectralhandler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  store %struct.spectralhandler* %0, %struct.spectralhandler** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i8* %8, i8** %9, align 8
  %10 = load i8*, i8** @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %40 [
    i32 132, label %25
    i32 130, label %28
    i32 131, label %31
    i32 129, label %34
    i32 128, label %37
  ]

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i8* %26, i8** %27, align 8
  br label %40

28:                                               ; preds = %3
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i8* %29, i8** %30, align 8
  br label %40

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  br label %40

34:                                               ; preds = %3
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  br label %40

37:                                               ; preds = %3
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  br label %40

40:                                               ; preds = %3, %37, %34, %31, %28, %25
  %41 = load i32, i32* @SPECTRAL_CONTROL_SET_PARAMS, align 4
  %42 = load i32, i32* @ATH_DIAG_IN, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %45 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %48 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  store i32* null, i32** %49, align 8
  %50 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %51 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = ptrtoint %struct.TYPE_3__* %7 to i64
  %54 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %55 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i64 %53, i64* %56, align 8
  %57 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %58 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 56, i32* %59, align 4
  %60 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %61 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SIOCGATHSPECTRAL, align 4
  %64 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %65 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %64, i32 0, i32 0
  %66 = call i64 @ioctl(i32 %62, i32 %63, %struct.TYPE_4__* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %40
  %69 = load %struct.spectralhandler*, %struct.spectralhandler** %4, align 8
  %70 = getelementptr inbounds %struct.spectralhandler, %struct.spectralhandler* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %40
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
