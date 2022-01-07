; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i32, i32, %struct.sis_txdesc*, i32, %struct.sis_rxdesc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sis_txdesc = type { i32, i32* }
%struct.sis_rxdesc = type { i32, i32* }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not allocate parent dma tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SIS_DESC_ALIGN = common dso_local global i32 0, align 4
@SIS_RX_LIST_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"RX ring\00", align 1
@SIS_TX_LIST_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"TX ring\00", align 1
@SIS_RX_BUF_ALIGN = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"could not allocate RX dma tag\0A\00", align 1
@SIS_MAXTXSEGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"could not allocate TX dma tag\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"can't create spare DMA map for RX\0A\00", align 1
@SIS_RX_LIST_CNT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"can't create DMA map for RX\0A\00", align 1
@SIS_TX_LIST_CNT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"can't create DMA map for TX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sis_softc*)* @sis_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_dma_alloc(%struct.sis_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sis_softc*, align 8
  %4 = alloca %struct.sis_rxdesc*, align 8
  %5 = alloca %struct.sis_txdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sis_softc* %0, %struct.sis_softc** %3, align 8
  %8 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %9 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bus_get_dma_tag(i32 %10)
  %12 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %16 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %17 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %16, i32 0, i32 6
  %18 = call i32 @bus_dma_tag_create(i32 %11, i32 1, i32 0, i32 %12, i32 %13, i32* null, i32* null, i32 %14, i32 0, i32 %15, i32 0, i32* null, i32* null, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %23 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %2, align 4
  br label %185

27:                                               ; preds = %1
  %28 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %29 = load i32, i32* @SIS_DESC_ALIGN, align 4
  %30 = load i32, i32* @SIS_RX_LIST_SZ, align 4
  %31 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %32 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %31, i32 0, i32 14
  %33 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %34 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %33, i32 0, i32 13
  %35 = bitcast i32* %34 to i32**
  %36 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %37 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %36, i32 0, i32 12
  %38 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %39 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %38, i32 0, i32 11
  %40 = call i32 @sis_dma_ring_alloc(%struct.sis_softc* %28, i32 %29, i32 %30, i32* %32, i32** %35, i32* %37, i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %185

45:                                               ; preds = %27
  %46 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %47 = load i32, i32* @SIS_DESC_ALIGN, align 4
  %48 = load i32, i32* @SIS_TX_LIST_SZ, align 4
  %49 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %50 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %49, i32 0, i32 10
  %51 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %52 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %51, i32 0, i32 9
  %53 = bitcast i32* %52 to i32**
  %54 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %55 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %54, i32 0, i32 8
  %56 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %57 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %56, i32 0, i32 7
  %58 = call i32 @sis_dma_ring_alloc(%struct.sis_softc* %46, i32 %47, i32 %48, i32* %50, i32** %53, i32* %55, i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %185

63:                                               ; preds = %45
  %64 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %65 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SIS_RX_BUF_ALIGN, align 4
  %68 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %69 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %70 = load i32, i32* @MCLBYTES, align 4
  %71 = load i32, i32* @MCLBYTES, align 4
  %72 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %73 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %72, i32 0, i32 3
  %74 = call i32 @bus_dma_tag_create(i32 %66, i32 %67, i32 0, i32 %68, i32 %69, i32* null, i32* null, i32 %70, i32 1, i32 %71, i32 0, i32* null, i32* null, i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %63
  %78 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %79 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %185

83:                                               ; preds = %63
  %84 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %85 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %88 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %89 = load i32, i32* @MCLBYTES, align 4
  %90 = load i32, i32* @SIS_MAXTXSEGS, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* @SIS_MAXTXSEGS, align 4
  %93 = load i32, i32* @MCLBYTES, align 4
  %94 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %95 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %94, i32 0, i32 1
  %96 = call i32 @bus_dma_tag_create(i32 %86, i32 1, i32 0, i32 %87, i32 %88, i32* null, i32* null, i32 %91, i32 %92, i32 %93, i32 0, i32* null, i32* null, i32* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %83
  %100 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %101 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %185

105:                                              ; preds = %83
  %106 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %107 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %110 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %109, i32 0, i32 5
  %111 = call i32 @bus_dmamap_create(i32 %108, i32 0, i32* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %105
  %115 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %116 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @device_printf(i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %185

120:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %149, %120
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @SIS_RX_LIST_CNT, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %152

125:                                              ; preds = %121
  %126 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %127 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %126, i32 0, i32 4
  %128 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %128, i64 %130
  store %struct.sis_rxdesc* %131, %struct.sis_rxdesc** %4, align 8
  %132 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %4, align 8
  %133 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %132, i32 0, i32 1
  store i32* null, i32** %133, align 8
  %134 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %135 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %4, align 8
  %138 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %137, i32 0, i32 0
  %139 = call i32 @bus_dmamap_create(i32 %136, i32 0, i32* %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %125
  %143 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %144 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @device_printf(i32 %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %2, align 4
  br label %185

148:                                              ; preds = %125
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %121

152:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %181, %152
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @SIS_TX_LIST_CNT, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %184

157:                                              ; preds = %153
  %158 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %159 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %158, i32 0, i32 2
  %160 = load %struct.sis_txdesc*, %struct.sis_txdesc** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %160, i64 %162
  store %struct.sis_txdesc* %163, %struct.sis_txdesc** %5, align 8
  %164 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %165 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %164, i32 0, i32 1
  store i32* null, i32** %165, align 8
  %166 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %167 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %170 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %169, i32 0, i32 0
  %171 = call i32 @bus_dmamap_create(i32 %168, i32 0, i32* %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %157
  %175 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %176 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @device_printf(i32 %177, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %2, align 4
  br label %185

180:                                              ; preds = %157
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %153

184:                                              ; preds = %153
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %184, %174, %142, %114, %99, %77, %61, %43, %21
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sis_dma_ring_alloc(%struct.sis_softc*, i32, i32, i32*, i32**, i32*, i32*, i8*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
