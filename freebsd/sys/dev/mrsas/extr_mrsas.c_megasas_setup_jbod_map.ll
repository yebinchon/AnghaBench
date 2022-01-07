; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_megasas_setup_jbod_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_megasas_setup_jbod_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i64*, i32*, i32*, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MAX_PHYSICAL_DEVICES = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot allocate jbod map tag.\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot allocate jbod map memory.\0A\00", align 1
@mrsas_addr_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot load jbod map memory.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Cannot allocate memory for jbod map.\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Jbod map is supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megasas_setup_jbod_map(%struct.mrsas_softc* %0) #0 {
  %2 = alloca %struct.mrsas_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %2, align 8
  %5 = load i32, i32* @MAX_PHYSICAL_DEVICES, align 4
  %6 = sub nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = add i64 4, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %12 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %11, i32 0, i32 7
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %171

21:                                               ; preds = %1
  %22 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %152

29:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %148, %29
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %151

33:                                               ; preds = %30
  %34 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %35 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %38 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %42 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %43 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i64 @bus_dma_tag_create(i32 %36, i32 4, i32 0, i32 %37, i32 %38, i32* null, i32* null, i32 %39, i32 1, i32 %40, i32 %41, i32* null, i32* null, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %33
  %51 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %52 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %171

55:                                               ; preds = %33
  %56 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %57 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %64 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = bitcast i64* %68 to i8**
  %70 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %71 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %72 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i64 @bus_dmamem_alloc(i32 %62, i8** %69, i32 %70, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %55
  %80 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %81 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %171

84:                                               ; preds = %55
  %85 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %86 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @bzero(i64 %91, i32 %92)
  %94 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %95 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %102 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %109 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @mrsas_addr_cb, align 4
  %117 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %118 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %124 = call i64 @bus_dmamap_load(i32 %100, i32 %107, i64 %114, i32 %115, i32 %116, i32* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %84
  %127 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %128 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @device_printf(i32 %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %171

131:                                              ; preds = %84
  %132 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %133 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %132, i32 0, i32 2
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %131
  %141 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %142 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @device_printf(i32 %143, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %145 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %146 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  br label %171

147:                                              ; preds = %131
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %3, align 4
  br label %30

151:                                              ; preds = %30
  br label %152

152:                                              ; preds = %151, %28
  %153 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %154 = call i32 @megasas_sync_pd_seq_num(%struct.mrsas_softc* %153, i32 0)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %152
  %157 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %158 = call i32 @megasas_sync_pd_seq_num(%struct.mrsas_softc* %157, i32 1)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %162 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %161, i32 0, i32 0
  store i32 1, i32* %162, align 8
  br label %166

163:                                              ; preds = %156, %152
  %164 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %165 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %168 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @device_printf(i32 %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %171

171:                                              ; preds = %166, %140, %126, %79, %50, %18
  ret void
}

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @megasas_sync_pd_seq_num(%struct.mrsas_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
