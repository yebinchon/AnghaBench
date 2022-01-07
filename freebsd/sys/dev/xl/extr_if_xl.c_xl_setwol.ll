; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_setwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_setwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@XL_FLAG_WOL = common dso_local global i32 0, align 4
@XL_W7_BM_PME = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@XL_BM_PME_MAGIC = common dso_local global i32 0, align 4
@XL_COMMAND = common dso_local global i32 0, align 4
@XL_CMD_RX_ENABLE = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*)* @xl_setwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_setwol(%struct.xl_softc* %0) #0 {
  %2 = alloca %struct.xl_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xl_softc* %0, %struct.xl_softc** %2, align 8
  %6 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %7 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @XL_FLAG_WOL, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %83

13:                                               ; preds = %1
  %14 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %15 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %14, i32 0, i32 3
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %3, align 8
  %17 = call i32 @XL_SEL_WIN(i32 7)
  %18 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %19 = load i32, i32* @XL_W7_BM_PME, align 4
  %20 = call i32 @CSR_READ_2(%struct.xl_softc* %18, i32 %19)
  store i32 0, i32* %4, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = load i32, i32* @XL_BM_PME_MAGIC, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %13
  %32 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %33 = load i32, i32* @XL_W7_BM_PME, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @CSR_WRITE_2(%struct.xl_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %44 = load i32, i32* @XL_COMMAND, align 4
  %45 = load i32, i32* @XL_CMD_RX_ENABLE, align 4
  %46 = call i32 @CSR_WRITE_2(%struct.xl_softc* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %31
  %48 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %49 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %52 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @pci_read_config(i32 %50, i64 %55, i32 2)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %72

67:                                               ; preds = %47
  %68 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %74 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %77 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @pci_write_config(i32 %75, i64 %80, i32 %81, i32 2)
  br label %83

83:                                               ; preds = %72, %12
  ret void
}

declare dso_local i32 @XL_SEL_WIN(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.xl_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
