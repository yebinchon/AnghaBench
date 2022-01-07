; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_fdt.c_generic_pcie_ofw_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_fdt.c_generic_pcie_ofw_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pcie_ofw_devinfo = type { i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @generic_pcie_ofw_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_pcie_ofw_bus_attach(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.generic_pcie_ofw_devinfo*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @ofw_bus_get_node(i32* %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %1
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @get_addr_size_cells(i64 %14, i32* %7, i32* %8)
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @OF_child(i64 %16)
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %70, %13
  %19 = load i64, i64* %6, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %73

21:                                               ; preds = %18
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.generic_pcie_ofw_devinfo* @malloc(i32 8, i32 %22, i32 %25)
  store %struct.generic_pcie_ofw_devinfo* %26, %struct.generic_pcie_ofw_devinfo** %3, align 8
  %27 = load %struct.generic_pcie_ofw_devinfo*, %struct.generic_pcie_ofw_devinfo** %3, align 8
  %28 = getelementptr inbounds %struct.generic_pcie_ofw_devinfo, %struct.generic_pcie_ofw_devinfo* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @ofw_bus_gen_setup_devinfo(i32* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load %struct.generic_pcie_ofw_devinfo*, %struct.generic_pcie_ofw_devinfo** %3, align 8
  %34 = load i32, i32* @M_DEVBUF, align 4
  %35 = call i32 @free(%struct.generic_pcie_ofw_devinfo* %33, i32 %34)
  br label %70

36:                                               ; preds = %21
  %37 = load %struct.generic_pcie_ofw_devinfo*, %struct.generic_pcie_ofw_devinfo** %3, align 8
  %38 = getelementptr inbounds %struct.generic_pcie_ofw_devinfo, %struct.generic_pcie_ofw_devinfo* %37, i32 0, i32 1
  %39 = call i32 @resource_list_init(i32* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.generic_pcie_ofw_devinfo*, %struct.generic_pcie_ofw_devinfo** %3, align 8
  %45 = getelementptr inbounds %struct.generic_pcie_ofw_devinfo, %struct.generic_pcie_ofw_devinfo* %44, i32 0, i32 1
  %46 = call i32 @ofw_bus_reg_to_rl(i32* %40, i64 %41, i32 %42, i32 %43, i32* %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.generic_pcie_ofw_devinfo*, %struct.generic_pcie_ofw_devinfo** %3, align 8
  %50 = getelementptr inbounds %struct.generic_pcie_ofw_devinfo, %struct.generic_pcie_ofw_devinfo* %49, i32 0, i32 1
  %51 = call i32 @ofw_bus_intr_to_rl(i32* %47, i64 %48, i32* %50, i32* null)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32* @device_add_child(i32* %52, i32* null, i32 -1)
  store i32* %53, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %36
  %57 = load %struct.generic_pcie_ofw_devinfo*, %struct.generic_pcie_ofw_devinfo** %3, align 8
  %58 = getelementptr inbounds %struct.generic_pcie_ofw_devinfo, %struct.generic_pcie_ofw_devinfo* %57, i32 0, i32 1
  %59 = call i32 @resource_list_free(i32* %58)
  %60 = load %struct.generic_pcie_ofw_devinfo*, %struct.generic_pcie_ofw_devinfo** %3, align 8
  %61 = getelementptr inbounds %struct.generic_pcie_ofw_devinfo, %struct.generic_pcie_ofw_devinfo* %60, i32 0, i32 0
  %62 = call i32 @ofw_bus_gen_destroy_devinfo(i32* %61)
  %63 = load %struct.generic_pcie_ofw_devinfo*, %struct.generic_pcie_ofw_devinfo** %3, align 8
  %64 = load i32, i32* @M_DEVBUF, align 4
  %65 = call i32 @free(%struct.generic_pcie_ofw_devinfo* %63, i32 %64)
  br label %70

66:                                               ; preds = %36
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.generic_pcie_ofw_devinfo*, %struct.generic_pcie_ofw_devinfo** %3, align 8
  %69 = call i32 @device_set_ivars(i32* %67, %struct.generic_pcie_ofw_devinfo* %68)
  br label %70

70:                                               ; preds = %66, %56, %32
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @OF_peer(i64 %71)
  store i64 %72, i64* %6, align 8
  br label %18

73:                                               ; preds = %18
  br label %74

74:                                               ; preds = %73, %1
  ret i32 0
}

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @get_addr_size_cells(i64, i32*, i32*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.generic_pcie_ofw_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(i32*, i64) #1

declare dso_local i32 @free(%struct.generic_pcie_ofw_devinfo*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @ofw_bus_reg_to_rl(i32*, i64, i32, i32, i32*) #1

declare dso_local i32 @ofw_bus_intr_to_rl(i32*, i64, i32*, i32*) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.generic_pcie_ofw_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
