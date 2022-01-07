; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_dma_mbuf_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_dma_mbuf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, i32, %struct.bwi_txbuf_data*, i32, %struct.bwi_rxbuf_data }
%struct.bwi_txbuf_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bwi_rxbuf_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"can't create mbuf DMA tag\0A\00", align 1
@BWI_TX_NRING = common dso_local global i32 0, align 4
@BWI_TX_NDESC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"can't create %dth tbd, %dth DMA map\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"can't create spare RX buf DMA map\0A\00", align 1
@BWI_RX_NDESC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"can't create %dth RX buf DMA map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*)* @bwi_dma_mbuf_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_dma_mbuf_create(%struct.bwi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_rxbuf_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bwi_txbuf_data*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %11, i32 0, i32 4
  store %struct.bwi_rxbuf_data* %12, %struct.bwi_rxbuf_data** %4, align 8
  %13 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %17 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %18 = load i32, i32* @MCLBYTES, align 4
  %19 = load i32, i32* @MCLBYTES, align 4
  %20 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %21 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %21, i32 0, i32 0
  %23 = call i32 @bus_dma_tag_create(i32 %15, i32 1, i32 0, i32 %16, i32 %17, i32* null, i32* null, i32 %18, i32 1, i32 %19, i32 %20, i32* null, i32* null, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %2, align 4
  br label %177

32:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %96, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @BWI_TX_NRING, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %99

37:                                               ; preds = %33
  %38 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %39 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %38, i32 0, i32 2
  %40 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %40, i64 %42
  store %struct.bwi_txbuf_data* %43, %struct.bwi_txbuf_data** %10, align 8
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %92, %37
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @BWI_TX_NDESC, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %44
  %49 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %50 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %10, align 8
  %53 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @bus_dmamap_create(i32 %51, i32 0, i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %48
  %63 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %64 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %87, %62
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %76 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %10, align 8
  %79 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bus_dmamap_destroy(i32 %77, i32 %85)
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %70

90:                                               ; preds = %70
  br label %172

91:                                               ; preds = %48
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %44

95:                                               ; preds = %44
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %33

99:                                               ; preds = %33
  %100 = load i32, i32* @BWI_TX_NRING, align 4
  store i32 %100, i32* %8, align 4
  %101 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %102 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.bwi_rxbuf_data*, %struct.bwi_rxbuf_data** %4, align 8
  %105 = getelementptr inbounds %struct.bwi_rxbuf_data, %struct.bwi_rxbuf_data* %104, i32 0, i32 0
  %106 = call i32 @bus_dmamap_create(i32 %103, i32 0, i32* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %111 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %172

114:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %168, %114
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @BWI_RX_NDESC, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %171

119:                                              ; preds = %115
  %120 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %121 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.bwi_rxbuf_data*, %struct.bwi_rxbuf_data** %4, align 8
  %124 = getelementptr inbounds %struct.bwi_rxbuf_data, %struct.bwi_rxbuf_data* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = call i32 @bus_dmamap_create(i32 %122, i32 0, i32* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %167

133:                                              ; preds = %119
  %134 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %135 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 (i32, i8*, ...) @device_printf(i32 %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %156, %133
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %139
  %144 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %145 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.bwi_rxbuf_data*, %struct.bwi_rxbuf_data** %4, align 8
  %148 = getelementptr inbounds %struct.bwi_rxbuf_data, %struct.bwi_rxbuf_data* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @bus_dmamap_destroy(i32 %146, i32 %154)
  br label %156

156:                                              ; preds = %143
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %139

159:                                              ; preds = %139
  %160 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %161 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.bwi_rxbuf_data*, %struct.bwi_rxbuf_data** %4, align 8
  %164 = getelementptr inbounds %struct.bwi_rxbuf_data, %struct.bwi_rxbuf_data* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @bus_dmamap_destroy(i32 %162, i32 %165)
  br label %172

167:                                              ; preds = %119
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %115

171:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %177

172:                                              ; preds = %159, %109, %90
  %173 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @bwi_dma_mbuf_destroy(%struct.bwi_softc* %173, i32 %174, i32 0)
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %172, %171, %26
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bwi_dma_mbuf_destroy(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
