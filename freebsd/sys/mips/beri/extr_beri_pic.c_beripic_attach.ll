; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_pic.c_beripic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_pic.c_beripic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beripic_softc = type { i32, i32, i32*, %struct.TYPE_4__*, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.beripic_softc* }
%struct.TYPE_3__ = type { i32, %struct.intr_irqsrc }
%struct.intr_irqsrc = type { i32 }
%struct.beri_pic_isrc = type { i64 }

@beri_pic_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BP_NUM_IRQS = common dso_local global i32 0, align 4
@BP_NUM_HARD_IRQS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pic%d,%d\00", align 1
@BP_CFG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@beri_pic_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not setup irq handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @beripic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beripic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.beripic_softc*, align 8
  %5 = alloca %struct.beri_pic_isrc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.intr_irqsrc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.beripic_softc* @device_get_softc(i32 %12)
  store %struct.beripic_softc* %13, %struct.beripic_softc** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %16 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @beri_pic_spec, align 4
  %19 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %20 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @bus_alloc_resources(i32 %17, i32 %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %169

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @ofw_bus_get_node(i32 %29)
  %31 = call i64 @OF_xref_from_node(i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i8* @device_get_nameunit(i32 %32)
  store i8* %33, i8** %6, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_get_unit(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @BP_NUM_IRQS, align 4
  %37 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %38 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %96, %28
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %42 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %99

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %48 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %47, i32 0, i32 6
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 4
  %54 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %55 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %54, i32 0, i32 6
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store %struct.intr_irqsrc* %60, %struct.intr_irqsrc** %7, align 8
  %61 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %62 = bitcast %struct.intr_irqsrc* %61 to %struct.beri_pic_isrc*
  store %struct.beri_pic_isrc* %62, %struct.beri_pic_isrc** %5, align 8
  %63 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %64 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = sext i32 %65 to i64
  %68 = load %struct.beri_pic_isrc*, %struct.beri_pic_isrc** %5, align 8
  %69 = getelementptr inbounds %struct.beri_pic_isrc, %struct.beri_pic_isrc* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %71 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BP_NUM_HARD_IRQS, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp sge i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %45
  %77 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %78 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %45
  %80 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %81 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %82 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @intr_isrc_register(%struct.intr_irqsrc* %80, i32 %83, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %88 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @BP_CFG, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %93, 8
  %95 = call i32 @bus_write_8(i32 %92, i32 %94, i32 0)
  br label %96

96:                                               ; preds = %79
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %39

99:                                               ; preds = %39
  %100 = load i32, i32* %3, align 4
  %101 = load i64, i64* %8, align 8
  %102 = call i32* @intr_pic_register(i32 %100, i64 %101)
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @ENXIO, align 4
  store i32 %107, i32* %2, align 4
  br label %169

108:                                              ; preds = %99
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %165, %108
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @BP_NUM_HARD_IRQS, align 4
  %112 = sub nsw i32 %111, 1
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %168

114:                                              ; preds = %109
  %115 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %116 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %117 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %116, i32 0, i32 3
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store %struct.beripic_softc* %115, %struct.beripic_softc** %122, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %125 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %124, i32 0, i32 3
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32 %123, i32* %130, align 8
  %131 = load i32, i32* %3, align 4
  %132 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %133 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 4, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @INTR_TYPE_CLK, align 4
  %141 = load i32, i32* @beri_pic_intr, align 4
  %142 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %143 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %142, i32 0, i32 3
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = load %struct.beripic_softc*, %struct.beripic_softc** %4, align 8
  %149 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @bus_setup_intr(i32 %131, i32 %139, i32 %140, i32 %141, i32* null, %struct.TYPE_4__* %147, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %114
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @device_printf(i32 %158, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32, i32* %3, align 4
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @intr_pic_deregister(i32 %160, i64 %161)
  %163 = load i32, i32* @ENXIO, align 4
  store i32 %163, i32* %2, align 4
  br label %169

164:                                              ; preds = %114
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %109

168:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %157, %104, %24
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.beripic_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @intr_isrc_register(%struct.intr_irqsrc*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @bus_write_8(i32, i32, i32) #1

declare dso_local i32* @intr_pic_register(i32, i64) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @intr_pic_deregister(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
