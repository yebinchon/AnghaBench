; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32**, i32, i32**, i32, i32 }
%struct.rl_dmamap_arg = type { i64 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"failed to create parent DMA tag.\0A\00", align 1
@RL_RX_8139_BUF_ALIGN = common dso_local global i32 0, align 4
@RL_RXBUFLEN = common dso_local global i64 0, align 8
@RL_RX_8139_BUF_GUARD_SZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to create Rx memory block DMA tag.\0A\00", align 1
@RL_TX_8139_BUF_ALIGN = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to create Tx DMA tag.\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to allocate Rx DMA memory block.\0A\00", align 1
@rl_dmamap_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"could not load Rx DMA memory block.\0A\00", align 1
@RL_TX_LIST_CNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"could not create Tx dmamap.\0A\00", align 1
@RL_RX_8139_BUF_RESERVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rl_softc*)* @rl_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rl_dma_alloc(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca %struct.rl_dmamap_arg, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %6 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @bus_get_dma_tag(i32 %8)
  %10 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %11 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %12 = load i64, i64* @BUS_SPACE_MAXSIZE_32BIT, align 8
  %13 = load i64, i64* @BUS_SPACE_MAXSIZE_32BIT, align 8
  %14 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %15 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %14, i32 0, i32 2
  %16 = call i32 @bus_dma_tag_create(i32 %9, i32 1, i32 0, i32 %10, i32 %11, i32* null, i32* null, i64 %12, i32 0, i64 %13, i32 0, i32* null, i32* null, i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %186

24:                                               ; preds = %1
  %25 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %26 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RL_RX_8139_BUF_ALIGN, align 4
  %29 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %30 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %31 = load i64, i64* @RL_RXBUFLEN, align 8
  %32 = load i64, i64* @RL_RX_8139_BUF_GUARD_SZ, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @RL_RXBUFLEN, align 8
  %35 = load i64, i64* @RL_RX_8139_BUF_GUARD_SZ, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %38 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 7
  %40 = call i32 @bus_dma_tag_create(i32 %27, i32 %28, i32 0, i32 %29, i32 %30, i32* null, i32* null, i64 %33, i32 1, i64 %36, i32 0, i32* null, i32* null, i32* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %24
  %44 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %45 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %186

48:                                               ; preds = %24
  %49 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %50 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RL_TX_8139_BUF_ALIGN, align 4
  %53 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %54 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %55 = load i64, i64* @MCLBYTES, align 8
  %56 = load i64, i64* @MCLBYTES, align 8
  %57 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %58 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = call i32 @bus_dma_tag_create(i32 %51, i32 %52, i32 0, i32 %53, i32 %54, i32* null, i32* null, i64 %55, i32 1, i64 %56, i32 0, i32* null, i32* null, i32* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %65 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %186

68:                                               ; preds = %48
  %69 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %70 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %74 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = bitcast i64* %75 to i8**
  %77 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %78 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @BUS_DMA_ZERO, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %83 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 6
  %85 = call i32 @bus_dmamem_alloc(i32 %72, i8** %76, i32 %81, i32* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %68
  %89 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %90 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %186

93:                                               ; preds = %68
  %94 = getelementptr inbounds %struct.rl_dmamap_arg, %struct.rl_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %96 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %100 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %104 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @RL_RXBUFLEN, align 8
  %108 = load i64, i64* @RL_RX_8139_BUF_GUARD_SZ, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* @rl_dmamap_cb, align 4
  %111 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %112 = call i32 @bus_dmamap_load(i32 %98, i32 %102, i64 %106, i64 %109, i32 %110, %struct.rl_dmamap_arg* %3, i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %93
  %116 = getelementptr inbounds %struct.rl_dmamap_arg, %struct.rl_dmamap_arg* %3, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115, %93
  %120 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %121 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @device_printf(i32 %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %186

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.rl_dmamap_arg, %struct.rl_dmamap_arg* %3, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %128 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %169, %124
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @RL_TX_LIST_CNT, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %172

134:                                              ; preds = %130
  %135 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %136 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 5
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  store i32* null, i32** %141, align 8
  %142 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %143 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  store i32* null, i32** %148, align 8
  %149 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %150 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %154 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = call i32 @bus_dmamap_create(i32 %152, i32 0, i32** %159)
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %134
  %164 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %165 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @device_printf(i32 %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %186

168:                                              ; preds = %134
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %130

172:                                              ; preds = %130
  %173 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %174 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %178 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  store i64 %176, i64* %179, align 8
  %180 = load i64, i64* @RL_RX_8139_BUF_RESERVE, align 8
  %181 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %182 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, %180
  store i64 %185, i64* %183, align 8
  br label %186

186:                                              ; preds = %172, %163, %119, %88, %63, %43, %19
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i64, i32, %struct.rl_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
