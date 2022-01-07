; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_srsh_pi_war.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_srsh_pi_war.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_softc = type { i32, i32 }
%struct.bhndb_pci_probe = type { i32, i32 }
%struct.bhnd_core_match = type { i32 }

@BHNDB_PCI_QUIRK_SRSH_WAR = common dso_local global i32 0, align 4
@BHND_PORT_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"no base address found for the PCI host bridge core: %d\0A\00", align 1
@BHND_PCI_SPROM_SHADOW = common dso_local global i64 0, align 8
@BHND_PCI_SRSH_PI_OFFSET = common dso_local global i64 0, align 8
@BHND_PCI_SRSH_PI_MASK = common dso_local global i32 0, align 4
@BHND_PCI_SRSH_PI_SHIFT = common dso_local global i32 0, align 4
@BHND_PCI_SRSH_PI_ADDR_MASK = common dso_local global i32 0, align 4
@BHND_PCI_SRSH_PI_ADDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_pci_softc*, %struct.bhndb_pci_probe*)* @bhndb_pci_srsh_pi_war to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_srsh_pi_war(%struct.bhndb_pci_softc* %0, %struct.bhndb_pci_probe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhndb_pci_softc*, align 8
  %5 = alloca %struct.bhndb_pci_probe*, align 8
  %6 = alloca %struct.bhnd_core_match, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bhnd_core_match, align 4
  store %struct.bhndb_pci_softc* %0, %struct.bhndb_pci_softc** %4, align 8
  store %struct.bhndb_pci_probe* %1, %struct.bhndb_pci_probe** %5, align 8
  %15 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %16 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BHNDB_PCI_QUIRK_SRSH_WAR, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %24 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %23, i32 0, i32 1
  %25 = call i32 @bhnd_core_get_match_desc(i32* %24)
  %26 = getelementptr inbounds %struct.bhnd_core_match, %struct.bhnd_core_match* %14, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = bitcast %struct.bhnd_core_match* %6 to i8*
  %28 = bitcast %struct.bhnd_core_match* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %30 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BHND_PORT_DEVICE, align 4
  %33 = call i32 @bhnd_erom_lookup_core_addr(i32 %31, %struct.bhnd_core_match* %6, i32 %32, i32 0, i32 0, i32* null, i32* %7, i32* %8)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %22
  %37 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %38 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %3, align 4
  br label %80

43:                                               ; preds = %22
  %44 = load i64, i64* @BHND_PCI_SPROM_SHADOW, align 8
  %45 = load i64, i64* @BHND_PCI_SRSH_PI_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  store i64 %46, i64* %9, align 8
  %47 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @bhndb_pci_probe_read(%struct.bhndb_pci_probe* %47, i32 %48, i64 %49, i32 4)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @BHND_PCI_SRSH_PI_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @BHND_PCI_SRSH_PI_SHIFT, align 4
  %55 = ashr i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @BHND_PCI_SRSH_PI_ADDR_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @BHND_PCI_SRSH_PI_ADDR_SHIFT, align 4
  %60 = ashr i32 %58, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %43
  %65 = load i32, i32* @BHND_PCI_SRSH_PI_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @BHND_PCI_SRSH_PI_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  %74 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @bhndb_pci_probe_write(%struct.bhndb_pci_probe* %74, i32 %75, i64 %76, i32 %77, i32 4)
  br label %79

79:                                               ; preds = %64, %43
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %36, %21
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @bhnd_core_get_match_desc(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bhnd_erom_lookup_core_addr(i32, %struct.bhnd_core_match*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bhndb_pci_probe_read(%struct.bhndb_pci_probe*, i32, i64, i32) #1

declare dso_local i32 @bhndb_pci_probe_write(%struct.bhndb_pci_probe*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
