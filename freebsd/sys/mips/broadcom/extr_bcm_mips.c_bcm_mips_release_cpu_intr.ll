; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_release_cpu_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_release_cpu_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mips_softc = type { i32 }
%struct.bcm_mips_irqsrc = type { i64, %struct.bcm_mips_cpuirq* }
%struct.bcm_mips_cpuirq = type { i32, %struct.bcm_mips_irqsrc* }
%struct.resource = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"isrc over-release\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"no assigned IRQ\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cpuirq over-release\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid solo isrc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_mips_softc*, %struct.bcm_mips_irqsrc*, %struct.resource*)* @bcm_mips_release_cpu_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_mips_release_cpu_intr(%struct.bcm_mips_softc* %0, %struct.bcm_mips_irqsrc* %1, %struct.resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_mips_softc*, align 8
  %6 = alloca %struct.bcm_mips_irqsrc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.bcm_mips_cpuirq*, align 8
  store %struct.bcm_mips_softc* %0, %struct.bcm_mips_softc** %5, align 8
  store %struct.bcm_mips_irqsrc* %1, %struct.bcm_mips_irqsrc** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  %9 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %5, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @BCM_MIPS_LOCK_ASSERT(%struct.bcm_mips_softc* %9, i32 %10)
  %12 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %13 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %19 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %23 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

27:                                               ; preds = %3
  %28 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %29 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %28, i32 0, i32 1
  %30 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %29, align 8
  store %struct.bcm_mips_cpuirq* %30, %struct.bcm_mips_cpuirq** %8, align 8
  %31 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %32 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %31, i32 0, i32 1
  store %struct.bcm_mips_cpuirq* null, %struct.bcm_mips_cpuirq** %32, align 8
  %33 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %34 = icmp ne %struct.bcm_mips_cpuirq* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %38 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %44 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %62

47:                                               ; preds = %27
  %48 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %49 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %48, i32 0, i32 1
  %50 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %49, align 8
  %51 = icmp ne %struct.bcm_mips_irqsrc* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %54 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %53, i32 0, i32 1
  %55 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %54, align 8
  %56 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %57 = icmp eq %struct.bcm_mips_irqsrc* %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @KASSERT(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %61 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %60, i32 0, i32 1
  store %struct.bcm_mips_irqsrc* null, %struct.bcm_mips_irqsrc** %61, align 8
  br label %62

62:                                               ; preds = %52, %47, %27
  %63 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %64 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %26
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @BCM_MIPS_LOCK_ASSERT(%struct.bcm_mips_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
