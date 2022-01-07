; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_allocate_interrupt_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_allocate_interrupt_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_softc = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@VMCI_INTR_TYPE_INTX = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_softc*)* @vmci_allocate_interrupt_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_allocate_interrupt_resources(%struct.vmci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmci_softc*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vmci_softc* %0, %struct.vmci_softc** %3, align 8
  %8 = load i32, i32* @RF_ACTIVE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @RF_SHAREABLE, align 4
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VMCI_INTR_TYPE_INTX, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %61, %16
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %30 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %27
  %34 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %35 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SYS_RES_IRQ, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.resource* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %7, i32 %38)
  store %struct.resource* %39, %struct.resource** %4, align 8
  %40 = load %struct.resource*, %struct.resource** %4, align 8
  %41 = icmp eq %struct.resource* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %67

44:                                               ; preds = %33
  %45 = load %struct.resource*, %struct.resource** %4, align 8
  %46 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %47 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store %struct.resource* %45, %struct.resource** %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %55 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %53, i32* %60, align 8
  br label %61

61:                                               ; preds = %44
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %27

66:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
