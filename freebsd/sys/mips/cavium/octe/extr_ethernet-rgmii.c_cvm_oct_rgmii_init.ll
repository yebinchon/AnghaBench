; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-rgmii.c_cvm_oct_rgmii_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-rgmii.c_cvm_oct_rgmii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.octebus_softc = type { i32, i32* }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32 (%struct.ifnet*)*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@cvm_oct_common_open = common dso_local global i32 0, align 4
@number_rgmii_ports = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@OCTEON_IRQ_RML = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not allocate RGMII irq\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@cvm_oct_rgmii_rml_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"could not setup RGMII irq\00", align 1
@CVMX_HELPER_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@CVMX_HELPER_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8
@cvm_oct_rgmii_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_rgmii_init(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.octebus_softc*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = call i64 @cvm_oct_common_init(%struct.ifnet* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %136

20:                                               ; preds = %1
  %21 = load i32, i32* @cvm_oct_common_open, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  store i32 (%struct.ifnet*)* @cvm_oct_common_stop, i32 (%struct.ifnet*)** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  %28 = load i32 (%struct.ifnet*)*, i32 (%struct.ifnet*)** %27, align 8
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = call i32 %28(%struct.ifnet* %29)
  %31 = load i64, i64* @number_rgmii_ports, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %20
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_get_parent(i32 %36)
  %38 = call %struct.octebus_softc* @device_get_softc(i32 %37)
  store %struct.octebus_softc* %38, %struct.octebus_softc** %4, align 8
  store i32 0, i32* %7, align 4
  %39 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %40 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SYS_RES_IRQ, align 4
  %43 = load i32, i32* @OCTEON_IRQ_RML, align 4
  %44 = load i32, i32* @OCTEON_IRQ_RML, align 4
  %45 = load i32, i32* @RF_ACTIVE, align 4
  %46 = call i32* @bus_alloc_resource(i32 %41, i32 %42, i32* %7, i32 %43, i32 %44, i32 1, i32 %45)
  %47 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %48 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %50 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %33
  %54 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %55 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %136

59:                                               ; preds = %33
  %60 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %61 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %64 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @INTR_TYPE_NET, align 4
  %67 = load i32, i32* @INTR_MPSAFE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @cvm_oct_rgmii_rml_interrupt, align 4
  %70 = call i32 @bus_setup_intr(i32 %62, i32* %65, i32 %68, i32 %69, i32* null, i64* @number_rgmii_ports, i32* null)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %59
  %74 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %75 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %136

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79, %20
  %81 = load i64, i64* @number_rgmii_ports, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* @number_rgmii_ports, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_GMII, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88, %80
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_RGMII, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %135

99:                                               ; preds = %93, %88
  %100 = call %struct.TYPE_8__* (...) @cvmx_sysinfo_get()
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %134

105:                                              ; preds = %99
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @INTERFACE(i64 %108)
  store i32 %109, i32* %9, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @INDEX(i64 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @CVMX_GMXX_RXX_INT_EN(i32 %114, i32 %115)
  %117 = call i32 @cvmx_read_csr(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 4
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32 1, i32* %124, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @CVMX_GMXX_RXX_INT_EN(i32 %125, i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @cvmx_write_csr(i32 %127, i32 %129)
  %131 = load i32, i32* @cvm_oct_rgmii_poll, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %105, %99
  br label %135

135:                                              ; preds = %134, %93
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %73, %53, %18
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i64 @cvm_oct_common_init(%struct.ifnet*) #1

declare dso_local i32 @cvm_oct_common_stop(%struct.ifnet*) #1

declare dso_local %struct.octebus_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, i64*, i32*) #1

declare dso_local %struct.TYPE_8__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @INTERFACE(i64) #1

declare dso_local i32 @INDEX(i64) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_INT_EN(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
