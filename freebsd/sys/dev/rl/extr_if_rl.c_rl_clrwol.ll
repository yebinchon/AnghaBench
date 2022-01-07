; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_clrwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_clrwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFCAP_WOL = common dso_local global i32 0, align 4
@RL_EECMD = common dso_local global i32 0, align 4
@RL_EE_MODE = common dso_local global i32 0, align 4
@RL_CFG3_WOL_LINK = common dso_local global i32 0, align 4
@RL_CFG3_WOL_MAGIC = common dso_local global i32 0, align 4
@RL_EEMODE_OFF = common dso_local global i32 0, align 4
@RL_CFG5_WOL_BCAST = common dso_local global i32 0, align 4
@RL_CFG5_WOL_MCAST = common dso_local global i32 0, align 4
@RL_CFG5_WOL_UCAST = common dso_local global i32 0, align 4
@RL_CFG5_WOL_LANWAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @rl_clrwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_clrwol(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %5 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %5, i32 0, i32 2
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IFCAP_WOL, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %17 = load i32, i32* @RL_EECMD, align 4
  %18 = load i32, i32* @RL_EE_MODE, align 4
  %19 = call i32 @CSR_WRITE_1(%struct.rl_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %21 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %22 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CSR_READ_1(%struct.rl_softc* %20, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @RL_CFG3_WOL_LINK, align 4
  %26 = load i32, i32* @RL_CFG3_WOL_MAGIC, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %32 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %33 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @CSR_WRITE_1(%struct.rl_softc* %31, i32 %34, i32 %35)
  %37 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %38 = load i32, i32* @RL_EECMD, align 4
  %39 = load i32, i32* @RL_EEMODE_OFF, align 4
  %40 = call i32 @CSR_WRITE_1(%struct.rl_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %42 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %43 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @CSR_READ_1(%struct.rl_softc* %41, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @RL_CFG5_WOL_BCAST, align 4
  %47 = load i32, i32* @RL_CFG5_WOL_MCAST, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RL_CFG5_WOL_UCAST, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @RL_CFG5_WOL_LANWAKE, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %59 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %60 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @CSR_WRITE_1(%struct.rl_softc* %58, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
