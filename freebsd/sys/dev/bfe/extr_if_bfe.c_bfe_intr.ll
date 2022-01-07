; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@BFE_ISTAT = common dso_local global i32 0, align 4
@BFE_IMASK_DEF = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@BFE_ISTAT_RX = common dso_local global i32 0, align 4
@BFE_ISTAT_TX = common dso_local global i32 0, align 4
@BFE_ISTAT_ERRORS = common dso_local global i32 0, align 4
@BFE_ISTAT_DSCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Descriptor Error\0A\00", align 1
@BFE_ISTAT_DPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Descriptor Protocol Error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfe_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfe_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.bfe_softc*
  store %struct.bfe_softc* %7, %struct.bfe_softc** %3, align 8
  %8 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %8, i32 0, i32 1
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %12 = call i32 @BFE_LOCK(%struct.bfe_softc* %11)
  %13 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %14 = load i32, i32* @BFE_ISTAT, align 4
  %15 = call i32 @CSR_READ_4(%struct.bfe_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @BFE_IMASK_DEF, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %20 = load i32, i32* @BFE_ISTAT, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %19, i32 %20, i32 %21)
  %23 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %24 = load i32, i32* @BFE_ISTAT, align 4
  %25 = call i32 @CSR_READ_4(%struct.bfe_softc* %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %1
  %36 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %37 = call i32 @BFE_UNLOCK(%struct.bfe_softc* %36)
  br label %107

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @BFE_ISTAT_RX, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %45 = call i32 @bfe_rxeof(%struct.bfe_softc* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @BFE_ISTAT_TX, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %53 = call i32 @bfe_txeof(%struct.bfe_softc* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @BFE_ISTAT_ERRORS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @BFE_ISTAT_DSCE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %66 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %70 = call i32 @bfe_stop(%struct.bfe_softc* %69)
  %71 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %72 = call i32 @BFE_UNLOCK(%struct.bfe_softc* %71)
  br label %107

73:                                               ; preds = %59
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @BFE_ISTAT_DPE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %80 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %84 = call i32 @bfe_stop(%struct.bfe_softc* %83)
  %85 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %86 = call i32 @BFE_UNLOCK(%struct.bfe_softc* %85)
  br label %107

87:                                               ; preds = %73
  %88 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %95 = call i32 @bfe_init_locked(%struct.bfe_softc* %94)
  br label %96

96:                                               ; preds = %87, %54
  %97 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %98 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %97, i32 0, i32 1
  %99 = call i32 @IFQ_DRV_IS_EMPTY(i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %103 = call i32 @bfe_start_locked(%struct.ifnet* %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %106 = call i32 @BFE_UNLOCK(%struct.bfe_softc* %105)
  br label %107

107:                                              ; preds = %104, %78, %64, %35
  ret void
}

declare dso_local i32 @BFE_LOCK(%struct.bfe_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.bfe_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @BFE_UNLOCK(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_rxeof(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_txeof(%struct.bfe_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bfe_stop(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_init_locked(%struct.bfe_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @bfe_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
