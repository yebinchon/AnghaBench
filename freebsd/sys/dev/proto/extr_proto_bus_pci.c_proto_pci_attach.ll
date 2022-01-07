; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_bus_pci.c_proto_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_bus_pci.c_proto_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_softc = type { i32 }
%struct.resource = type { i32 }

@PROTO_RES_PCICFG = common dso_local global i32 0, align 4
@PROTO_RES_BUSDMA = common dso_local global i32 0, align 4
@PCIR_MAX_BAR_0 = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_TYPE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_64 = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @proto_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proto_softc*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.proto_softc* @device_get_softc(i32 %9)
  store %struct.proto_softc* %10, %struct.proto_softc** %3, align 8
  %11 = load %struct.proto_softc*, %struct.proto_softc** %3, align 8
  %12 = load i32, i32* @PROTO_RES_PCICFG, align 4
  %13 = call i32 @proto_add_resource(%struct.proto_softc* %11, i32 %12, i32 0, %struct.resource* null)
  %14 = load %struct.proto_softc*, %struct.proto_softc** %3, align 8
  %15 = load i32, i32* @PROTO_RES_BUSDMA, align 4
  %16 = call i32 @proto_add_resource(%struct.proto_softc* %14, i32 %15, i32 0, %struct.resource* null)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %63, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PCIR_MAX_BAR_0, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @PCIR_BAR(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pci_read_config(i32 %24, i32 %25, i32 4)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @PCI_BAR_IO(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @SYS_RES_IOPORT, align 4
  br label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call %struct.resource* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %7, i32 %38)
  store %struct.resource* %39, %struct.resource** %4, align 8
  %40 = load %struct.resource*, %struct.resource** %4, align 8
  %41 = icmp eq %struct.resource* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %63

43:                                               ; preds = %34
  %44 = load %struct.proto_softc*, %struct.proto_softc** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.resource*, %struct.resource** %4, align 8
  %48 = call i32 @proto_add_resource(%struct.proto_softc* %44, i32 %45, i32 %46, %struct.resource* %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SYS_RES_IOPORT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %63

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @PCIM_BAR_MEM_TYPE, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @PCIM_BAR_MEM_64, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %52, %42
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %17

66:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  %67 = load i32, i32* @SYS_RES_IRQ, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @RF_ACTIVE, align 4
  %71 = load i32, i32* @RF_SHAREABLE, align 4
  %72 = or i32 %70, %71
  %73 = call %struct.resource* @bus_alloc_resource_any(i32 %68, i32 %69, i32* %7, i32 %72)
  store %struct.resource* %73, %struct.resource** %4, align 8
  %74 = load %struct.resource*, %struct.resource** %4, align 8
  %75 = icmp ne %struct.resource* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load %struct.proto_softc*, %struct.proto_softc** %3, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.resource*, %struct.resource** %4, align 8
  %81 = call i32 @proto_add_resource(%struct.proto_softc* %77, i32 %78, i32 %79, %struct.resource* %80)
  br label %82

82:                                               ; preds = %76, %66
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @proto_attach(i32 %83)
  ret i32 %84
}

declare dso_local %struct.proto_softc* @device_get_softc(i32) #1

declare dso_local i32 @proto_add_resource(%struct.proto_softc*, i32, i32, %struct.resource*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i64 @PCI_BAR_IO(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @proto_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
