; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_probe_copy_core_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_probe_copy_core_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_probe = type { i32, i32 }
%struct.bhnd_core_info = type { i32 }

@M_BHND = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_pci_probe*, %struct.bhnd_core_info**, i32*)* @bhndb_pci_probe_copy_core_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_probe_copy_core_table(%struct.bhndb_pci_probe* %0, %struct.bhnd_core_info** %1, i32* %2) #0 {
  %4 = alloca %struct.bhndb_pci_probe*, align 8
  %5 = alloca %struct.bhnd_core_info**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.bhndb_pci_probe* %0, %struct.bhndb_pci_probe** %4, align 8
  store %struct.bhnd_core_info** %1, %struct.bhnd_core_info*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %4, align 8
  %9 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* @M_BHND, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = call %struct.bhnd_core_info* @malloc(i64 %13, i32 %14, i32 %15)
  %17 = load %struct.bhnd_core_info**, %struct.bhnd_core_info*** %5, align 8
  store %struct.bhnd_core_info* %16, %struct.bhnd_core_info** %17, align 8
  %18 = load %struct.bhnd_core_info**, %struct.bhnd_core_info*** %5, align 8
  %19 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %18, align 8
  %20 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %4, align 8
  %21 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @memcpy(%struct.bhnd_core_info* %19, i32 %22, i64 %23)
  %25 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %4, align 8
  %26 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  ret i32 0
}

declare dso_local %struct.bhnd_core_info* @malloc(i64, i32, i32) #1

declare dso_local i32 @memcpy(%struct.bhnd_core_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
