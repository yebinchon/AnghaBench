; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_dismantle_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_dismantle_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_softc = type { i32, i64, i32, i32, i32, %struct.vmci_interrupt* }
%struct.vmci_interrupt = type { i32, i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@VMCI_INTR_TYPE_INTX = common dso_local global i64 0, align 8
@taskqueue_swi = common dso_local global i32 0, align 4
@data_buffer = common dso_local global i32* null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmci_softc*)* @vmci_dismantle_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_dismantle_interrupts(%struct.vmci_softc* %0) #0 {
  %2 = alloca %struct.vmci_softc*, align 8
  %3 = alloca %struct.vmci_interrupt*, align 8
  %4 = alloca i32, align 4
  store %struct.vmci_softc* %0, %struct.vmci_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %57, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %5
  %12 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %13 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %12, i32 0, i32 5
  %14 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %14, i64 %16
  store %struct.vmci_interrupt* %17, %struct.vmci_interrupt** %3, align 8
  %18 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %3, align 8
  %19 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %11
  %23 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %24 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %3, align 8
  %27 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %3, align 8
  %30 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @bus_teardown_intr(i32 %25, i32* %28, i32* %31)
  %33 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %3, align 8
  %34 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %22, %11
  %36 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %3, align 8
  %37 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %42 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %3, align 8
  %46 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %3, align 8
  %49 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @bus_release_resource(i32 %43, i32 %44, i32 %47, i32* %50)
  %52 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %3, align 8
  %53 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %3, align 8
  %55 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  br label %56

56:                                               ; preds = %40, %35
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %5

60:                                               ; preds = %5
  %61 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %62 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VMCI_INTR_TYPE_INTX, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %68 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %73 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pci_release_msi(i32 %74)
  br label %76

76:                                               ; preds = %71, %66, %60
  %77 = load i32, i32* @taskqueue_swi, align 4
  %78 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %79 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %78, i32 0, i32 3
  %80 = call i32 @taskqueue_drain(i32 %77, i32* %79)
  %81 = load i32, i32* @taskqueue_swi, align 4
  %82 = load %struct.vmci_softc*, %struct.vmci_softc** %2, align 8
  %83 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %82, i32 0, i32 2
  %84 = call i32 @taskqueue_drain(i32 %81, i32* %83)
  %85 = load i32*, i32** @data_buffer, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load i32*, i32** @data_buffer, align 8
  %89 = load i32, i32* @M_DEVBUF, align 4
  %90 = call i32 @free(i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %76
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
