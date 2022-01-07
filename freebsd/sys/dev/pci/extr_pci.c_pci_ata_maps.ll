; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_ata_maps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_ata_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }

@PCIR_PROGIF = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@PCIP_STORAGE_IDE_MODEPRIM = common dso_local global i32 0, align 4
@PCIP_STORAGE_IDE_MODESEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.resource_list*, i32, i32)* @pci_ata_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_ata_maps(i32 %0, i32 %1, %struct.resource_list* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.resource_list* %2, %struct.resource_list** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PCIR_PROGIF, align 4
  %16 = call i32 @pci_read_config(i32 %14, i32 %15, i32 1)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @PCIP_STORAGE_IDE_MODEPRIM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %5
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @PCIR_BAR(i32 0)
  %26 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, 1
  %30 = call i32 @pci_add_map(i32 %23, i32 %24, i32 %25, %struct.resource_list* %26, i32 %27, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @PCIR_BAR(i32 1)
  %34 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 2
  %38 = call i32 @pci_add_map(i32 %31, i32 %32, i32 %33, %struct.resource_list* %34, i32 %35, i32 %37)
  br label %60

39:                                               ; preds = %5
  %40 = call i32 @PCIR_BAR(i32 0)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @resource_list_add(%struct.resource_list* %41, i32 %42, i32 %43, i32 496, i32 503, i32 8)
  %45 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @resource_list_reserve(%struct.resource_list* %45, i32 %46, i32 %47, i32 %48, i32* %11, i32 496, i32 503, i32 8, i32 0)
  %50 = call i32 @PCIR_BAR(i32 1)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @resource_list_add(%struct.resource_list* %51, i32 %52, i32 %53, i32 1014, i32 1014, i32 1)
  %55 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @resource_list_reserve(%struct.resource_list* %55, i32 %56, i32 %57, i32 %58, i32* %11, i32 1014, i32 1014, i32 1, i32 0)
  br label %60

60:                                               ; preds = %39, %22
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @PCIP_STORAGE_IDE_MODESEC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @PCIR_BAR(i32 2)
  %69 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 4
  %73 = call i32 @pci_add_map(i32 %66, i32 %67, i32 %68, %struct.resource_list* %69, i32 %70, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @PCIR_BAR(i32 3)
  %77 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 8
  %81 = call i32 @pci_add_map(i32 %74, i32 %75, i32 %76, %struct.resource_list* %77, i32 %78, i32 %80)
  br label %103

82:                                               ; preds = %60
  %83 = call i32 @PCIR_BAR(i32 2)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @resource_list_add(%struct.resource_list* %84, i32 %85, i32 %86, i32 368, i32 375, i32 8)
  %88 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @resource_list_reserve(%struct.resource_list* %88, i32 %89, i32 %90, i32 %91, i32* %11, i32 368, i32 375, i32 8, i32 0)
  %93 = call i32 @PCIR_BAR(i32 3)
  store i32 %93, i32* %11, align 4
  %94 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @resource_list_add(%struct.resource_list* %94, i32 %95, i32 %96, i32 886, i32 886, i32 1)
  %98 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @resource_list_reserve(%struct.resource_list* %98, i32 %99, i32 %100, i32 %101, i32* %11, i32 886, i32 886, i32 1, i32 0)
  br label %103

103:                                              ; preds = %82, %65
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @PCIR_BAR(i32 4)
  %107 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, 16
  %111 = call i32 @pci_add_map(i32 %104, i32 %105, i32 %106, %struct.resource_list* %107, i32 %108, i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @PCIR_BAR(i32 5)
  %115 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, 32
  %119 = call i32 @pci_add_map(i32 %112, i32 %113, i32 %114, %struct.resource_list* %115, i32 %116, i32 %118)
  ret void
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_add_map(i32, i32, i32, %struct.resource_list*, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @resource_list_reserve(%struct.resource_list*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
