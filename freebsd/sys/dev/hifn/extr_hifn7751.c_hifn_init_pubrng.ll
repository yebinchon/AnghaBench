; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_init_pubrng.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_init_pubrng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i8*, i64 }
%struct.TYPE_2__ = type { %struct.hifn_softc* }

@default_harvest = common dso_local global i8* null, align 8
@HIFN_IS_7811 = common dso_local global i32 0, align 4
@HIFN_1_PUB_RESET = common dso_local global i32 0, align 4
@HIFN_PUBRST_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"public key init failed\0A\00", align 1
@HIFN_HAS_RNG = common dso_local global i32 0, align 4
@HIFN_1_7811_RNGENA = common dso_local global i32 0, align 4
@HIFN_7811_RNGENA_ENA = common dso_local global i32 0, align 4
@HIFN_1_7811_RNGCFG = common dso_local global i32 0, align 4
@HIFN_7811_RNGCFG_DEFL = common dso_local global i32 0, align 4
@HIFN_1_RNG_CONFIG = common dso_local global i32 0, align 4
@HIFN_RNGCFG_ENA = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@hifn_rng = common dso_local global i32 0, align 4
@HIFN_HAS_PUBLIC = common dso_local global i32 0, align 4
@HIFN_1_PUB_IEN = common dso_local global i32 0, align 4
@HIFN_PUBIEN_DONE = common dso_local global i32 0, align 4
@HIFN_DMAIER_PUBDONE = common dso_local global i32 0, align 4
@HIFN_1_DMA_IER = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@rndtest_harvest = common dso_local global i8* null, align 8
@vulcanpk_cdevsw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_softc*)* @hifn_init_pubrng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_init_pubrng(%struct.hifn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hifn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hifn_softc* %0, %struct.hifn_softc** %3, align 8
  %6 = load i8*, i8** @default_harvest, align 8
  %7 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %8 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %7, i32 0, i32 7
  store i8* %6, i8** %8, align 8
  %9 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %10 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HIFN_IS_7811, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %1
  %16 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %17 = load i32, i32* @HIFN_1_PUB_RESET, align 4
  %18 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %19 = load i32, i32* @HIFN_1_PUB_RESET, align 4
  %20 = call i32 @READ_REG_1(%struct.hifn_softc* %18, i32 %19)
  %21 = load i32, i32* @HIFN_PUBRST_RESET, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @WRITE_REG_1(%struct.hifn_softc* %16, i32 %17, i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %37, %15
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 100
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = call i32 @DELAY(i32 1000)
  %29 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %30 = load i32, i32* @HIFN_1_PUB_RESET, align 4
  %31 = call i32 @READ_REG_1(%struct.hifn_softc* %29, i32 %30)
  %32 = load i32, i32* @HIFN_PUBRST_RESET, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %40

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %24

40:                                               ; preds = %35, %24
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 100
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %45 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %150

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %51 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @HIFN_HAS_RNG, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %126

56:                                               ; preds = %49
  %57 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %58 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HIFN_IS_7811, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %56
  %64 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %65 = load i32, i32* @HIFN_1_7811_RNGENA, align 4
  %66 = call i32 @READ_REG_1(%struct.hifn_softc* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @HIFN_7811_RNGENA_ENA, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load i32, i32* @HIFN_7811_RNGENA_ENA, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %77 = load i32, i32* @HIFN_1_7811_RNGENA, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @WRITE_REG_1(%struct.hifn_softc* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %63
  %81 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %82 = load i32, i32* @HIFN_1_7811_RNGCFG, align 4
  %83 = load i32, i32* @HIFN_7811_RNGCFG_DEFL, align 4
  %84 = call i32 @WRITE_REG_1(%struct.hifn_softc* %81, i32 %82, i32 %83)
  %85 = load i32, i32* @HIFN_7811_RNGENA_ENA, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %89 = load i32, i32* @HIFN_1_7811_RNGENA, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @WRITE_REG_1(%struct.hifn_softc* %88, i32 %89, i32 %90)
  br label %101

92:                                               ; preds = %56
  %93 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %94 = load i32, i32* @HIFN_1_RNG_CONFIG, align 4
  %95 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %96 = load i32, i32* @HIFN_1_RNG_CONFIG, align 4
  %97 = call i32 @READ_REG_1(%struct.hifn_softc* %95, i32 %96)
  %98 = load i32, i32* @HIFN_RNGCFG_ENA, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @WRITE_REG_1(%struct.hifn_softc* %93, i32 %94, i32 %99)
  br label %101

101:                                              ; preds = %92, %80
  %102 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %103 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load i32, i32* @hz, align 4
  %105 = icmp sge i32 %104, 100
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @hz, align 4
  %108 = sdiv i32 %107, 100
  %109 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %110 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  br label %114

111:                                              ; preds = %101
  %112 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %113 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %106
  %115 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %116 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %115, i32 0, i32 5
  %117 = call i32 @callout_init(i32* %116, i32 1)
  %118 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %119 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %118, i32 0, i32 5
  %120 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %121 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @hifn_rng, align 4
  %124 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %125 = call i32 @callout_reset(i32* %119, i32 %122, i32 %123, %struct.hifn_softc* %124)
  br label %126

126:                                              ; preds = %114, %49
  %127 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %128 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @HIFN_HAS_PUBLIC, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %126
  %134 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %135 = load i32, i32* @HIFN_1_PUB_IEN, align 4
  %136 = load i32, i32* @HIFN_PUBIEN_DONE, align 4
  %137 = call i32 @WRITE_REG_1(%struct.hifn_softc* %134, i32 %135, i32 %136)
  %138 = load i32, i32* @HIFN_DMAIER_PUBDONE, align 4
  %139 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %140 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %144 = load i32, i32* @HIFN_1_DMA_IER, align 4
  %145 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %146 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @WRITE_REG_1(%struct.hifn_softc* %143, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %133, %126
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %43
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @WRITE_REG_1(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @READ_REG_1(%struct.hifn_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.hifn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
