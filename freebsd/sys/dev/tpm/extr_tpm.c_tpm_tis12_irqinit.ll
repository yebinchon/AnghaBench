; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_tis12_irqinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_tis12_irqinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tpm_softc = type { i32, i32, i32, i32 }

@IRQUNK = common dso_local global i32 0, align 4
@tpm_devs = common dso_local global %struct.TYPE_2__* null, align 8
@TPM_DEV_NOINTS = common dso_local global i32 0, align 4
@TPM_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@TPM_GLOBAL_INT_ENABLE = common dso_local global i32 0, align 4
@TPM_INT_STATUS = common dso_local global i32 0, align 4
@TPM_INT_VECTOR = common dso_local global i32 0, align 4
@TPM_INTF_INT_EDGE_RISING = common dso_local global i32 0, align 4
@TPM_INT_EDGE_RISING = common dso_local global i32 0, align 4
@TPM_INTF_INT_LEVEL_HIGH = common dso_local global i32 0, align 4
@TPM_INT_LEVEL_HIGH = common dso_local global i32 0, align 4
@TPM_INT_LEVEL_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_tis12_irqinit(%struct.tpm_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tpm_softc* %0, %struct.tpm_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @IRQUNK, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tpm_devs, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TPM_DEV_NOINTS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12, %3
  %23 = load i32, i32* @IRQUNK, align 4
  %24 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %25 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %104

26:                                               ; preds = %12
  %27 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %28 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %31 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TPM_INTERRUPT_ENABLE, align 4
  %34 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %35 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %38 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TPM_INTERRUPT_ENABLE, align 4
  %41 = call i32 @bus_space_read_4(i32 %36, i32 %39, i32 %40)
  %42 = load i32, i32* @TPM_GLOBAL_INT_ENABLE, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @bus_space_write_4(i32 %29, i32 %32, i32 %33, i32 %44)
  %46 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %47 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %50 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TPM_INT_STATUS, align 4
  %53 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %54 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %57 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TPM_INT_STATUS, align 4
  %60 = call i32 @bus_space_read_4(i32 %55, i32 %58, i32 %59)
  %61 = call i32 @bus_space_write_4(i32 %48, i32 %51, i32 %52, i32 %60)
  %62 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %63 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %66 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TPM_INT_VECTOR, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @bus_space_write_1(i32 %64, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %73 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %75 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @TPM_INTF_INT_EDGE_RISING, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %26
  %81 = load i32, i32* @TPM_INT_EDGE_RISING, align 4
  store i32 %81, i32* %8, align 4
  br label %94

82:                                               ; preds = %26
  %83 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %84 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @TPM_INTF_INT_LEVEL_HIGH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @TPM_INT_LEVEL_HIGH, align 4
  store i32 %90, i32* %8, align 4
  br label %93

91:                                               ; preds = %82
  %92 = load i32, i32* @TPM_INT_LEVEL_LOW, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %91, %89
  br label %94

94:                                               ; preds = %93, %80
  %95 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %96 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %99 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @TPM_INTERRUPT_ENABLE, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @bus_space_write_4(i32 %97, i32 %100, i32 %101, i32 %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %94, %22
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
