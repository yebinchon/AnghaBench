; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_try_enable_ari.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_try_enable_ari.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcib_softc = type { i32 }

@PCIY_EXPRESS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCIER_DEVICE_CAP2 = common dso_local global i32 0, align 4
@PCIEM_CAP2_ARI = common dso_local global i32 0, align 4
@PCIZ_ARI = common dso_local global i32 0, align 4
@PCIB_SUPPORTED_ARI_VER = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Unsupported version of ARI (%d) detected\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pcib_try_enable_ari to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcib_try_enable_ari(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcib_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.pcib_softc* @device_get_softc(i32 %12)
  store %struct.pcib_softc* %13, %struct.pcib_softc** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PCIY_EXPRESS, align 4
  %16 = call i32 @pci_find_cap(i32 %14, i32 %15, i32* %11)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @PCIER_DEVICE_CAP2, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 @pci_read_config(i32 %22, i32 %25, i32 4)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PCIEM_CAP2_ARI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENODEV, align 4
  store i32 %32, i32* %3, align 4
  br label %63

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PCIZ_ARI, align 4
  %36 = call i32 @pci_find_extcap(i32 %34, i32 %35, i32* %9)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @ENODEV, align 4
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @pci_read_config(i32 %42, i32 %43, i32 4)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @PCI_EXTCAP_VER(i32 %45)
  %47 = load i64, i64* @PCIB_SUPPORTED_ARI_VER, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load i64, i64* @bootverbose, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @PCI_EXTCAP_VER(i32 %54)
  %56 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %3, align 4
  br label %63

59:                                               ; preds = %41
  %60 = load %struct.pcib_softc*, %struct.pcib_softc** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @pcib_enable_ari(%struct.pcib_softc* %60, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %57, %39, %31, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_find_extcap(i32, i32, i32*) #1

declare dso_local i64 @PCI_EXTCAP_VER(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @pcib_enable_ari(%struct.pcib_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
