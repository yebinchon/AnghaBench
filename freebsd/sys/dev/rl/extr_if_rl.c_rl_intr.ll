; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@RL_ISR = common dso_local global i32 0, align 4
@RL_INTRS = common dso_local global i32 0, align 4
@RL_IMR = common dso_local global i32 0, align 4
@RL_ISR_RX_OK = common dso_local global i32 0, align 4
@RL_ISR_RX_ERR = common dso_local global i32 0, align 4
@RL_ISR_TX_OK = common dso_local global i32 0, align 4
@RL_ISR_TX_ERR = common dso_local global i32 0, align 4
@RL_ISR_SYSTEM_ERR = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rl_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.rl_softc*
  store %struct.rl_softc* %8, %struct.rl_softc** %3, align 8
  %9 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %13 = call i32 @RL_LOCK(%struct.rl_softc* %12)
  %14 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %15 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %132

19:                                               ; preds = %1
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %119

27:                                               ; preds = %19
  %28 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %29 = load i32, i32* @RL_ISR, align 4
  %30 = call i32 @CSR_READ_2(%struct.rl_softc* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 65535
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @RL_INTRS, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %27
  br label %132

39:                                               ; preds = %33
  %40 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %41 = load i32, i32* @RL_IMR, align 4
  %42 = call i32 @CSR_WRITE_2(%struct.rl_softc* %40, i32 %41, i32 0)
  store i32 16, i32* %6, align 4
  br label %43

43:                                               ; preds = %107, %39
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %110

46:                                               ; preds = %43
  %47 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %48 = load i32, i32* @RL_ISR, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @CSR_WRITE_2(%struct.rl_softc* %47, i32 %48, i32 %49)
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %46
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @RL_ISR_RX_OK, align 4
  %60 = load i32, i32* @RL_ISR_RX_ERR, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %66 = call i32 @rl_rxeof(%struct.rl_softc* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @RL_ISR_TX_OK, align 4
  %70 = load i32, i32* @RL_ISR_TX_ERR, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %76 = call i32 @rl_txeof(%struct.rl_softc* %75)
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @RL_ISR_SYSTEM_ERR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %90 = call i32 @rl_init_locked(%struct.rl_softc* %89)
  %91 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %92 = call i32 @RL_UNLOCK(%struct.rl_softc* %91)
  br label %135

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93, %46
  %95 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %96 = load i32, i32* @RL_ISR, align 4
  %97 = call i32 @CSR_READ_2(%struct.rl_softc* %95, i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 65535
  br i1 %99, label %105, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @RL_INTRS, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %94
  br label %110

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %6, align 4
  br label %43

110:                                              ; preds = %105, %43
  %111 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %112 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %111, i32 0, i32 2
  %113 = call i32 @IFQ_DRV_IS_EMPTY(i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %117 = call i32 @rl_start_locked(%struct.ifnet* %116)
  br label %118

118:                                              ; preds = %115, %110
  br label %119

119:                                              ; preds = %118, %26
  %120 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %121 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %128 = load i32, i32* @RL_IMR, align 4
  %129 = load i32, i32* @RL_INTRS, align 4
  %130 = call i32 @CSR_WRITE_2(%struct.rl_softc* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %119
  br label %132

132:                                              ; preds = %131, %38, %18
  %133 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %134 = call i32 @RL_UNLOCK(%struct.rl_softc* %133)
  br label %135

135:                                              ; preds = %132, %82
  ret void
}

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.rl_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @rl_rxeof(%struct.rl_softc*) #1

declare dso_local i32 @rl_txeof(%struct.rl_softc*) #1

declare dso_local i32 @rl_init_locked(%struct.rl_softc*) #1

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @rl_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
