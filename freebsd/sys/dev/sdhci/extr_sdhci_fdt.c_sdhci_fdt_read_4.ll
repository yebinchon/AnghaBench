; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_fdt.c_sdhci_fdt_read_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_fdt.c_sdhci_fdt_read_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i64 }
%struct.sdhci_fdt_softc = type { i64, i32* }

@SDHCI_CAPABILITIES = common dso_local global i32 0, align 4
@SDHCI_CAN_VDD_180 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sdhci_slot*, i32)* @sdhci_fdt_read_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_fdt_read_4(i32 %0, %struct.sdhci_slot* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_fdt_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.sdhci_fdt_softc* @device_get_softc(i32 %9)
  store %struct.sdhci_fdt_softc* %10, %struct.sdhci_fdt_softc** %7, align 8
  %11 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %7, align 8
  %12 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %15 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @bus_read_4(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %7, align 8
  %26 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @SDHCI_CAN_VDD_180, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %29, %24, %3
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local %struct.sdhci_fdt_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
