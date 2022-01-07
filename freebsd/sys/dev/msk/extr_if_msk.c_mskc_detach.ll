; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_mskc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_mskc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32, i32, i32*, i32, i32*, i32, i32*, i32** }

@.str = private unnamed_addr constant [26 x i8] c"msk mutex not initialized\00", align 1
@MSK_PORT_A = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@MSK_PORT_B = common dso_local global i64 0, align 8
@B0_IMSK = common dso_local global i32 0, align 4
@B0_HWE_IMSK = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@Y2_LED_STAT_OFF = common dso_local global i32 0, align 4
@CS_RST_SET = common dso_local global i32 0, align 4
@MSK_FLAG_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mskc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mskc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msk_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.msk_softc* @device_get_softc(i32 %4)
  store %struct.msk_softc* %5, %struct.msk_softc** %3, align 8
  %6 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %7 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %6, i32 0, i32 1
  %8 = call i32 @mtx_initialized(i32* %7)
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @device_is_alive(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %1
  %14 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %15 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %14, i32 0, i32 7
  %16 = load i32**, i32*** %15, align 8
  %17 = load i64, i64* @MSK_PORT_A, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %13
  %22 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %23 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %22, i32 0, i32 7
  %24 = load i32**, i32*** %23, align 8
  %25 = load i64, i64* @MSK_PORT_A, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @device_get_ivars(i32* %27)
  %29 = load i32, i32* @M_DEVBUF, align 4
  %30 = call i32 @free(i32 %28, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %33 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %32, i32 0, i32 7
  %34 = load i32**, i32*** %33, align 8
  %35 = load i64, i64* @MSK_PORT_A, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @device_delete_child(i32 %31, i32* %37)
  br label %39

39:                                               ; preds = %21, %13
  %40 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %41 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %40, i32 0, i32 7
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* @MSK_PORT_B, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %39
  %48 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %49 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %48, i32 0, i32 7
  %50 = load i32**, i32*** %49, align 8
  %51 = load i64, i64* @MSK_PORT_B, align 8
  %52 = getelementptr inbounds i32*, i32** %50, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @device_get_ivars(i32* %53)
  %55 = load i32, i32* @M_DEVBUF, align 4
  %56 = call i32 @free(i32 %54, i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %59 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %58, i32 0, i32 7
  %60 = load i32**, i32*** %59, align 8
  %61 = load i64, i64* @MSK_PORT_B, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @device_delete_child(i32 %57, i32* %63)
  br label %65

65:                                               ; preds = %47, %39
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @bus_generic_detach(i32 %66)
  br label %68

68:                                               ; preds = %65, %1
  %69 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %70 = load i32, i32* @B0_IMSK, align 4
  %71 = call i32 @CSR_WRITE_4(%struct.msk_softc* %69, i32 %70, i32 0)
  %72 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %73 = load i32, i32* @B0_IMSK, align 4
  %74 = call i32 @CSR_READ_4(%struct.msk_softc* %72, i32 %73)
  %75 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %76 = load i32, i32* @B0_HWE_IMSK, align 4
  %77 = call i32 @CSR_WRITE_4(%struct.msk_softc* %75, i32 %76, i32 0)
  %78 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %79 = load i32, i32* @B0_HWE_IMSK, align 4
  %80 = call i32 @CSR_READ_4(%struct.msk_softc* %78, i32 %79)
  %81 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %82 = load i32, i32* @B0_CTST, align 4
  %83 = load i32, i32* @Y2_LED_STAT_OFF, align 4
  %84 = call i32 @CSR_WRITE_2(%struct.msk_softc* %81, i32 %82, i32 %83)
  %85 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %86 = load i32, i32* @B0_CTST, align 4
  %87 = load i32, i32* @CS_RST_SET, align 4
  %88 = call i32 @CSR_WRITE_2(%struct.msk_softc* %85, i32 %86, i32 %87)
  %89 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %90 = call i32 @msk_status_dma_free(%struct.msk_softc* %89)
  %91 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %92 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %68
  %96 = load i32, i32* %2, align 4
  %97 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %98 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %103 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %102, i32 0, i32 6
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @bus_teardown_intr(i32 %96, i32 %101, i32* %104)
  %106 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %107 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %106, i32 0, i32 6
  store i32* null, i32** %107, align 8
  br label %108

108:                                              ; preds = %95, %68
  %109 = load i32, i32* %2, align 4
  %110 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %111 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %114 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @bus_release_resources(i32 %109, i32 %112, i32* %115)
  %117 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %118 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @MSK_FLAG_MSI, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %108
  %124 = load i32, i32* %2, align 4
  %125 = call i32 @pci_release_msi(i32 %124)
  br label %126

126:                                              ; preds = %123, %108
  %127 = load i32, i32* %2, align 4
  %128 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %129 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %132 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @bus_release_resources(i32 %127, i32 %130, i32* %133)
  %135 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %136 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %135, i32 0, i32 1
  %137 = call i32 @mtx_destroy(i32* %136)
  ret i32 0
}

declare dso_local %struct.msk_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i64 @device_is_alive(i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @device_get_ivars(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.msk_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @msk_status_dma_free(%struct.msk_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
