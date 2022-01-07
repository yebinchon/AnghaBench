; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_probe = type { i32 }
%struct.bhndb_pci_core = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"PCI-BHND bridge\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bhndb_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_probe(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bhndb_pci_probe*, align 8
  %5 = alloca %struct.bhndb_pci_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.bhndb_pci_probe* null, %struct.bhndb_pci_probe** %4, align 8
  %12 = call i32* @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @device_get_parent(i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32* @device_get_parent(i32* %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %77

21:                                               ; preds = %1
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @device_get_devclass(i32* %22)
  store i32* %23, i32** %10, align 8
  br label %24

24:                                               ; preds = %33, %21
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp eq i32* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %36

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** %10, align 8
  %35 = call i32* @devclass_get_parent(i32* %34)
  store i32* %35, i32** %10, align 8
  br label %24

36:                                               ; preds = %31, %24
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %77

42:                                               ; preds = %36
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @bhndb_enable_pci_clocks(i32* %43)
  store i32 %44, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %2, align 4
  br label %77

48:                                               ; preds = %42
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @bhndb_expected_pci_devclass(i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @bhndb_pci_probe_alloc(%struct.bhndb_pci_probe** %4, i32* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %67

56:                                               ; preds = %48
  %57 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %4, align 8
  %58 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %57, i32 0, i32 0
  %59 = call %struct.bhndb_pci_core* @bhndb_pci_find_core(i32* %58)
  store %struct.bhndb_pci_core* %59, %struct.bhndb_pci_core** %5, align 8
  %60 = icmp eq %struct.bhndb_pci_core* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %11, align 4
  br label %67

63:                                               ; preds = %56
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @device_set_desc(i32* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %63, %61, %55
  %68 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %4, align 8
  %69 = icmp ne %struct.bhndb_pci_probe* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %4, align 8
  %72 = call i32 @bhndb_pci_probe_free(%struct.bhndb_pci_probe* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @bhndb_disable_pci_clocks(i32* %74)
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %46, %40, %19
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32* @devclass_find(i8*) #1

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32* @device_get_devclass(i32*) #1

declare dso_local i32* @devclass_get_parent(i32*) #1

declare dso_local i32 @bhndb_enable_pci_clocks(i32*) #1

declare dso_local i32 @bhndb_expected_pci_devclass(i32*) #1

declare dso_local i32 @bhndb_pci_probe_alloc(%struct.bhndb_pci_probe**, i32*, i32) #1

declare dso_local %struct.bhndb_pci_core* @bhndb_pci_find_core(i32*) #1

declare dso_local i32 @device_set_desc(i32*, i8*) #1

declare dso_local i32 @bhndb_pci_probe_free(%struct.bhndb_pci_probe*) #1

declare dso_local i32 @bhndb_disable_pci_clocks(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
