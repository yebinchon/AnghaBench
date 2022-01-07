; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_64bitslot_war.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_64bitslot_war.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i64 }

@TI_PCI_STATE = common dso_local global i32 0, align 4
@TI_PCISTATE_32BIT_BUS = common dso_local global i32 0, align 4
@TI_HWREV_TIGON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_softc*)* @ti_64bitslot_war to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_64bitslot_war(%struct.ti_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_softc*, align 8
  store %struct.ti_softc* %0, %struct.ti_softc** %3, align 8
  %4 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %5 = load i32, i32* @TI_PCI_STATE, align 4
  %6 = call i32 @CSR_READ_4(%struct.ti_softc* %4, i32 %5)
  %7 = load i32, i32* @TI_PCISTATE_32BIT_BUS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  %11 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %12 = call i32 @CSR_WRITE_4(%struct.ti_softc* %11, i32 1536, i32 0)
  %13 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %14 = call i32 @CSR_WRITE_4(%struct.ti_softc* %13, i32 1540, i32 0)
  %15 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %16 = call i32 @CSR_WRITE_4(%struct.ti_softc* %15, i32 1536, i32 1431677610)
  %17 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %18 = call i32 @CSR_READ_4(%struct.ti_softc* %17, i32 1540)
  %19 = icmp eq i32 %18, 1431677610
  br i1 %19, label %20, label %33

20:                                               ; preds = %10
  %21 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TI_HWREV_TIGON, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %2, align 4
  br label %35

28:                                               ; preds = %20
  %29 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %30 = load i32, i32* @TI_PCI_STATE, align 4
  %31 = load i32, i32* @TI_PCISTATE_32BIT_BUS, align 4
  %32 = call i32 @TI_SETBIT(%struct.ti_softc* %29, i32 %30, i32 %31)
  store i32 0, i32* %2, align 4
  br label %35

33:                                               ; preds = %10
  br label %34

34:                                               ; preds = %33, %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %28, %26
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @CSR_READ_4(%struct.ti_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @TI_SETBIT(%struct.ti_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
