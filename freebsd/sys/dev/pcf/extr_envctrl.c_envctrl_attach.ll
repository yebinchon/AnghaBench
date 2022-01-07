; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pcf/extr_envctrl.c_envctrl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pcf/extr_envctrl.c_envctrl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf_softc = type { i64, i32, i64, i32, i32, i32, i32*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pcf\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot reserve I/O port range\0A\00", align 1
@IIC_POLLED = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"can't reserve irq, polled mode.\0A\00", align 1
@IIC_FASTEST = common dso_local global i32 0, align 4
@PCF_DEFAULT_ADDR = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@pcf_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"could not setup IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"could not allocate iicbus instance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @envctrl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envctrl_attach(i32 %0) #0 {
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
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
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
  br label %99

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
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %72 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @INTR_TYPE_NET, align 4
  %75 = load i32, i32* @INTR_MPSAFE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @pcf_intr, align 4
  %78 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %79 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %80 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %79, i32 0, i32 7
  %81 = call i32 @bus_setup_intr(i32 %70, i64 %73, i32 %76, i32* null, i32 %77, %struct.pcf_softc* %78, i32* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %65
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @device_printf(i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %99

87:                                               ; preds = %65
  %88 = load i32, i32* %3, align 4
  %89 = call i32* @device_add_child(i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %90 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %91 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %90, i32 0, i32 6
  store i32* %89, i32** %91, align 8
  %92 = icmp eq i32* %89, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @device_printf(i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %87
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @bus_generic_attach(i32 %97)
  store i32 0, i32* %2, align 4
  br label %134

99:                                               ; preds = %84, %28
  %100 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %101 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @SYS_RES_IRQ, align 4
  %107 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %108 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %111 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @bus_release_resource(i32 %105, i32 %106, i32 %109, i64 %112)
  br label %114

114:                                              ; preds = %104, %99
  %115 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %116 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %114
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @SYS_RES_MEMORY, align 4
  %122 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %123 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %126 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @bus_release_resource(i32 %120, i32 %121, i32 %124, i64 %127)
  br label %129

129:                                              ; preds = %119, %114
  %130 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %131 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %130, i32 0, i32 3
  %132 = call i32 @mtx_destroy(i32* %131)
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %129, %96
  %135 = load i32, i32* %2, align 4
  ret i32 %135
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
