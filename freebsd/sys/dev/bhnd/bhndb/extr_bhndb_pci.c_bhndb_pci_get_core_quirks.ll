; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_get_core_quirks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_get_core_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_chipid = type { i32 }
%struct.bhnd_core_info = type { i32 }
%struct.bhndb_pci_core = type { %struct.bhndb_pci_quirk* }
%struct.bhndb_pci_quirk = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_chipid*, %struct.bhnd_core_info*)* @bhndb_pci_get_core_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_get_core_quirks(%struct.bhnd_chipid* %0, %struct.bhnd_core_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_chipid*, align 8
  %5 = alloca %struct.bhnd_core_info*, align 8
  %6 = alloca %struct.bhndb_pci_core*, align 8
  %7 = alloca %struct.bhndb_pci_quirk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.bhndb_pci_quirk*, align 8
  store %struct.bhnd_chipid* %0, %struct.bhnd_chipid** %4, align 8
  store %struct.bhnd_core_info* %1, %struct.bhnd_core_info** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %5, align 8
  %12 = call %struct.bhndb_pci_core* @bhndb_pci_find_core(%struct.bhnd_core_info* %11)
  store %struct.bhndb_pci_core* %12, %struct.bhndb_pci_core** %6, align 8
  %13 = icmp eq %struct.bhndb_pci_core* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.bhndb_pci_core*, %struct.bhndb_pci_core** %6, align 8
  %18 = getelementptr inbounds %struct.bhndb_pci_core, %struct.bhndb_pci_core* %17, i32 0, i32 0
  %19 = load %struct.bhndb_pci_quirk*, %struct.bhndb_pci_quirk** %18, align 8
  store %struct.bhndb_pci_quirk* %19, %struct.bhndb_pci_quirk** %7, align 8
  %20 = icmp eq %struct.bhndb_pci_quirk* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %59

23:                                               ; preds = %16
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %54, %23
  %25 = load %struct.bhndb_pci_quirk*, %struct.bhndb_pci_quirk** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.bhndb_pci_quirk, %struct.bhndb_pci_quirk* %25, i64 %26
  %28 = call i32 @BHNDB_PCI_IS_QUIRK_END(%struct.bhndb_pci_quirk* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %57

31:                                               ; preds = %24
  %32 = load %struct.bhndb_pci_quirk*, %struct.bhndb_pci_quirk** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.bhndb_pci_quirk, %struct.bhndb_pci_quirk* %32, i64 %33
  store %struct.bhndb_pci_quirk* %34, %struct.bhndb_pci_quirk** %10, align 8
  %35 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %4, align 8
  %36 = load %struct.bhndb_pci_quirk*, %struct.bhndb_pci_quirk** %10, align 8
  %37 = getelementptr inbounds %struct.bhndb_pci_quirk, %struct.bhndb_pci_quirk* %36, i32 0, i32 2
  %38 = call i32 @bhnd_chip_matches(%struct.bhnd_chipid* %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %54

41:                                               ; preds = %31
  %42 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %5, align 8
  %43 = load %struct.bhndb_pci_quirk*, %struct.bhndb_pci_quirk** %10, align 8
  %44 = getelementptr inbounds %struct.bhndb_pci_quirk, %struct.bhndb_pci_quirk* %43, i32 0, i32 1
  %45 = call i32 @bhnd_core_matches(%struct.bhnd_core_info* %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %54

48:                                               ; preds = %41
  %49 = load %struct.bhndb_pci_quirk*, %struct.bhndb_pci_quirk** %10, align 8
  %50 = getelementptr inbounds %struct.bhndb_pci_quirk, %struct.bhndb_pci_quirk* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %48, %47, %40
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  br label %24

57:                                               ; preds = %24
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %21, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.bhndb_pci_core* @bhndb_pci_find_core(%struct.bhnd_core_info*) #1

declare dso_local i32 @BHNDB_PCI_IS_QUIRK_END(%struct.bhndb_pci_quirk*) #1

declare dso_local i32 @bhnd_chip_matches(%struct.bhnd_chipid*, i32*) #1

declare dso_local i32 @bhnd_core_matches(%struct.bhnd_core_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
