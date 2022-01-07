; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_apb.c_apb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_apb.c_apb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apb_softc = type { i32, i32*, %struct.TYPE_3__, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8*, i8* }

@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"APB memory window\00", align 1
@ar531x_soc = common dso_local global i64 0, align 8
@AR531X_SOC_AR5315 = common dso_local global i64 0, align 8
@AR5315_APB_BASE = common dso_local global i64 0, align 8
@AR5315_APB_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"apb_attach: failed to set up memory rman\00", align 1
@AR5312_APB_BASE = common dso_local global i64 0, align 8
@AR5312_APB_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"APB IRQ\00", align 1
@APB_IRQ_BASE = common dso_local global i64 0, align 8
@APB_IRQ_END = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"apb_attach: failed to set up IRQ rman\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to allocate IRQ resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@apb_filter = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"WARNING: unable to register interrupt handler\0A\00", align 1
@AR5315_SYSREG_BASE = common dso_local global i64 0, align 8
@AR5315_SYSREG_MISC_INTMASK = common dso_local global i64 0, align 8
@AR5312_SYSREG_BASE = common dso_local global i64 0, align 8
@AR5312_SYSREG_MISC_INTMASK = common dso_local global i64 0, align 8
@AR5312_IRQ_MISC = common dso_local global i32 0, align 4
@AR5315_CPU_IRQ_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @apb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.apb_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.apb_softc* @device_get_softc(i32 %6)
  store %struct.apb_softc* %7, %struct.apb_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %10 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 8
  %11 = load i8*, i8** @RMAN_ARRAY, align 8
  %12 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %13 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i8* %11, i8** %14, align 8
  %15 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %16 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i64, i64* @ar531x_soc, align 8
  %19 = load i64, i64* @AR531X_SOC_AR5315, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %23 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %22, i32 0, i32 3
  %24 = call i64 @rman_init(%struct.TYPE_3__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %28 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %27, i32 0, i32 3
  %29 = load i64, i64* @AR5315_APB_BASE, align 8
  %30 = load i64, i64* @AR5315_APB_BASE, align 8
  %31 = load i64, i64* @AR5315_APB_SIZE, align 8
  %32 = add nsw i64 %30, %31
  %33 = sub nsw i64 %32, 1
  %34 = call i64 @rman_manage_region(%struct.TYPE_3__* %28, i64 %29, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26, %21
  %37 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %26
  br label %57

39:                                               ; preds = %1
  %40 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %41 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %40, i32 0, i32 3
  %42 = call i64 @rman_init(%struct.TYPE_3__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %46 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %45, i32 0, i32 3
  %47 = load i64, i64* @AR5312_APB_BASE, align 8
  %48 = load i64, i64* @AR5312_APB_BASE, align 8
  %49 = load i64, i64* @AR5312_APB_SIZE, align 8
  %50 = add nsw i64 %48, %49
  %51 = sub nsw i64 %50, 1
  %52 = call i64 @rman_manage_region(%struct.TYPE_3__* %46, i64 %47, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44, %39
  %55 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %44
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i8*, i8** @RMAN_ARRAY, align 8
  %59 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %60 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %63 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %64, align 8
  %65 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %66 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %65, i32 0, i32 2
  %67 = call i64 @rman_init(%struct.TYPE_3__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %57
  %70 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %71 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %70, i32 0, i32 2
  %72 = load i64, i64* @APB_IRQ_BASE, align 8
  %73 = load i64, i64* @APB_IRQ_END, align 8
  %74 = call i64 @rman_manage_region(%struct.TYPE_3__* %71, i64 %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69, %57
  %77 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %69
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @SYS_RES_IRQ, align 4
  %81 = load i32, i32* @RF_SHAREABLE, align 4
  %82 = load i32, i32* @RF_ACTIVE, align 4
  %83 = or i32 %81, %82
  %84 = call i32* @bus_alloc_resource_any(i32 %79, i32 %80, i32* %5, i32 %83)
  %85 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %86 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %85, i32 0, i32 1
  store i32* %84, i32** %86, align 8
  %87 = icmp eq i32* %84, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %129

92:                                               ; preds = %78
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %95 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @INTR_TYPE_MISC, align 4
  %98 = load i32, i32* @apb_filter, align 4
  %99 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %100 = load %struct.apb_softc*, %struct.apb_softc** %4, align 8
  %101 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %100, i32 0, i32 0
  %102 = call i64 @bus_setup_intr(i32 %93, i32* %96, i32 %97, i32 %98, i32* null, %struct.apb_softc* %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %92
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* @ENXIO, align 4
  store i32 %107, i32* %2, align 4
  br label %129

108:                                              ; preds = %92
  %109 = load i64, i64* @ar531x_soc, align 8
  %110 = load i64, i64* @AR531X_SOC_AR5315, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %114 = load i64, i64* @AR5315_SYSREG_MISC_INTMASK, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @ATH_WRITE_REG(i64 %115, i32 0)
  br label %122

117:                                              ; preds = %108
  %118 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %119 = load i64, i64* @AR5312_SYSREG_MISC_INTMASK, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @ATH_WRITE_REG(i64 %120, i32 0)
  br label %122

122:                                              ; preds = %117, %112
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @bus_generic_probe(i32 %123)
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @bus_enumerate_hinted_children(i32 %125)
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @bus_generic_attach(i32 %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %122, %104, %88
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.apb_softc* @device_get_softc(i32) #1

declare dso_local i64 @rman_init(%struct.TYPE_3__*) #1

declare dso_local i64 @rman_manage_region(%struct.TYPE_3__*, i64, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.apb_softc*, i32*) #1

declare dso_local i32 @ATH_WRITE_REG(i64, i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_enumerate_hinted_children(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
