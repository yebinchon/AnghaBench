; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_int_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_int_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i32, i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }

@RL_ISR = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@RL_ISR_RX_OK = common dso_local global i32 0, align 4
@RL_ISR_RX_ERR = common dso_local global i32 0, align 4
@RL_ISR_FIFO_OFLOW = common dso_local global i32 0, align 4
@RL_ISR_TX_OK = common dso_local global i32 0, align 4
@RL_ISR_TX_DESC_UNAVAIL = common dso_local global i32 0, align 4
@RL_FLAG_PCIE = common dso_local global i32 0, align 4
@RL_TXSTART_START = common dso_local global i32 0, align 4
@RL_ISR_TX_ERR = common dso_local global i32 0, align 4
@RL_ISR_SYSTEM_ERR = common dso_local global i32 0, align 4
@RL_INTRS_CPLUS = common dso_local global i32 0, align 4
@taskqueue_fast = common dso_local global i32 0, align 4
@RL_IMR = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@RL_ISR_TIMEOUT_EXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @re_int_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_int_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rl_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.rl_softc*
  store %struct.rl_softc* %10, %struct.rl_softc** %5, align 8
  %11 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %12 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %11, i32 0, i32 4
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %6, align 8
  %14 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %15 = call i32 @RL_LOCK(%struct.rl_softc* %14)
  %16 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %17 = load i32, i32* @RL_ISR, align 4
  %18 = call i32 @CSR_READ_2(%struct.rl_softc* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %20 = load i32, i32* @RL_ISR, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @CSR_WRITE_2(%struct.rl_softc* %19, i32 %20, i32 %21)
  %23 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %24 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %2
  %35 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %36 = call i32 @RL_UNLOCK(%struct.rl_softc* %35)
  br label %126

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @RL_ISR_RX_OK, align 4
  %40 = load i32, i32* @RL_ISR_RX_ERR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RL_ISR_FIFO_OFLOW, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %38, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %48 = call i32 @re_rxeof(%struct.rl_softc* %47, i32* null)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %37
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @RL_ISR_TX_OK, align 4
  %52 = load i32, i32* @RL_ISR_TX_DESC_UNAVAIL, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %58 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RL_FLAG_PCIE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %65 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %66 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @RL_TXSTART_START, align 4
  %69 = call i32 @CSR_WRITE_1(%struct.rl_softc* %64, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %56, %49
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @RL_ISR_TX_OK, align 4
  %73 = load i32, i32* @RL_ISR_TX_ERR, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @RL_ISR_TX_DESC_UNAVAIL, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %71, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %81 = call i32 @re_txeof(%struct.rl_softc* %80)
  br label %82

82:                                               ; preds = %79, %70
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @RL_ISR_SYSTEM_ERR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %95 = call i32 @re_init_locked(%struct.rl_softc* %94)
  br label %96

96:                                               ; preds = %87, %82
  %97 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %98 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %97, i32 0, i32 2
  %99 = call i32 @IFQ_DRV_IS_EMPTY(i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %103 = call i32 @re_start_locked(%struct.ifnet* %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %106 = call i32 @RL_UNLOCK(%struct.rl_softc* %105)
  %107 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %108 = load i32, i32* @RL_ISR, align 4
  %109 = call i32 @CSR_READ_2(%struct.rl_softc* %107, i32 %108)
  %110 = load i32, i32* @RL_INTRS_CPLUS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113, %104
  %117 = load i32, i32* @taskqueue_fast, align 4
  %118 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %119 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %118, i32 0, i32 1
  %120 = call i32 @taskqueue_enqueue(i32 %117, i32* %119)
  br label %126

121:                                              ; preds = %113
  %122 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %123 = load i32, i32* @RL_IMR, align 4
  %124 = load i32, i32* @RL_INTRS_CPLUS, align 4
  %125 = call i32 @CSR_WRITE_2(%struct.rl_softc* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %116, %34
  ret void
}

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.rl_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #1

declare dso_local i32 @re_rxeof(%struct.rl_softc*, i32*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @re_txeof(%struct.rl_softc*) #1

declare dso_local i32 @re_init_locked(%struct.rl_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @re_start_locked(%struct.ifnet*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
