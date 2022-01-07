; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_reset_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_reset_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32 }
%struct.pci_xhci_portregs = type { i32 }
%struct.pci_xhci_dev_emu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xhci_trb = type { i32 }

@XHCI_MAX_DEVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"xhci reset port %d\0D\0A\00", align 1
@XHCI_PS_PLS_MASK = common dso_local global i32 0, align 4
@XHCI_PS_PR = common dso_local global i32 0, align 4
@XHCI_PS_PRC = common dso_local global i32 0, align 4
@XHCI_PS_PED = common dso_local global i32 0, align 4
@XHCI_PS_WRC = common dso_local global i32 0, align 4
@XHCI_TRB_ERROR_SUCCESS = common dso_local global i32 0, align 4
@XHCI_TRB_EVENT_PORT_STS_CHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"xhci reset port insert event failed\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_xhci_softc*, i32, i32)* @pci_xhci_reset_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_xhci_reset_port(%struct.pci_xhci_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_xhci_portregs*, align 8
  %8 = alloca %struct.pci_xhci_dev_emu*, align 8
  %9 = alloca %struct.xhci_trb, align 4
  %10 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @XHCI_MAX_DEVS, align 4
  %13 = icmp sle i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @DPRINTF(i8* %18)
  %20 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.pci_xhci_portregs* @XHCI_PORTREG_PTR(%struct.pci_xhci_softc* %20, i32 %21)
  store %struct.pci_xhci_portregs* %22, %struct.pci_xhci_portregs** %7, align 8
  %23 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.pci_xhci_dev_emu* @XHCI_DEVINST_PTR(%struct.pci_xhci_softc* %23, i32 %24)
  store %struct.pci_xhci_dev_emu* %25, %struct.pci_xhci_dev_emu** %8, align 8
  %26 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %27 = icmp ne %struct.pci_xhci_dev_emu* %26, null
  br i1 %27, label %28, label %92

28:                                               ; preds = %3
  %29 = load i32, i32* @XHCI_PS_PLS_MASK, align 4
  %30 = load i32, i32* @XHCI_PS_PR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @XHCI_PS_PRC, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %7, align 8
  %36 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @XHCI_PS_PED, align 4
  %40 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %41 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @XHCI_PS_SPEED_SET(i32 %44)
  %46 = or i32 %39, %45
  %47 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %7, align 8
  %48 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %28
  %54 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %55 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* @XHCI_PS_WRC, align 4
  %62 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %7, align 8
  %63 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %53, %28
  %67 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %7, align 8
  %68 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @XHCI_PS_PRC, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %66
  %74 = load i32, i32* @XHCI_PS_PRC, align 4
  %75 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %7, align 8
  %76 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  %81 = load i32, i32* @XHCI_TRB_EVENT_PORT_STS_CHANGE, align 4
  %82 = call i32 @pci_xhci_set_evtrb(%struct.xhci_trb* %9, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %84 = call i32 @pci_xhci_insert_event(%struct.pci_xhci_softc* %83, %struct.xhci_trb* %9, i32 1)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %73
  %89 = call i32 @DPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %73
  br label %91

91:                                               ; preds = %90, %66
  br label %92

92:                                               ; preds = %91, %3
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.pci_xhci_portregs* @XHCI_PORTREG_PTR(%struct.pci_xhci_softc*, i32) #1

declare dso_local %struct.pci_xhci_dev_emu* @XHCI_DEVINST_PTR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @XHCI_PS_SPEED_SET(i32) #1

declare dso_local i32 @pci_xhci_set_evtrb(%struct.xhci_trb*, i32, i32, i32) #1

declare dso_local i32 @pci_xhci_insert_event(%struct.pci_xhci_softc*, %struct.xhci_trb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
