; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_ahci_softc = type { i32, %struct.TYPE_2__*, i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }

@AHCI_GHC_AE = common dso_local global i32 0, align 4
@AHCI_P_CMD_SUD = common dso_local global i32 0, align 4
@AHCI_P_CMD_POD = common dso_local global i32 0, align 4
@AHCI_P_CMD_CPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_ahci_softc*)* @ahci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_reset(%struct.pci_ahci_softc* %0) #0 {
  %2 = alloca %struct.pci_ahci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_ahci_softc* %0, %struct.pci_ahci_softc** %2, align 8
  %4 = load i32, i32* @AHCI_GHC_AE, align 4
  %5 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %6 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %5, i32 0, i32 5
  store i32 %4, i32* %6, align 8
  %7 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %8 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %10 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %15 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pci_lintr_deassert(i32 %16)
  %18 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %19 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %13, %1
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %87, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %24 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %90

27:                                               ; preds = %21
  %28 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %29 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %36 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @AHCI_P_CMD_SUD, align 4
  %43 = load i32, i32* @AHCI_P_CMD_POD, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %46 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 8
  %52 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %53 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %27
  %62 = load i32, i32* @AHCI_P_CMD_CPS, align 4
  %63 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %64 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %62
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %61, %27
  %73 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %74 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %2, align 8
  %81 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = call i32 @ahci_port_reset(%struct.TYPE_2__* %85)
  br label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %21

90:                                               ; preds = %21
  ret void
}

declare dso_local i32 @pci_lintr_deassert(i32) #1

declare dso_local i32 @ahci_port_reset(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
