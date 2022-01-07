; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_pci.c_opalpci_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_pci.c_opalpci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opalpci_softc = type { i32 }

@OPAL_SUCCESS = common dso_local global i32 0, align 4
@OPAL_PCI_CONFIG_WRITE_BYTE = common dso_local global i32 0, align 4
@OPAL_PCI_CONFIG_WRITE_HALF_WORD = common dso_local global i32 0, align 4
@OPAL_PCI_CONFIG_WRITE_WORD = common dso_local global i32 0, align 4
@OPAL_HARDWARE = common dso_local global i32 0, align 4
@OPAL_PCI_EEH_FREEZE_CLEAR = common dso_local global i32 0, align 4
@OPAL_PCI_DEFAULT_PE = common dso_local global i32 0, align 4
@OPAL_EEH_ACTION_CLEAR_FREEZE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32)* @opalpci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opalpci_write_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.opalpci_softc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* @OPAL_SUCCESS, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.opalpci_softc* @device_get_softc(i32 %19)
  store %struct.opalpci_softc* %20, %struct.opalpci_softc** %15, align 8
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 %21, 8
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, 31
  %25 = shl i32 %24, 3
  %26 = or i32 %22, %25
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, 7
  %29 = or i32 %26, %28
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %14, align 4
  switch i32 %30, label %58 [
    i32 1, label %31
    i32 2, label %40
    i32 4, label %49
  ]

31:                                               ; preds = %7
  %32 = load i32, i32* @OPAL_PCI_CONFIG_WRITE_BYTE, align 4
  %33 = load %struct.opalpci_softc*, %struct.opalpci_softc** %15, align 8
  %34 = getelementptr inbounds %struct.opalpci_softc, %struct.opalpci_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 (i32, i32, i32, i32, ...) @opal_call(i32 %32, i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %17, align 4
  br label %58

40:                                               ; preds = %7
  %41 = load i32, i32* @OPAL_PCI_CONFIG_WRITE_HALF_WORD, align 4
  %42 = load %struct.opalpci_softc*, %struct.opalpci_softc** %15, align 8
  %43 = getelementptr inbounds %struct.opalpci_softc, %struct.opalpci_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 (i32, i32, i32, i32, ...) @opal_call(i32 %41, i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %17, align 4
  br label %58

49:                                               ; preds = %7
  %50 = load i32, i32* @OPAL_PCI_CONFIG_WRITE_WORD, align 4
  %51 = load %struct.opalpci_softc*, %struct.opalpci_softc** %15, align 8
  %52 = getelementptr inbounds %struct.opalpci_softc, %struct.opalpci_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 (i32, i32, i32, i32, ...) @opal_call(i32 %50, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %7, %49, %40, %31
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @OPAL_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @OPAL_HARDWARE, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* @OPAL_PCI_EEH_FREEZE_CLEAR, align 4
  %68 = load %struct.opalpci_softc*, %struct.opalpci_softc** %15, align 8
  %69 = getelementptr inbounds %struct.opalpci_softc, %struct.opalpci_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @OPAL_PCI_DEFAULT_PE, align 4
  %72 = load i32, i32* @OPAL_EEH_ACTION_CLEAR_FREEZE_ALL, align 4
  %73 = call i32 (i32, i32, i32, i32, ...) @opal_call(i32 %67, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %62
  br label %75

75:                                               ; preds = %74, %58
  ret void
}

declare dso_local %struct.opalpci_softc* @device_get_softc(i32) #1

declare dso_local i32 @opal_call(i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
