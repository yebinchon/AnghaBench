; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_alloc_rx_data_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_alloc_rx_data_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32*, i32, i32 }

@UATH_RX_DATA_LIST_COUNT = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@st_rx_inactive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*)* @uath_alloc_rx_data_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_alloc_rx_data_list(%struct.uath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uath_softc* %0, %struct.uath_softc** %3, align 8
  %6 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %7 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* @UATH_RX_DATA_LIST_COUNT, align 4
  %11 = load i32, i32* @MCLBYTES, align 4
  %12 = call i32 @uath_alloc_data_list(%struct.uath_softc* %6, i32* %9, i32 %10, i32 %11, i32* null)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %19 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %18, i32 0, i32 2
  %20 = call i32 @STAILQ_INIT(i32* %19)
  %21 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %22 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %21, i32 0, i32 1
  %23 = call i32 @STAILQ_INIT(i32* %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %42, %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @UATH_RX_DATA_LIST_COUNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %30 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %29, i32 0, i32 1
  %31 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %32 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* @next, align 4
  %38 = call i32 @STAILQ_INSERT_HEAD(i32* %30, i32* %36, i32 %37)
  %39 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %40 = load i32, i32* @st_rx_inactive, align 4
  %41 = call i32 @UATH_STAT_INC(%struct.uath_softc* %39, i32 %40)
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %24

45:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @uath_alloc_data_list(%struct.uath_softc*, i32*, i32, i32, i32*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, i32*, i32) #1

declare dso_local i32 @UATH_STAT_INC(%struct.uath_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
