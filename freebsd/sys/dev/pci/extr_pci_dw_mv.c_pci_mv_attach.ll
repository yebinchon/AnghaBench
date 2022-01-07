; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_dw_mv.c_pci_mv_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_dw_mv.c_pci_mv_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_mv_softc = type { i32, i32*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot allocate DBI memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot allocate IRQ resources\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Cannot get 'core' clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Cannot get 'reg' clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Cannot enable 'core' clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Cannot enable 'reg' clock\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@pci_mv_intr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pci_mv_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_mv_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_mv_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.pci_mv_softc* @device_get_softc(i32 %8)
  store %struct.pci_mv_softc* %9, %struct.pci_mv_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ofw_bus_get_node(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %14 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %17 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SYS_RES_MEMORY, align 4
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call i8* @bus_alloc_resource_any(i32 %18, i32 %19, i32* %7, i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %24 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* %22, i32** %25, align 8
  %26 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %27 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %6, align 4
  br label %144

35:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_IRQ, align 4
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = load i32, i32* @RF_SHAREABLE, align 4
  %40 = or i32 %38, %39
  %41 = call i8* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %7, i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %44 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %46 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %6, align 4
  br label %144

53:                                               ; preds = %35
  %54 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %55 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %58 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %57, i32 0, i32 4
  %59 = call i32 @clk_get_by_ofw_name(i32 %56, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %64 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %6, align 4
  br label %144

68:                                               ; preds = %53
  %69 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %70 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %73 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %72, i32 0, i32 3
  %74 = call i32 @clk_get_by_ofw_name(i32 %71, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %79 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %6, align 4
  br label %144

83:                                               ; preds = %68
  %84 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %85 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @clk_enable(i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %92 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %6, align 4
  br label %144

96:                                               ; preds = %83
  %97 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %98 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @clk_enable(i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %105 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @device_printf(i32 %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %108 = load i32, i32* @ENXIO, align 4
  store i32 %108, i32* %6, align 4
  br label %144

109:                                              ; preds = %96
  %110 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %111 = call i32 @pci_mv_phy_init(%struct.pci_mv_softc* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %144

115:                                              ; preds = %109
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @pci_dw_init(i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %144

121:                                              ; preds = %115
  %122 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %123 = call i32 @pci_mv_init(%struct.pci_mv_softc* %122)
  %124 = load i32, i32* %3, align 4
  %125 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %126 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* @INTR_TYPE_MISC, align 4
  %129 = load i32, i32* @INTR_MPSAFE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @pci_mv_intr, align 4
  %132 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %133 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %4, align 8
  %134 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %133, i32 0, i32 0
  %135 = call i64 @bus_setup_intr(i32 %124, i32* %127, i32 %130, i32 %131, i32* null, %struct.pci_mv_softc* %132, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %121
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @device_printf(i32 %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %140 = load i32, i32* @ENXIO, align 4
  store i32 %140, i32* %6, align 4
  br label %144

141:                                              ; preds = %121
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @bus_generic_attach(i32 %142)
  store i32 %143, i32* %2, align 4
  br label %146

144:                                              ; preds = %137, %120, %114, %103, %90, %77, %62, %49, %31
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %141
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.pci_mv_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @pci_mv_phy_init(%struct.pci_mv_softc*) #1

declare dso_local i32 @pci_dw_init(i32) #1

declare dso_local i32 @pci_mv_init(%struct.pci_mv_softc*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.pci_mv_softc*, i32*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
