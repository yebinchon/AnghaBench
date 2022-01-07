; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_alloc_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_alloc_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { i32, i64, %struct.upgt_data*, i32, i32 }
%struct.upgt_data = type { i32* }

@UPGT_TX_MAXCOUNT = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@st_tx_inactive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.upgt_softc*)* @upgt_alloc_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgt_alloc_tx(%struct.upgt_softc* %0) #0 {
  %2 = alloca %struct.upgt_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.upgt_data*, align 8
  store %struct.upgt_softc* %0, %struct.upgt_softc** %2, align 8
  %5 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %6 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %5, i32 0, i32 4
  %7 = call i32 @STAILQ_INIT(i32* %6)
  %8 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %9 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %8, i32 0, i32 0
  %10 = call i32 @STAILQ_INIT(i32* %9)
  %11 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %12 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %11, i32 0, i32 3
  %13 = call i32 @STAILQ_INIT(i32* %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %44, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @UPGT_TX_MAXCOUNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %20 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %19, i32 0, i32 2
  %21 = load %struct.upgt_data*, %struct.upgt_data** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %21, i64 %23
  store %struct.upgt_data* %24, %struct.upgt_data** %4, align 8
  %25 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %26 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @MCLBYTES, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load %struct.upgt_data*, %struct.upgt_data** %4, align 8
  %35 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %37 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %36, i32 0, i32 0
  %38 = load %struct.upgt_data*, %struct.upgt_data** %4, align 8
  %39 = load i32, i32* @next, align 4
  %40 = call i32 @STAILQ_INSERT_TAIL(i32* %37, %struct.upgt_data* %38, i32 %39)
  %41 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %42 = load i32, i32* @st_tx_inactive, align 4
  %43 = call i32 @UPGT_STAT_INC(%struct.upgt_softc* %41, i32 %42)
  br label %44

44:                                               ; preds = %18
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %14

47:                                               ; preds = %14
  ret i32 0
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.upgt_data*, i32) #1

declare dso_local i32 @UPGT_STAT_INC(%struct.upgt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
