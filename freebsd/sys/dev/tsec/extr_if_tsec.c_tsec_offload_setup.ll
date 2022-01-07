; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_offload_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_offload_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32, i64 }

@TSEC_REG_TCTRL = common dso_local global i32 0, align 4
@TSEC_TCTRL_IPCSEN = common dso_local global i32 0, align 4
@TSEC_TCTRL_TUCSEN = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@TSEC_CHECKSUM_FEATURES = common dso_local global i64 0, align 8
@TSEC_REG_RCTRL = common dso_local global i32 0, align 4
@TSEC_RCTRL_IPCSEN = common dso_local global i32 0, align 4
@TSEC_RCTRL_TUCSEN = common dso_local global i32 0, align 4
@TSEC_RCTRL_PRSDEP = common dso_local global i32 0, align 4
@TSEC_RCTRL_PRSDEP_PARSE_L2 = common dso_local global i32 0, align 4
@TSEC_RCTRL_VLEX = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@TSEC_RCTRL_PRSDEP_PARSE_L234 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*)* @tsec_offload_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_offload_setup(%struct.tsec_softc* %0) #0 {
  %2 = alloca %struct.tsec_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %2, align 8
  %5 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %6 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %5, i32 0, i32 0
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %9 = call i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc* %8)
  %10 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %11 = load i32, i32* @TSEC_REG_TCTRL, align 4
  %12 = call i32 @TSEC_READ(%struct.tsec_softc* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @TSEC_TCTRL_IPCSEN, align 4
  %14 = load i32, i32* @TSEC_TCTRL_TUCSEN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IFCAP_TXCSUM, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i64, i64* @TSEC_CHECKSUM_FEATURES, align 8
  %26 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %33 = load i32, i32* @TSEC_REG_TCTRL, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @TSEC_WRITE(%struct.tsec_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %37 = load i32, i32* @TSEC_REG_RCTRL, align 4
  %38 = call i32 @TSEC_READ(%struct.tsec_softc* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @TSEC_RCTRL_IPCSEN, align 4
  %40 = load i32, i32* @TSEC_RCTRL_TUCSEN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @TSEC_RCTRL_PRSDEP, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @TSEC_RCTRL_PRSDEP_PARSE_L2, align 4
  %48 = load i32, i32* @TSEC_RCTRL_VLEX, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IFCAP_RXCSUM, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %31
  %59 = load i32, i32* @TSEC_RCTRL_IPCSEN, align 4
  %60 = load i32, i32* @TSEC_RCTRL_TUCSEN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @TSEC_RCTRL_PRSDEP_PARSE_L234, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %58, %31
  %67 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %68 = load i32, i32* @TSEC_REG_RCTRL, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @TSEC_WRITE(%struct.tsec_softc* %67, i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc*) #1

declare dso_local i32 @TSEC_READ(%struct.tsec_softc*, i32) #1

declare dso_local i32 @TSEC_WRITE(%struct.tsec_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
