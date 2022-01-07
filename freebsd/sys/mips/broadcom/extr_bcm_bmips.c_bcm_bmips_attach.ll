; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_bmips.c_bcm_bmips_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_bmips.c_bcm_bmips_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_bmips_softc = type { i32, i32, i32*, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to allocate cpu register block\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BHND_PORT_AGENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"missing required cfg0 register block\0A\00", align 1
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to allocate cfg0 register block\0A\00", align 1
@SIBA_CFG0_INTVEC = common dso_local global i32 0, align 4
@SIBA_CFG0_IPSFLAG = common dso_local global i32 0, align 4
@BCM_BMIPS_NCPU_IRQS = common dso_local global i32 0, align 4
@BCM_BMIPS_TIMER_IRQ = common dso_local global i32 0, align 4
@bcm_bmips_pic_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_bmips_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_bmips_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_bmips_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.bcm_bmips_softc* @device_get_softc(i32 %6)
  store %struct.bcm_bmips_softc* %7, %struct.bcm_bmips_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %10 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 8
  %11 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %12 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %16 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %15, i32 0, i32 0
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i8* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %16, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %21 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %23 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %5, align 4
  br label %84

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @BHND_PORT_AGENT, align 4
  %33 = call i32 @bhnd_get_port_rid(i32 %31, i32 %32, i32 0, i32 0)
  %34 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %35 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %37 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %5, align 4
  br label %84

44:                                               ; preds = %30
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SYS_RES_MEMORY, align 4
  %47 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %48 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %47, i32 0, i32 1
  %49 = load i32, i32* @RF_ACTIVE, align 4
  %50 = load i32, i32* @RF_SHAREABLE, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @bus_alloc_resource_any(i32 %45, i32 %46, i32* %48, i32 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %55 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %57 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %44
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %5, align 4
  br label %84

64:                                               ; preds = %44
  %65 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %66 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @SIBA_CFG0_INTVEC, align 4
  %69 = call i32 @bus_write_4(i32* %67, i32 %68, i32 0)
  %70 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %71 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @SIBA_CFG0_IPSFLAG, align 4
  %74 = call i32 @bus_write_4(i32* %72, i32 %73, i32 0)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @BCM_BMIPS_NCPU_IRQS, align 4
  %77 = load i32, i32* @BCM_BMIPS_TIMER_IRQ, align 4
  %78 = load i32, i32* @bcm_bmips_pic_intr, align 4
  %79 = call i32 @bcm_mips_attach(i32 %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %64
  br label %84

83:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %116

84:                                               ; preds = %82, %60, %40, %26
  %85 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %86 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @SYS_RES_MEMORY, align 4
  %92 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %93 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %96 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @bus_release_resource(i32 %90, i32 %91, i32 %94, i32* %97)
  br label %99

99:                                               ; preds = %89, %84
  %100 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %101 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @SYS_RES_MEMORY, align 4
  %107 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %108 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %111 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @bus_release_resource(i32 %105, i32 %106, i32 %109, i32* %112)
  br label %114

114:                                              ; preds = %104, %99
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %83
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.bcm_bmips_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bhnd_get_port_rid(i32, i32, i32, i32) #1

declare dso_local i32 @bus_write_4(i32*, i32, i32) #1

declare dso_local i32 @bcm_mips_attach(i32, i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
