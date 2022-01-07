; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ads111x.c_ads111x_add_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ads111x.c_ads111x_add_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads111x_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@DEFAULT_GAINIDX = common dso_local global i64 0, align 8
@DEFAULT_RATEIDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"gain_index\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"rate_index\00", align 1
@ADS111x_MAX_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ads111x_softc*)* @ads111x_add_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ads111x_add_channels(%struct.ads111x_softc* %0) #0 {
  %2 = alloca %struct.ads111x_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ads111x_softc* %0, %struct.ads111x_softc** %2, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.ads111x_softc*, %struct.ads111x_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @device_get_name(i32 %12)
  store i8* %13, i8** %3, align 8
  %14 = load %struct.ads111x_softc*, %struct.ads111x_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @device_get_unit(i32 %16)
  store i64 %17, i64* %8, align 8
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %52, %1
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.ads111x_softc*, %struct.ads111x_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %19, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  %27 = load i64, i64* @DEFAULT_GAINIDX, align 8
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* @DEFAULT_RATEIDX, align 8
  store i64 %28, i64* %7, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @resource_int_value(i8* %29, i64 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %5)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @resource_int_value(i8* %35, i64 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64* %5)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.ads111x_softc*, %struct.ads111x_softc** %2, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @ads111x_setup_channel(%struct.ads111x_softc* %44, i64 %45, i64 %46, i64 %47)
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %43, %40
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %4, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %18

55:                                               ; preds = %18
  %56 = load i64, i64* %6, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %79

59:                                               ; preds = %55
  store i64 0, i64* %4, align 8
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.ads111x_softc*, %struct.ads111x_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %61, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = load i64, i64* @DEFAULT_GAINIDX, align 8
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* @DEFAULT_RATEIDX, align 8
  store i64 %70, i64* %7, align 8
  %71 = load %struct.ads111x_softc*, %struct.ads111x_softc** %2, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @ads111x_setup_channel(%struct.ads111x_softc* %71, i64 %72, i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %68
  %77 = load i64, i64* %4, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %4, align 8
  br label %60

79:                                               ; preds = %58, %60
  ret void
}

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i64 @resource_int_value(i8*, i64, i8*, i64*) #1

declare dso_local i32 @ads111x_setup_channel(%struct.ads111x_softc*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
