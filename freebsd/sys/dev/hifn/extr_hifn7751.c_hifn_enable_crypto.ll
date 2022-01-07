; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_enable_crypto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_enable_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i8* }
%struct.hifn_softc = type { i32 }

@pci2id = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"Unknown card!\0A\00", align 1
@HIFN_0_PUCNFG = common dso_local global i32 0, align 4
@HIFN_1_DMA_CNFG = common dso_local global i32 0, align 4
@HIFN_PUCNFG_CHIPID = common dso_local global i64 0, align 8
@HIFN_0_PUSTAT = common dso_local global i32 0, align 4
@HIFN_PUSTAT_CHIPENA = common dso_local global i64 0, align 8
@HIFN_DMACNFG_UNLOCK = common dso_local global i64 0, align 8
@HIFN_DMACNFG_MSTRESET = common dso_local global i64 0, align 8
@HIFN_DMACNFG_DMARESET = common dso_local global i64 0, align 8
@HIFN_DMACNFG_MODE = common dso_local global i64 0, align 8
@HIFN_UNLOCK_SECRET1 = common dso_local global i32 0, align 4
@HIFN_UNLOCK_SECRET2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@hifn_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_softc*)* @hifn_enable_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_enable_crypto(%struct.hifn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hifn_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.hifn_softc* %0, %struct.hifn_softc** %3, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %44, %1
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pci2id, align 8
  %13 = call i64 @nitems(%struct.TYPE_3__* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pci2id, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %22 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pci_get_vendor(i32 %23)
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %15
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pci2id, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %33 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @pci_get_device(i32 %34)
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pci2id, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %9, align 8
  br label %47

43:                                               ; preds = %26, %15
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %10

47:                                               ; preds = %37, %10
  %48 = load i8*, i8** %9, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %52 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %157

55:                                               ; preds = %47
  %56 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %57 = load i32, i32* @HIFN_0_PUCNFG, align 4
  %58 = call i64 @READ_REG_0(%struct.hifn_softc* %56, i32 %57)
  store i64 %58, i64* %5, align 8
  %59 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %60 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %61 = call i64 @READ_REG_1(%struct.hifn_softc* %59, i32 %60)
  store i64 %61, i64* %4, align 8
  %62 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %63 = load i32, i32* @HIFN_0_PUCNFG, align 4
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @HIFN_PUCNFG_CHIPID, align 8
  %66 = or i64 %64, %65
  %67 = call i32 @WRITE_REG_0(%struct.hifn_softc* %62, i32 %63, i64 %66)
  %68 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %69 = load i32, i32* @HIFN_0_PUSTAT, align 4
  %70 = call i64 @READ_REG_0(%struct.hifn_softc* %68, i32 %69)
  %71 = load i64, i64* @HIFN_PUSTAT_CHIPENA, align 8
  %72 = and i64 %70, %71
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp eq i64 %73, 129
  br i1 %74, label %78, label %75

75:                                               ; preds = %55
  %76 = load i64, i64* %6, align 8
  %77 = icmp eq i64 %76, 128
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %55
  br label %139

79:                                               ; preds = %75
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i64, i64* %6, align 8
  %84 = icmp ne i64 %83, 130
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %2, align 4
  br label %157

86:                                               ; preds = %82, %79
  %87 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %88 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %89 = load i64, i64* @HIFN_DMACNFG_UNLOCK, align 8
  %90 = load i64, i64* @HIFN_DMACNFG_MSTRESET, align 8
  %91 = or i64 %89, %90
  %92 = load i64, i64* @HIFN_DMACNFG_DMARESET, align 8
  %93 = or i64 %91, %92
  %94 = load i64, i64* @HIFN_DMACNFG_MODE, align 8
  %95 = or i64 %93, %94
  %96 = call i32 @WRITE_REG_1(%struct.hifn_softc* %87, i32 %88, i64 %95)
  %97 = call i32 @DELAY(i32 1000)
  %98 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %99 = load i32, i32* @HIFN_UNLOCK_SECRET1, align 4
  %100 = call i64 @READ_REG_1(%struct.hifn_softc* %98, i32 %99)
  store i64 %100, i64* %7, align 8
  %101 = call i32 @DELAY(i32 1000)
  %102 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %103 = load i32, i32* @HIFN_UNLOCK_SECRET2, align 4
  %104 = call i32 @WRITE_REG_1(%struct.hifn_softc* %102, i32 %103, i64 0)
  %105 = call i32 @DELAY(i32 1000)
  store i64 0, i64* %8, align 8
  br label %106

106:                                              ; preds = %124, %86
  %107 = load i64, i64* %8, align 8
  %108 = icmp ule i64 %107, 12
  br i1 %108, label %109, label %127

109:                                              ; preds = %106
  %110 = load i64, i64* %7, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i64, i64* %8, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = add nsw i32 %115, 257
  %117 = trunc i32 %116 to i8
  %118 = call i64 @hifn_next_signature(i64 %110, i8 signext %117)
  store i64 %118, i64* %7, align 8
  %119 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %120 = load i32, i32* @HIFN_UNLOCK_SECRET2, align 4
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @WRITE_REG_1(%struct.hifn_softc* %119, i32 %120, i64 %121)
  %123 = call i32 @DELAY(i32 1000)
  br label %124

124:                                              ; preds = %109
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %8, align 8
  br label %106

127:                                              ; preds = %106
  %128 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %129 = load i32, i32* @HIFN_0_PUCNFG, align 4
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* @HIFN_PUCNFG_CHIPID, align 8
  %132 = or i64 %130, %131
  %133 = call i32 @WRITE_REG_0(%struct.hifn_softc* %128, i32 %129, i64 %132)
  %134 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %135 = load i32, i32* @HIFN_0_PUSTAT, align 4
  %136 = call i64 @READ_REG_0(%struct.hifn_softc* %134, i32 %135)
  %137 = load i64, i64* @HIFN_PUSTAT_CHIPENA, align 8
  %138 = and i64 %136, %137
  store i64 %138, i64* %6, align 8
  br label %139

139:                                              ; preds = %127, %78
  %140 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %141 = load i32, i32* @HIFN_0_PUCNFG, align 4
  %142 = load i64, i64* %5, align 8
  %143 = call i32 @WRITE_REG_0(%struct.hifn_softc* %140, i32 %141, i64 %142)
  %144 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %145 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %146 = load i64, i64* %4, align 8
  %147 = call i32 @WRITE_REG_1(%struct.hifn_softc* %144, i32 %145, i64 %146)
  %148 = load i64, i64* %6, align 8
  switch i64 %148, label %151 [
    i64 129, label %149
    i64 128, label %149
    i64 130, label %150
  ]

149:                                              ; preds = %139, %139
  br label %156

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %139, %150
  %152 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %153 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i8*, ...) @device_printf(i32 %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %156

156:                                              ; preds = %151, %149
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %85, %50
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @READ_REG_0(%struct.hifn_softc*, i32) #1

declare dso_local i64 @READ_REG_1(%struct.hifn_softc*, i32) #1

declare dso_local i32 @WRITE_REG_0(%struct.hifn_softc*, i32, i64) #1

declare dso_local i32 @WRITE_REG_1(%struct.hifn_softc*, i32, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @hifn_next_signature(i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
