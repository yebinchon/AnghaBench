; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_init_cpuirq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_init_cpuirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mips_softc = type { i32 }
%struct.bcm_mips_cpuirq = type { i32, i64, i32*, i8*, %struct.resource*, i64, %struct.bcm_mips_softc* }
%struct.resource = type { i32 }

@NHARD_IRQS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NSOFT_IRQS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"cpuirq already initialized\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to assign interrupt %u: %d\0A\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to allocate interrupt %u resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_EXCL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"failed to setup internal interrupt handler: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_mips_softc*, %struct.bcm_mips_cpuirq*, i32, i64, i32)* @bcm_mips_init_cpuirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_mips_init_cpuirq(%struct.bcm_mips_softc* %0, %struct.bcm_mips_cpuirq* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm_mips_softc*, align 8
  %8 = alloca %struct.bcm_mips_cpuirq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.bcm_mips_softc* %0, %struct.bcm_mips_softc** %7, align 8
  store %struct.bcm_mips_cpuirq* %1, %struct.bcm_mips_cpuirq** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @NHARD_IRQS, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %6, align 4
  br label %132

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @NSOFT_IRQS, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %14, align 8
  %25 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %26 = call i32 @BCM_MIPS_LOCK(%struct.bcm_mips_softc* %25)
  %27 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %28 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %27, i32 0, i32 6
  %29 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %28, align 8
  %30 = icmp eq %struct.bcm_mips_softc* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %34 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SYS_RES_IRQ, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @bus_set_resource(i32 %35, i32 %36, i32 %37, i64 %38, i32 1)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %21
  %43 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %44 = call i32 @BCM_MIPS_UNLOCK(%struct.bcm_mips_softc* %43)
  %45 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %46 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %48, i32 %49)
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %6, align 4
  br label %132

52:                                               ; preds = %21
  %53 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %54 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SYS_RES_IRQ, align 4
  %57 = load i32, i32* @RF_ACTIVE, align 4
  %58 = call %struct.resource* @bus_alloc_resource_any(i32 %55, i32 %56, i32* %9, i32 %57)
  store %struct.resource* %58, %struct.resource** %12, align 8
  %59 = load %struct.resource*, %struct.resource** %12, align 8
  %60 = icmp eq %struct.resource* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %52
  %62 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %63 = call i32 @BCM_MIPS_UNLOCK(%struct.bcm_mips_softc* %62)
  %64 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %65 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %10, align 8
  %68 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %70 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SYS_RES_IRQ, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @bus_delete_resource(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %6, align 4
  br label %132

76:                                               ; preds = %52
  %77 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %78 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.resource*, %struct.resource** %12, align 8
  %81 = load i32, i32* @INTR_TYPE_MISC, align 4
  %82 = load i32, i32* @INTR_MPSAFE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @INTR_EXCL, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %88 = call i32 @bus_setup_intr(i32 %79, %struct.resource* %80, i32 %85, i32 %86, i32* null, %struct.bcm_mips_cpuirq* %87, i8** %13)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %76
  %92 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %93 = call i32 @BCM_MIPS_UNLOCK(%struct.bcm_mips_softc* %92)
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %97 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SYS_RES_IRQ, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.resource*, %struct.resource** %12, align 8
  %102 = call i32 @bus_release_resource(i32 %98, i32 %99, i32 %100, %struct.resource* %101)
  %103 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %104 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SYS_RES_IRQ, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @bus_delete_resource(i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %6, align 4
  br label %132

110:                                              ; preds = %76
  %111 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %112 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %113 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %112, i32 0, i32 6
  store %struct.bcm_mips_softc* %111, %struct.bcm_mips_softc** %113, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %116 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %115, i32 0, i32 5
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %119 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.resource*, %struct.resource** %12, align 8
  %121 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %122 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %121, i32 0, i32 4
  store %struct.resource* %120, %struct.resource** %122, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %125 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %127 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %126, i32 0, i32 2
  store i32* null, i32** %127, align 8
  %128 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %129 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %7, align 8
  %131 = call i32 @BCM_MIPS_UNLOCK(%struct.bcm_mips_softc* %130)
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %110, %91, %61, %42, %19
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @BCM_MIPS_LOCK(%struct.bcm_mips_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i64, i32) #1

declare dso_local i32 @BCM_MIPS_UNLOCK(%struct.bcm_mips_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, %struct.resource*, i32, i32, i32*, %struct.bcm_mips_cpuirq*, i8**) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
