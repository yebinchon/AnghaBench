; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_pio_set_txqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_pio_set_txqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32 }
%struct.bwn_pio_txqueue = type { i32, i32, i32, %struct.bwn_pio_txpkt*, i32, i64 }
%struct.bwn_pio_txpkt = type { i32, %struct.bwn_pio_txqueue* }

@BWN_PIO_MAX_TXPACKETS = common dso_local global i32 0, align 4
@BWN_PIO_TXQBUFSIZE = common dso_local global i32 0, align 4
@tp_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, %struct.bwn_pio_txqueue*, i32)* @bwn_pio_set_txqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_pio_set_txqueue(%struct.bwn_mac* %0, %struct.bwn_pio_txqueue* %1, i32 %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca %struct.bwn_pio_txqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwn_pio_txpkt*, align 8
  %8 = alloca %struct.bwn_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store %struct.bwn_pio_txqueue* %1, %struct.bwn_pio_txqueue** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  %12 = load %struct.bwn_softc*, %struct.bwn_softc** %11, align 8
  store %struct.bwn_softc* %12, %struct.bwn_softc** %8, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @bwn_pio_idx2base(%struct.bwn_mac* %13, i32 %14)
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %17 = call i64 @BWN_PIO_TXQOFFSET(%struct.bwn_mac* %16)
  %18 = add nsw i64 %15, %17
  %19 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %20 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %19, i32 0, i32 5
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %23 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @BWN_PIO_MAX_TXPACKETS, align 4
  %25 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %26 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  %28 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bhnd_get_hwrev(i32 %29)
  %31 = icmp sge i32 %30, 8
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %34 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %33, i32 0, i32 1
  store i32 1920, i32* %34, align 4
  br label %46

35:                                               ; preds = %3
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %37 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %38 = load i32, i32* @BWN_PIO_TXQBUFSIZE, align 4
  %39 = call i32 @bwn_pio_read_2(%struct.bwn_mac* %36, %struct.bwn_pio_txqueue* %37, i32 %38)
  %40 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %41 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %43 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 80
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %35, %32
  %47 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %48 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %47, i32 0, i32 2
  %49 = call i32 @TAILQ_INIT(i32* %48)
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %75, %46
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %53 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %52, i32 0, i32 3
  %54 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %53, align 8
  %55 = call i32 @N(%struct.bwn_pio_txpkt* %54)
  %56 = icmp ult i32 %51, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %50
  %58 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %59 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %58, i32 0, i32 3
  %60 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %60, i64 %62
  store %struct.bwn_pio_txpkt* %63, %struct.bwn_pio_txpkt** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %7, align 8
  %66 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %68 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %7, align 8
  %69 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %68, i32 0, i32 1
  store %struct.bwn_pio_txqueue* %67, %struct.bwn_pio_txqueue** %69, align 8
  %70 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %71 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %70, i32 0, i32 2
  %72 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %7, align 8
  %73 = load i32, i32* @tp_list, align 4
  %74 = call i32 @TAILQ_INSERT_TAIL(i32* %71, %struct.bwn_pio_txpkt* %72, i32 %73)
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %50

78:                                               ; preds = %50
  ret void
}

declare dso_local i64 @bwn_pio_idx2base(%struct.bwn_mac*, i32) #1

declare dso_local i64 @BWN_PIO_TXQOFFSET(%struct.bwn_mac*) #1

declare dso_local i32 @bhnd_get_hwrev(i32) #1

declare dso_local i32 @bwn_pio_read_2(%struct.bwn_mac*, %struct.bwn_pio_txqueue*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @N(%struct.bwn_pio_txpkt*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.bwn_pio_txpkt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
