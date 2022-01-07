; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips74k.c_bcm_mips74k_pic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips74k.c_bcm_mips74k_pic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.bcm_mips74k_softc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bcm_mips_cpuirq = type { i64, %struct.bcm_mips_irqsrc*, i64 }
%struct.bcm_mips_irqsrc = type { i32, i32 }

@BCM_MIPS74K_INTR_STATUS = common dso_local global i32 0, align 4
@BCM_MIPS74K_NUM_INTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"invalid irq %u\00", align 1
@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Stray interrupt %u detected\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"invalid ivec %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bcm_mips74k_pic_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_mips74k_pic_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bcm_mips74k_softc*, align 8
  %5 = alloca %struct.bcm_mips_cpuirq*, align 8
  %6 = alloca %struct.bcm_mips_irqsrc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.bcm_mips_cpuirq*
  store %struct.bcm_mips_cpuirq* %12, %struct.bcm_mips_cpuirq** %5, align 8
  %13 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %14 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.bcm_mips74k_softc*
  store %struct.bcm_mips74k_softc* %16, %struct.bcm_mips74k_softc** %4, align 8
  %17 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BCM_MIPS74K_INTR_STATUS, align 4
  %21 = call i32 @bus_read_4(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %23 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BCM_MIPS74K_NUM_INTR, align 8
  %26 = icmp slt i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %29 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @KASSERT(i32 %27, i8* %31)
  %33 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %34 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %37 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @BCM_MIPS74K_INTR_SEL(i64 %38)
  %40 = call i32 @bus_read_4(i32 %35, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %45 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %44, i32 0, i32 1
  %46 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %45, align 8
  store %struct.bcm_mips_irqsrc* %46, %struct.bcm_mips_irqsrc** %6, align 8
  %47 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %48 = icmp ne %struct.bcm_mips_irqsrc* %47, null
  br i1 %48, label %49, label %115

49:                                               ; preds = %1
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %52 = call i32 @BCM_MIPS_IVEC_MASK(%struct.bcm_mips_irqsrc* %51)
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %49
  %56 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %57 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @intr_isrc_dispatch(i32* %57, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %55
  %65 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %66 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %69 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %73 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %76 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %75, i32 0, i32 1
  %77 = call i32 @bcm_mips74k_pic_disable_intr(i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %64, %55
  br label %79

79:                                               ; preds = %78, %49
  %80 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %81 = call i32 @BCM_MIPS_IVEC_MASK(%struct.bcm_mips_irqsrc* %80)
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %88, i32* %2, align 4
  br label %169

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %94, %89
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @fls(i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = shl i32 1, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %103 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @device_printf(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %108 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %109 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @bcm_mips74k_mask_irq(%struct.bcm_mips74k_softc* %107, i64 %110, i32 %111)
  br label %90

113:                                              ; preds = %90
  %114 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %114, i32* %2, align 4
  br label %169

115:                                              ; preds = %1
  br label %116

116:                                              ; preds = %166, %154, %115
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @fls(i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %167

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = shl i32 1, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %130 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = call i32 @nitems(%struct.TYPE_5__* %132)
  %134 = icmp slt i32 %128, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = call i32 @KASSERT(i32 %135, i8* %138)
  %140 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %141 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @intr_isrc_dispatch(i32* %147, i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %120
  %155 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %156 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  %160 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %161 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %162 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @bcm_mips74k_mask_irq(%struct.bcm_mips74k_softc* %160, i64 %163, i32 %164)
  br label %116

166:                                              ; preds = %120
  br label %116

167:                                              ; preds = %116
  %168 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %167, %113, %87
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @BCM_MIPS74K_INTR_SEL(i64) #1

declare dso_local i32 @BCM_MIPS_IVEC_MASK(%struct.bcm_mips_irqsrc*) #1

declare dso_local i32 @intr_isrc_dispatch(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bcm_mips74k_pic_disable_intr(i32, i32*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @bcm_mips74k_mask_irq(%struct.bcm_mips74k_softc*, i64, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
