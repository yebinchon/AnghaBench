; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxsb_softc = type { i32, i32*, i32, i32*, i32, i32, i32 }

@SB_GLD_MSR_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unknown ID 0x%x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot map register space\0A\00", align 1
@SB_GLD_MSR_CTRL = common dso_local global i32 0, align 4
@SB_GMC_T_TM = common dso_local global i32 0, align 4
@SB_GMC_T_SEL_MASK = common dso_local global i32 0, align 4
@SB_GMC_T_NE = common dso_local global i32 0, align 4
@SB_GMC_T_SEL3 = common dso_local global i32 0, align 4
@SB_AES_INT = common dso_local global i32 0, align 4
@SB_AI_CLEAR_INTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"glxsb_taskq\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot create task queue\0A\00", align 1
@PI_NET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"%s taskq\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"cannot start task queue\0A\00", align 1
@glxsb_crypto_task = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@SB_GMC_SBI = common dso_local global i32 0, align 4
@SB_GMC_SBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @glxsb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxsb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.glxsb_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.glxsb_softc* @device_get_softc(i32 %6)
  store %struct.glxsb_softc* %7, %struct.glxsb_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %10 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @SB_GLD_MSR_CAP, align 4
  %12 = call i32 @rdmsr(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 16776960
  %15 = icmp ne i32 %14, 1246208
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 16776960
  %20 = ashr i32 %19, 16
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %143

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @pci_enable_busmaster(i32 %24)
  %26 = call i32 @PCIR_BAR(i32 0)
  %27 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %28 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %32 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %31, i32 0, i32 2
  %33 = load i32, i32* @RF_ACTIVE, align 4
  %34 = call i32* @bus_alloc_resource_any(i32 %29, i32 %30, i32* %32, i32 %33)
  %35 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %36 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %38 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %23
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %143

45:                                               ; preds = %23
  %46 = load i32, i32* @SB_GLD_MSR_CTRL, align 4
  %47 = call i32 @rdmsr(i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @SB_GMC_T_TM, align 4
  %49 = load i32, i32* @SB_GMC_T_SEL_MASK, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @SB_GMC_T_NE, align 4
  %55 = load i32, i32* @SB_GMC_T_SEL3, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @SB_GLD_MSR_CTRL, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @wrmsr(i32 %59, i32 %60)
  %62 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %63 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @SB_AES_INT, align 4
  %66 = load i32, i32* @SB_AI_CLEAR_INTR, align 4
  %67 = call i32 @bus_write_4(i32* %64, i32 %65, i32 %66)
  %68 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %69 = call i64 @glxsb_dma_alloc(%struct.glxsb_softc* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %45
  br label %132

72:                                               ; preds = %45
  %73 = load i32, i32* @M_NOWAIT, align 4
  %74 = load i32, i32* @M_ZERO, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %77 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %78 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %77, i32 0, i32 3
  %79 = call i32* @taskqueue_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76, i32** %78)
  %80 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %81 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  %82 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %83 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %72
  %87 = load i32, i32* %3, align 4
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %132

89:                                               ; preds = %72
  %90 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %91 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %90, i32 0, i32 3
  %92 = load i32, i32* @PI_NET, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @device_get_nameunit(i32 %93)
  %95 = call i64 @taskqueue_start_threads(i32** %91, i32 1, i32 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* %3, align 4
  %99 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %127

100:                                              ; preds = %89
  %101 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %102 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %101, i32 0, i32 5
  %103 = load i32, i32* @glxsb_crypto_task, align 4
  %104 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %105 = call i32 @TASK_INIT(i32* %102, i32 0, i32 %103, %struct.glxsb_softc* %104)
  %106 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %107 = call i64 @glxsb_crypto_setup(%struct.glxsb_softc* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %127

110:                                              ; preds = %100
  %111 = load i32, i32* @hz, align 4
  %112 = icmp sgt i32 %111, 100
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* @hz, align 4
  %115 = sdiv i32 %114, 100
  %116 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %117 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %121

118:                                              ; preds = %110
  %119 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %120 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %113
  %122 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %123 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %122, i32 0, i32 4
  %124 = call i32 @callout_init(i32* %123, i32 1)
  %125 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %126 = call i32 @glxsb_rnd(%struct.glxsb_softc* %125)
  store i32 0, i32* %2, align 4
  br label %143

127:                                              ; preds = %109, %97
  %128 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %129 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @taskqueue_free(i32* %130)
  br label %132

132:                                              ; preds = %127, %86, %71
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @SYS_RES_MEMORY, align 4
  %135 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %136 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.glxsb_softc*, %struct.glxsb_softc** %4, align 8
  %139 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @bus_release_resource(i32 %133, i32 %134, i32 %137, i32* %140)
  %142 = load i32, i32* @ENXIO, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %132, %121, %41, %16
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.glxsb_softc* @device_get_softc(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @bus_write_4(i32*, i32, i32) #1

declare dso_local i64 @glxsb_dma_alloc(%struct.glxsb_softc*) #1

declare dso_local i32* @taskqueue_create(i8*, i32, i32, i32**) #1

declare dso_local i64 @taskqueue_start_threads(i32**, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.glxsb_softc*) #1

declare dso_local i64 @glxsb_crypto_setup(%struct.glxsb_softc*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @glxsb_rnd(%struct.glxsb_softc*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
