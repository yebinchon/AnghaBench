; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jzlcd_softc = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, i32 }

@jzlcd_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"lcd_clk\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"lcd_pixclk\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"cannot get clocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"cannot enable clocks\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"cannot create bus dma tag\0A\00", align 1
@BUS_DMA_NOCACHE = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"cannot allocate dma descriptor\0A\00", align 1
@jzlcd_dmamap_cb = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"cannot load dma map\0A\00", align 1
@hdmi_event = common dso_local global i32 0, align 4
@jzlcd_hdmi_event = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jzlcd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jzlcd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jzlcd_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.jzlcd_softc* @device_get_softc(i32 %6)
  store %struct.jzlcd_softc* %7, %struct.jzlcd_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %10 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @jzlcd_spec, align 4
  %13 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %14 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @bus_alloc_resources(i32 %11, i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %126

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %24 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %23, i32 0, i32 1
  %25 = call i64 @clk_get_by_ofw_name(i32 %22, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32** %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %30 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %29, i32 0, i32 2
  %31 = call i64 @clk_get_by_ofw_name(i32 %28, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32** %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %126

36:                                               ; preds = %27
  %37 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %38 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @clk_enable(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %44 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @clk_enable(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %36
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %126

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @bus_get_dma_tag(i32 %52)
  %54 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %55 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %56 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %57 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %56, i32 0, i32 3
  %58 = call i32 @bus_dma_tag_create(i32 %53, i32 4, i32 0, i32 %54, i32 %55, i32* null, i32* null, i32 8, i32 1, i32 8, i32 0, i32* null, i32* null, i32* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %126

64:                                               ; preds = %51
  %65 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %66 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %69 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %68, i32 0, i32 5
  %70 = bitcast i32* %69 to i8**
  %71 = load i32, i32* @BUS_DMA_NOCACHE, align 4
  %72 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @BUS_DMA_ZERO, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %77 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %76, i32 0, i32 4
  %78 = call i32 @bus_dmamem_alloc(i32 %67, i8** %70, i32 %75, i32* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %64
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %121

84:                                               ; preds = %64
  %85 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %86 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %89 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %92 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @jzlcd_dmamap_cb, align 4
  %95 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %96 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %95, i32 0, i32 7
  %97 = call i32 @bus_dmamap_load(i32 %87, i32 %90, i32 %93, i32 8, i32 %94, i32* %96, i32 0)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %84
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @device_printf(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %110

103:                                              ; preds = %84
  %104 = load i32, i32* @hdmi_event, align 4
  %105 = load i32, i32* @jzlcd_hdmi_event, align 4
  %106 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %107 = call i32 @EVENTHANDLER_REGISTER(i32 %104, i32 %105, %struct.jzlcd_softc* %106, i32 0)
  %108 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %109 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 4
  store i32 0, i32* %2, align 4
  br label %160

110:                                              ; preds = %100
  %111 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %112 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %115 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %118 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @bus_dmamem_free(i32 %113, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %110, %81
  %122 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %123 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @bus_dma_tag_destroy(i32 %124)
  br label %126

126:                                              ; preds = %121, %61, %48, %33, %18
  %127 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %128 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %133 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @clk_release(i32* %134)
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %138 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %143 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @clk_release(i32* %144)
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %148 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @jzlcd_spec, align 4
  %154 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %155 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @bus_release_resources(i32 %152, i32 %153, i32* %156)
  br label %158

158:                                              ; preds = %151, %146
  %159 = load i32, i32* @ENXIO, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %103
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.jzlcd_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @clk_get_by_ofw_name(i32, i32, i8*, i32**) #1

declare dso_local i64 @clk_enable(i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.jzlcd_softc*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
