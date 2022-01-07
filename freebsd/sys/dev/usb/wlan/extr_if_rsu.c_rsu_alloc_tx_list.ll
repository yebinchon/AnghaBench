; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_alloc_tx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_alloc_tx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i32*, i32, i32*, i32* }

@RSU_TX_LIST_COUNT = common dso_local global i32 0, align 4
@RSU_TXBUFSZ = common dso_local global i32 0, align 4
@RSU_N_TRANSFER = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsu_softc*)* @rsu_alloc_tx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsu_alloc_tx_list(%struct.rsu_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsu_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rsu_softc* %0, %struct.rsu_softc** %3, align 8
  %6 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %7 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* @RSU_TX_LIST_COUNT, align 4
  %11 = load i32, i32* @RSU_TXBUFSZ, align 4
  %12 = call i32 @rsu_alloc_list(%struct.rsu_softc* %6, i32* %9, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %63

17:                                               ; preds = %1
  %18 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %19 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %18, i32 0, i32 1
  %20 = call i32 @STAILQ_INIT(i32* %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %40, %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @RSU_N_TRANSFER, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %27 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @STAILQ_INIT(i32* %31)
  %33 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @STAILQ_INIT(i32* %38)
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %21

43:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RSU_TX_LIST_COUNT, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %50 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %49, i32 0, i32 1
  %51 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %52 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @next, align 4
  %58 = call i32 @STAILQ_INSERT_HEAD(i32* %50, i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %44

62:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %15
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @rsu_alloc_list(%struct.rsu_softc*, i32*, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
