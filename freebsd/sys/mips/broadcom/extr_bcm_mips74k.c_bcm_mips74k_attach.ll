; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips74k.c_bcm_mips74k_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips74k.c_bcm_mips74k_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mips74k_softc = type { i32*, i64, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to allocate cpu register block\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BCM_MIPS74K_NUM_INTR = common dso_local global i64 0, align 8
@bcm_mips74k_pic_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_mips74k_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_mips74k_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_mips74k_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.bcm_mips74k_softc* @device_get_softc(i32 %8)
  store %struct.bcm_mips74k_softc* %9, %struct.bcm_mips74k_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %12 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %14 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %17, i32 0, i32 1
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i32* @bus_alloc_resource_any(i32 %15, i32 %16, i64* %18, i32 %19)
  %21 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %22 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %72

31:                                               ; preds = %1
  %32 = call i64 (...) @BCM_MIPS74K_GET_TIMER_IRQ()
  store i64 %32, i64* %5, align 8
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %49, %31
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @BCM_MIPS74K_NUM_INTR, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %49

42:                                               ; preds = %37
  %43 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %44 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @BCM_MIPS74K_INTR_SEL(i64 %46)
  %48 = call i32 @bus_write_4(i32* %45, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %42, %41
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %33

52:                                               ; preds = %33
  %53 = load i32, i32* %3, align 4
  %54 = load i64, i64* @BCM_MIPS74K_NUM_INTR, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* @bcm_mips74k_pic_intr, align 4
  %57 = call i32 @bcm_mips_attach(i32 %53, i64 %54, i64 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @SYS_RES_MEMORY, align 4
  %63 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %64 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %67 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @bus_release_resource(i32 %61, i32 %62, i64 %65, i32* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %60, %27
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.bcm_mips74k_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @BCM_MIPS74K_GET_TIMER_IRQ(...) #1

declare dso_local i32 @bus_write_4(i32*, i32, i32) #1

declare dso_local i32 @BCM_MIPS74K_INTR_SEL(i64) #1

declare dso_local i32 @bcm_mips_attach(i32, i64, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
