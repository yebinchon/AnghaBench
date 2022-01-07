; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32, i64, i64, i64, i32, i32*, i32, i32, i32, i64, i32, i64, i64 }

@IWI_CSR_RST = common dso_local global i32 0, align 4
@IWI_RST_SOFT_RESET = common dso_local global i32 0, align 4
@IWI_FLAG_BUSY = common dso_local global i32 0, align 4
@IWI_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@IWI_FW_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iwi_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_stop_locked(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iwi_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.iwi_softc*
  store %struct.iwi_softc* %5, %struct.iwi_softc** %3, align 8
  %6 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %7 = call i32 @IWI_LOCK_ASSERT(%struct.iwi_softc* %6)
  %8 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %8, i32 0, i32 13
  store i64 0, i64* %9, align 8
  %10 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %10, i32 0, i32 12
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %15, i32 0, i32 11
  %17 = call i32 @callout_stop(i32* %16)
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %18, i32 0, i32 10
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %21, i32 0, i32 9
  %23 = call i32 @callout_stop(i32* %22)
  %24 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %25 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %24, i32 0, i32 8
  %26 = call i32 @callout_stop(i32* %25)
  %27 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %28 = call i32 @iwi_stop_master(%struct.iwi_softc* %27)
  %29 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %30 = load i32, i32* @IWI_CSR_RST, align 4
  %31 = load i32, i32* @IWI_RST_SOFT_RESET, align 4
  %32 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %34 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %35 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %34, i32 0, i32 7
  %36 = call i32 @iwi_reset_cmd_ring(%struct.iwi_softc* %33, i32* %35)
  %37 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %38 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %39 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i32 @iwi_reset_tx_ring(%struct.iwi_softc* %37, i32* %41)
  %43 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %44 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %45 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = call i32 @iwi_reset_tx_ring(%struct.iwi_softc* %43, i32* %47)
  %49 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %50 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %51 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = call i32 @iwi_reset_tx_ring(%struct.iwi_softc* %49, i32* %53)
  %55 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %56 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %57 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = call i32 @iwi_reset_tx_ring(%struct.iwi_softc* %55, i32* %59)
  %61 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %62 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %63 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %62, i32 0, i32 5
  %64 = call i32 @iwi_reset_rx_ring(%struct.iwi_softc* %61, i32* %63)
  %65 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %66 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %68 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %70 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @IWI_FLAG_BUSY, align 4
  %72 = load i32, i32* @IWI_FLAG_ASSOCIATED, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %76 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @IWI_FW_IDLE, align 4
  %80 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %81 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %83 = call i32 @wakeup(%struct.iwi_softc* %82)
  ret void
}

declare dso_local i32 @IWI_LOCK_ASSERT(%struct.iwi_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @iwi_stop_master(%struct.iwi_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.iwi_softc*, i32, i32) #1

declare dso_local i32 @iwi_reset_cmd_ring(%struct.iwi_softc*, i32*) #1

declare dso_local i32 @iwi_reset_tx_ring(%struct.iwi_softc*, i32*) #1

declare dso_local i32 @iwi_reset_rx_ring(%struct.iwi_softc*, i32*) #1

declare dso_local i32 @wakeup(%struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
