; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_clrwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_clrwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i32, i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@RL_EECMD = common dso_local global i32 0, align 4
@RL_EE_MODE = common dso_local global i32 0, align 4
@RL_CFG3_WOL_LINK = common dso_local global i32 0, align 4
@RL_CFG3_WOL_MAGIC = common dso_local global i32 0, align 4
@RL_EEMODE_OFF = common dso_local global i32 0, align 4
@RL_CFG5_WOL_BCAST = common dso_local global i32 0, align 4
@RL_CFG5_WOL_MCAST = common dso_local global i32 0, align 4
@RL_CFG5_WOL_UCAST = common dso_local global i32 0, align 4
@RL_CFG5_WOL_LANWAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @re_clrwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_clrwol(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %5 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %6 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %5)
  %7 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PCIY_PMG, align 4
  %11 = call i64 @pci_find_cap(i32 %9, i32 %10, i32* %3)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %16 = load i32, i32* @RL_EECMD, align 4
  %17 = load i32, i32* @RL_EE_MODE, align 4
  %18 = call i32 @CSR_WRITE_1(%struct.rl_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %20 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CSR_READ_1(%struct.rl_softc* %19, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @RL_CFG3_WOL_LINK, align 4
  %25 = load i32, i32* @RL_CFG3_WOL_MAGIC, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %31 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %32 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @CSR_WRITE_1(%struct.rl_softc* %30, i32 %33, i32 %34)
  %36 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %37 = load i32, i32* @RL_EECMD, align 4
  %38 = load i32, i32* @RL_EEMODE_OFF, align 4
  %39 = call i32 @CSR_WRITE_1(%struct.rl_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %41 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %42 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @CSR_READ_1(%struct.rl_softc* %40, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @RL_CFG5_WOL_BCAST, align 4
  %46 = load i32, i32* @RL_CFG5_WOL_MCAST, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RL_CFG5_WOL_UCAST, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @RL_CFG5_WOL_LANWAKE, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %58 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %59 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @CSR_WRITE_1(%struct.rl_softc* %57, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
