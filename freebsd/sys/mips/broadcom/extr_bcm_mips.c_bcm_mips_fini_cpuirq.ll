; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_fini_cpuirq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_fini_cpuirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mips_softc = type { i32 }
%struct.bcm_mips_cpuirq = type { i64, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"leaking cpuirq resource\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"resource missing\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_mips_softc*, %struct.bcm_mips_cpuirq*)* @bcm_mips_fini_cpuirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_mips_fini_cpuirq(%struct.bcm_mips_softc* %0, %struct.bcm_mips_cpuirq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_mips_softc*, align 8
  %5 = alloca %struct.bcm_mips_cpuirq*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm_mips_softc* %0, %struct.bcm_mips_softc** %4, align 8
  store %struct.bcm_mips_cpuirq* %1, %struct.bcm_mips_cpuirq** %5, align 8
  %7 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %4, align 8
  %8 = call i32 @BCM_MIPS_LOCK(%struct.bcm_mips_softc* %7)
  %9 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %10 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %15 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %4, align 8
  %21 = call i32 @BCM_MIPS_UNLOCK(%struct.bcm_mips_softc* %20)
  store i32 0, i32* %3, align 4
  br label %100

22:                                               ; preds = %2
  %23 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %24 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %4, align 8
  %29 = call i32 @BCM_MIPS_UNLOCK(%struct.bcm_mips_softc* %28)
  %30 = load i32, i32* @EBUSY, align 4
  store i32 %30, i32* %3, align 4
  br label %100

31:                                               ; preds = %22
  %32 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %33 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %31
  %37 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %38 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %4, align 8
  %44 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %47 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %50 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_teardown_intr(i32 %45, i32* %48, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %36
  %56 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %4, align 8
  %57 = call i32 @BCM_MIPS_UNLOCK(%struct.bcm_mips_softc* %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %100

59:                                               ; preds = %36
  %60 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %61 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %59, %31
  %63 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %64 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %4, align 8
  %69 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SYS_RES_IRQ, align 4
  %72 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %73 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %76 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bus_release_resource(i32 %70, i32 %71, i32 %74, i32* %77)
  %79 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %80 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %67, %62
  %82 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %83 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %4, align 8
  %88 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SYS_RES_IRQ, align 4
  %91 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %92 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @bus_delete_resource(i32 %89, i32 %90, i32 %93)
  %95 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %5, align 8
  %96 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %95, i32 0, i32 1
  store i32 -1, i32* %96, align 8
  br label %97

97:                                               ; preds = %86, %81
  %98 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %4, align 8
  %99 = call i32 @BCM_MIPS_UNLOCK(%struct.bcm_mips_softc* %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %55, %27, %13
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @BCM_MIPS_LOCK(%struct.bcm_mips_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @BCM_MIPS_UNLOCK(%struct.bcm_mips_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
