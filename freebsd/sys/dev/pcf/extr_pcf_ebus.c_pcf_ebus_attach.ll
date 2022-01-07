; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pcf/extr_pcf_ebus.c_pcf_ebus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pcf/extr_pcf_ebus.c_pcf_ebus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf_softc = type { i64, i32, i64, i32, i32, i32, i32*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pcf\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot get OFW node\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot reserve I/O port range\0A\00", align 1
@IIC_POLLED = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"can't reserve irq, polled mode.\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"own-address\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"cannot get own address\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"PCF8584 address: 0x%08llx\0A\00", align 1
@IIC_FASTEST = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@pcf_intr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"could not setup IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"could not allocate iicbus instance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pcf_ebus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf_ebus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcf_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @ENXIO, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.pcf_softc* @DEVTOSOFTC(i32 %9)
  store %struct.pcf_softc* %10, %struct.pcf_softc** %4, align 8
  %11 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %12 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_nameunit(i32 %13)
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %12, i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ofw_bus_get_node(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %126

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SYS_RES_MEMORY, align 4
  %26 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %27 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %26, i32 0, i32 4
  %28 = load i32, i32* @RF_ACTIVE, align 4
  %29 = call i8* @bus_alloc_resource_any(i32 %24, i32 %25, i32* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %32 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %34 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %126

40:                                               ; preds = %23
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_get_flags(i32 %41)
  %43 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %44 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %46 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IIC_POLLED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SYS_RES_IRQ, align 4
  %54 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %55 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %54, i32 0, i32 5
  %56 = load i32, i32* @RF_ACTIVE, align 4
  %57 = call i8* @bus_alloc_resource_any(i32 %52, i32 %53, i32* %55, i32 %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %60 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %62 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %51
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @IIC_POLLED, align 4
  %69 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %70 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %65, %51
  br label %74

74:                                               ; preds = %73, %40
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @OF_getprop(i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64* %7, i32 8)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %126

81:                                               ; preds = %74
  %82 = load i64, i64* @bootverbose, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = load i64, i64* %7, align 8
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @IIC_FASTEST, align 4
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @pcf_rst_card(i32 %89, i32 %90, i64 %91, i32* null)
  %93 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %94 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %88
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %100 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @INTR_TYPE_NET, align 4
  %103 = load i32, i32* @pcf_intr, align 4
  %104 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %105 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %106 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %105, i32 0, i32 7
  %107 = call i32 @bus_setup_intr(i32 %98, i64 %101, i32 %102, i32* null, i32 %103, %struct.pcf_softc* %104, i32* %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %97
  %111 = load i32, i32* %3, align 4
  %112 = call i32 (i32, i8*, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %126

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113, %88
  %115 = load i32, i32* %3, align 4
  %116 = call i32* @device_add_child(i32 %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 -1)
  %117 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %118 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %117, i32 0, i32 6
  store i32* %116, i32** %118, align 8
  %119 = icmp eq i32* %116, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %3, align 4
  %122 = call i32 (i32, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %114
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @bus_generic_attach(i32 %124)
  store i32 0, i32* %2, align 4
  br label %161

126:                                              ; preds = %110, %78, %37, %20
  %127 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %128 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @SYS_RES_IRQ, align 4
  %134 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %135 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %138 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @bus_release_resource(i32 %132, i32 %133, i32 %136, i64 %139)
  br label %141

141:                                              ; preds = %131, %126
  %142 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %143 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @SYS_RES_MEMORY, align 4
  %149 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %150 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %153 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @bus_release_resource(i32 %147, i32 %148, i32 %151, i64 %154)
  br label %156

156:                                              ; preds = %146, %141
  %157 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %158 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %157, i32 0, i32 3
  %159 = call i32 @mtx_destroy(i32* %158)
  %160 = load i32, i32* %5, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %156, %123
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.pcf_softc* @DEVTOSOFTC(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @pcf_rst_card(i32, i32, i64, i32*) #1

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
