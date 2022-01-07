; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pcf/extr_pcf_isa.c_pcf_isa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pcf/extr_pcf_isa.c_pcf_isa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf_softc = type { i64, i32, i64, i32, i32, i32, i32*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pcf\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot reserve I/O port range\0A\00", align 1
@IIC_POLLED = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"can't reserve irq, polled mode.\0A\00", align 1
@IIC_FASTEST = common dso_local global i32 0, align 4
@PCF_DEFAULT_ADDR = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@pcf_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"could not setup IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"could not allocate iicbus instance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pcf_isa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf_isa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcf_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @ENXIO, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.pcf_softc* @DEVTOSOFTC(i32 %7)
  store %struct.pcf_softc* %8, %struct.pcf_softc** %4, align 8
  %9 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %10 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_nameunit(i32 %11)
  %13 = load i32, i32* @MTX_DEF, align 4
  %14 = call i32 @mtx_init(i32* %10, i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYS_RES_IOPORT, align 4
  %17 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %18 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %17, i32 0, i32 4
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i8* @bus_alloc_resource_any(i32 %15, i32 %16, i32* %18, i32 %19)
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %23 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %25 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %103

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_get_flags(i32 %32)
  %34 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %35 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %37 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IIC_POLLED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %46 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %45, i32 0, i32 5
  %47 = load i32, i32* @RF_ACTIVE, align 4
  %48 = call i8* @bus_alloc_resource_any(i32 %43, i32 %44, i32* %46, i32 %47)
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %51 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %53 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %42
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @IIC_POLLED, align 4
  %60 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %61 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %56, %42
  br label %65

65:                                               ; preds = %64, %31
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @IIC_FASTEST, align 4
  %68 = load i32, i32* @PCF_DEFAULT_ADDR, align 4
  %69 = call i32 @pcf_rst_card(i32 %66, i32 %67, i32 %68, i32* null)
  %70 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %71 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %65
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %77 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @INTR_TYPE_NET, align 4
  %80 = load i32, i32* @pcf_intr, align 4
  %81 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %82 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %83 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %82, i32 0, i32 7
  %84 = call i32 @bus_setup_intr(i32 %75, i64 %78, i32 %79, i32* null, i32 %80, %struct.pcf_softc* %81, i32* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %74
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %103

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %65
  %92 = load i32, i32* %3, align 4
  %93 = call i32* @device_add_child(i32 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %94 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %95 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %94, i32 0, i32 6
  store i32* %93, i32** %95, align 8
  %96 = icmp eq i32* %93, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %91
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @bus_generic_attach(i32 %101)
  store i32 0, i32* %2, align 4
  br label %138

103:                                              ; preds = %87, %28
  %104 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %105 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @SYS_RES_IRQ, align 4
  %111 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %112 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %115 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @bus_release_resource(i32 %109, i32 %110, i32 %113, i64 %116)
  br label %118

118:                                              ; preds = %108, %103
  %119 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %120 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @SYS_RES_IOPORT, align 4
  %126 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %127 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %130 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @bus_release_resource(i32 %124, i32 %125, i32 %128, i64 %131)
  br label %133

133:                                              ; preds = %123, %118
  %134 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %135 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %134, i32 0, i32 3
  %136 = call i32 @mtx_destroy(i32* %135)
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %133, %100
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.pcf_softc* @DEVTOSOFTC(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @pcf_rst_card(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i64, i32, i32*, i32, %struct.pcf_softc*, i32*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
