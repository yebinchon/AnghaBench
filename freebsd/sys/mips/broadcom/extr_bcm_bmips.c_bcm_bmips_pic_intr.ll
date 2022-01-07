; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_bmips.c_bcm_bmips_pic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_bmips.c_bcm_bmips_pic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.bcm_bmips_softc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bcm_mips_cpuirq = type { i32, %struct.bcm_mips_irqsrc*, i64 }
%struct.bcm_mips_irqsrc = type { i32, i32 }

@SIBA_CFG0_FLAGST = common dso_local global i32 0, align 4
@SIBA_CFG0_INTVEC = common dso_local global i32 0, align 4
@SIBA_CFG0_IPSFLAG = common dso_local global i32 0, align 4
@SIBA_IPS_INT1_MASK = common dso_local global i32 0, align 4
@SIBA_IPS_INT1_SHIFT = common dso_local global i32 0, align 4
@SIBA_IPS_INT2_MASK = common dso_local global i32 0, align 4
@SIBA_IPS_INT2_SHIFT = common dso_local global i32 0, align 4
@SIBA_IPS_INT3_MASK = common dso_local global i32 0, align 4
@SIBA_IPS_INT3_SHIFT = common dso_local global i32 0, align 4
@SIBA_IPS_INT4_MASK = common dso_local global i32 0, align 4
@SIBA_IPS_INT4_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"invalid irq %u\00", align 1
@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Stray interrupt %u detected\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"invalid ivec %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bcm_bmips_pic_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_bmips_pic_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bcm_bmips_softc*, align 8
  %5 = alloca %struct.bcm_mips_cpuirq*, align 8
  %6 = alloca %struct.bcm_mips_irqsrc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.bcm_mips_cpuirq*
  store %struct.bcm_mips_cpuirq* %14, %struct.bcm_mips_cpuirq** %5, align 8
  %15 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %16 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.bcm_bmips_softc*
  store %struct.bcm_bmips_softc* %18, %struct.bcm_bmips_softc** %4, align 8
  %19 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %20 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SIBA_CFG0_FLAGST, align 4
  %23 = call i32 @bus_read_4(i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %25 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %31 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SIBA_CFG0_INTVEC, align 4
  %34 = call i32 @bus_read_4(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %70

35:                                               ; preds = %1
  %36 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %37 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SIBA_CFG0_IPSFLAG, align 4
  %40 = call i32 @bus_read_4(i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %66 [
    i32 1, label %42
    i32 2, label %48
    i32 3, label %54
    i32 4, label %60
  ]

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @SIBA_IPS_INT1_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @SIBA_IPS_INT1_SHIFT, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %7, align 4
  br label %69

48:                                               ; preds = %35
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @SIBA_IPS_INT2_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @SIBA_IPS_INT2_SHIFT, align 4
  %53 = ashr i32 %51, %52
  store i32 %53, i32* %7, align 4
  br label %69

54:                                               ; preds = %35
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @SIBA_IPS_INT3_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @SIBA_IPS_INT3_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %7, align 4
  br label %69

60:                                               ; preds = %35
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @SIBA_IPS_INT4_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @SIBA_IPS_INT4_SHIFT, align 4
  %65 = ashr i32 %63, %64
  store i32 %65, i32* %7, align 4
  br label %69

66:                                               ; preds = %35
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %60, %54, %48, %42
  br label %70

70:                                               ; preds = %69, %29
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %75 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %74, i32 0, i32 1
  %76 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %75, align 8
  store %struct.bcm_mips_irqsrc* %76, %struct.bcm_mips_irqsrc** %6, align 8
  %77 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %78 = icmp ne %struct.bcm_mips_irqsrc* %77, null
  br i1 %78, label %79, label %143

79:                                               ; preds = %70
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %82 = call i32 @BCM_MIPS_IVEC_MASK(%struct.bcm_mips_irqsrc* %81)
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %79
  %86 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %87 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @intr_isrc_dispatch(i32* %87, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %85
  %95 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %96 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %99 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @device_printf(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %103 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %106 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %105, i32 0, i32 1
  %107 = call i32 @bcm_bmips_pic_disable_intr(i32 %104, i32* %106)
  br label %108

108:                                              ; preds = %94, %85
  br label %109

109:                                              ; preds = %108, %79
  %110 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %111 = call i32 @BCM_MIPS_IVEC_MASK(%struct.bcm_mips_irqsrc* %110)
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %118, i32* %2, align 4
  br label %195

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %124, %119
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @fls(i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = shl i32 1, %127
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %8, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %133 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @device_printf(i32 %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @bcm_bmips_mask_irq(%struct.bcm_bmips_softc* %137, i32 %138, i32 %139)
  br label %120

141:                                              ; preds = %120
  %142 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %142, i32* %2, align 4
  br label %195

143:                                              ; preds = %70
  br label %144

144:                                              ; preds = %192, %182, %143
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @fls(i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %193

148:                                              ; preds = %144
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = shl i32 1, %151
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %158 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = call i32 @nitems(%struct.TYPE_5__* %160)
  %162 = icmp slt i32 %156, %161
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = call i32 @KASSERT(i32 %163, i8* %166)
  %168 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %169 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @intr_isrc_dispatch(i32* %175, i32 %178)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %148
  %183 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %184 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @device_printf(i32 %185, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %186)
  %188 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @bcm_bmips_mask_irq(%struct.bcm_bmips_softc* %188, i32 %189, i32 %190)
  br label %144

192:                                              ; preds = %148
  br label %144

193:                                              ; preds = %144
  %194 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %193, %141, %117
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @BCM_MIPS_IVEC_MASK(%struct.bcm_mips_irqsrc*) #1

declare dso_local i32 @intr_isrc_dispatch(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bcm_bmips_pic_disable_intr(i32, i32*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @bcm_bmips_mask_irq(%struct.bcm_bmips_softc*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
