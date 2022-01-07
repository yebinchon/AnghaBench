; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_setup_txdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_setup_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@FEC_TXDESC_READY = common dso_local global i64 0, align 8
@FEC_TXDESC_L = common dso_local global i64 0, align 8
@FEC_TXDESC_TC = common dso_local global i64 0, align 8
@FEC_TXDESC_WRAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ffec_softc*, i32, i64, i64)* @ffec_setup_txdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ffec_setup_txdesc(%struct.ffec_softc* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ffec_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ffec_softc* %0, %struct.ffec_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @next_txidx(%struct.ffec_softc* %11, i32 %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %4
  store i64 0, i64* %10, align 8
  %20 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 8
  br label %34

24:                                               ; preds = %16
  %25 = load i64, i64* @FEC_TXDESC_READY, align 8
  %26 = load i64, i64* @FEC_TXDESC_L, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* @FEC_TXDESC_TC, align 8
  %29 = or i64 %27, %28
  store i64 %29, i64* %10, align 8
  %30 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %31 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %24, %19
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* @FEC_TXDESC_WRAP, align 8
  %39 = load i64, i64* %10, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %44 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %42, i64* %49, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %8, align 8
  %52 = or i64 %50, %51
  %53 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %54 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 %52, i64* %59, align 8
  %60 = load i64, i64* %9, align 8
  ret i64 %60
}

declare dso_local i64 @next_txidx(%struct.ffec_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
