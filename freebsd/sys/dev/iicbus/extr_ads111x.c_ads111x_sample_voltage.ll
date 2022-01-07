; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ads111x.c_ads111x_sample_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ads111x.c_ads111x_sample_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads111x_softc = type { i32, %struct.TYPE_2__*, %struct.ads111x_channel* }
%struct.TYPE_2__ = type { i32*, i32*, i32 }
%struct.ads111x_channel = type { i32, i32 }

@ADS111x_CONF_OS_SHIFT = common dso_local global i32 0, align 4
@ADS111x_CONF_MUX_SHIFT = common dso_local global i32 0, align 4
@ADS111x_CONF_GAIN_SHIFT = common dso_local global i32 0, align 4
@ADS111x_CONF_RATE_SHIFT = common dso_local global i32 0, align 4
@ADS111x_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ads111x\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@ADS111x_CONF_IDLE = common dso_local global i32 0, align 4
@ADS111x_CONV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ads111x_softc*, i32, i32*)* @ads111x_sample_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads111x_sample_voltage(%struct.ads111x_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ads111x_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ads111x_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ads111x_softc* %0, %struct.ads111x_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %16, i32 0, i32 2
  %18 = load %struct.ads111x_channel*, %struct.ads111x_channel** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ads111x_channel, %struct.ads111x_channel* %18, i64 %20
  store %struct.ads111x_channel* %21, %struct.ads111x_channel** %8, align 8
  %22 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %23 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ADS111x_CONF_OS_SHIFT, align 4
  %26 = shl i32 1, %25
  %27 = or i32 %24, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ADS111x_CONF_MUX_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  %32 = load %struct.ads111x_channel*, %struct.ads111x_channel** %8, align 8
  %33 = getelementptr inbounds %struct.ads111x_channel, %struct.ads111x_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ADS111x_CONF_GAIN_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %31, %36
  %38 = load %struct.ads111x_channel*, %struct.ads111x_channel** %8, align 8
  %39 = getelementptr inbounds %struct.ads111x_channel, %struct.ads111x_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ADS111x_CONF_RATE_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %37, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %45 = load i32, i32* @ADS111x_CONF, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ads111x_write_2(%struct.ads111x_softc* %44, i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %138

51:                                               ; preds = %3
  %52 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %53 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.ads111x_channel*, %struct.ads111x_channel** %8, align 8
  %58 = getelementptr inbounds %struct.ads111x_channel, %struct.ads111x_channel* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 1000000000, %63
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* %12, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @nstosbt(i32 %68)
  %70 = call i32 @C_PREL(i32 2)
  %71 = call i32 @pause_sbt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %69, i32 0, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %51
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @EWOULDBLOCK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %138

80:                                               ; preds = %74, %51
  store i32 5, i32* %13, align 4
  br label %81

81:                                               ; preds = %105, %80
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %85, i32* %4, align 4
  br label %138

86:                                               ; preds = %81
  %87 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %88 = load i32, i32* @ADS111x_CONF, align 4
  %89 = call i32 @ads111x_read_2(%struct.ads111x_softc* %87, i32 %88, i32* %10)
  store i32 %89, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %138

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @ADS111x_CONF_IDLE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %108

99:                                               ; preds = %93
  %100 = load i32, i32* %14, align 4
  %101 = sdiv i32 %100, 20
  %102 = call i32 @nstosbt(i32 %101)
  %103 = call i32 @C_PREL(i32 2)
  %104 = call i32 @pause_sbt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %102, i32 0, i32 %103)
  br label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %13, align 4
  br label %81

108:                                              ; preds = %98
  %109 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %110 = load i32, i32* @ADS111x_CONV, align 4
  %111 = call i32 @ads111x_read_2(%struct.ads111x_softc* %109, i32 %110, i32* %11)
  store i32 %111, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %4, align 4
  br label %138

115:                                              ; preds = %108
  %116 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %117 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.ads111x_channel*, %struct.ads111x_channel** %8, align 8
  %122 = getelementptr inbounds %struct.ads111x_channel, %struct.ads111x_channel* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %15, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %131 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = sdiv i32 %129, %134
  %136 = load i32*, i32** %7, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %115, %113, %91, %84, %78, %49
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @ads111x_write_2(%struct.ads111x_softc*, i32, i32) #1

declare dso_local i32 @pause_sbt(i8*, i32, i32, i32) #1

declare dso_local i32 @nstosbt(i32) #1

declare dso_local i32 @C_PREL(i32) #1

declare dso_local i32 @ads111x_read_2(%struct.ads111x_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
