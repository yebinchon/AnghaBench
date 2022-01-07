; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_config_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_config_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_softc = type { i32, i32, i32, i32 }

@data_buffer_size = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@data_buffer = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@VMCI_INTR_TYPE_MSIX = common dso_local global i32 0, align 4
@VMCI_INTR_TYPE_MSI = common dso_local global i32 0, align 4
@VMCI_INTR_TYPE_INTX = common dso_local global i32 0, align 4
@VMCI_CAPS_NOTIFICATIONS = common dso_local global i32 0, align 4
@VMCI_IMR_ADDR = common dso_local global i32 0, align 4
@VMCI_IMR_DATAGRAM = common dso_local global i32 0, align 4
@VMCI_IMR_NOTIFICATION = common dso_local global i32 0, align 4
@VMCI_CONTROL_ADDR = common dso_local global i32 0, align 4
@VMCI_CONTROL_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_softc*)* @vmci_config_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_config_interrupts(%struct.vmci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmci_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.vmci_softc* %0, %struct.vmci_softc** %3, align 8
  %5 = load i32, i32* @data_buffer_size, align 4
  %6 = load i32, i32* @M_DEVBUF, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = or i32 %7, %8
  %10 = call i32* @malloc(i32 %5, i32 %6, i32 %9)
  store i32* %10, i32** @data_buffer, align 8
  %11 = load i32*, i32** @data_buffer, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load i32, i32* @VMCI_INTR_TYPE_MSIX, align 4
  %17 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %18 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %20 = call i32 @vmci_config_interrupt(%struct.vmci_softc* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i32, i32* @VMCI_INTR_TYPE_MSI, align 4
  %25 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %26 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %28 = call i32 @vmci_config_interrupt(%struct.vmci_softc* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %15
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @VMCI_INTR_TYPE_INTX, align 4
  %34 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %35 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %37 = call i32 @vmci_config_interrupt(%struct.vmci_softc* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %82

43:                                               ; preds = %38
  %44 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %45 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VMCI_CAPS_NOTIFICATIONS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %52 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %55 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @VMCI_IMR_ADDR, align 4
  %58 = load i32, i32* @VMCI_IMR_DATAGRAM, align 4
  %59 = load i32, i32* @VMCI_IMR_NOTIFICATION, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @bus_space_write_4(i32 %53, i32 %56, i32 %57, i32 %60)
  br label %72

62:                                               ; preds = %43
  %63 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %64 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %67 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VMCI_IMR_ADDR, align 4
  %70 = load i32, i32* @VMCI_IMR_DATAGRAM, align 4
  %71 = call i32 @bus_space_write_4(i32 %65, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %50
  %73 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %74 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %77 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @VMCI_CONTROL_ADDR, align 4
  %80 = load i32, i32* @VMCI_CONTROL_INT_ENABLE, align 4
  %81 = call i32 @bus_space_write_4(i32 %75, i32 %78, i32 %79, i32 %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %72, %41, %13
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @vmci_config_interrupt(%struct.vmci_softc*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
