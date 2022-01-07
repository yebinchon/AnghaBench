; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_rx_resync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_rx_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.xl_chain_onefrag* }
%struct.xl_chain_onefrag = type { %struct.xl_chain_onefrag*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@XL_RX_LIST_CNT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xl_softc*)* @xl_rx_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xl_rx_resync(%struct.xl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xl_softc*, align 8
  %4 = alloca %struct.xl_chain_onefrag*, align 8
  %5 = alloca i32, align 4
  store %struct.xl_softc* %0, %struct.xl_softc** %3, align 8
  %6 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %7 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %6)
  %8 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %9 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %10, align 8
  store %struct.xl_chain_onefrag* %11, %struct.xl_chain_onefrag** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %28, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @XL_RX_LIST_CNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %4, align 8
  %18 = getelementptr inbounds %struct.xl_chain_onefrag, %struct.xl_chain_onefrag* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %31

24:                                               ; preds = %16
  %25 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %4, align 8
  %26 = getelementptr inbounds %struct.xl_chain_onefrag, %struct.xl_chain_onefrag* %25, i32 0, i32 0
  %27 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %26, align 8
  store %struct.xl_chain_onefrag* %27, %struct.xl_chain_onefrag** %4, align 8
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %12

31:                                               ; preds = %23, %12
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @XL_RX_LIST_CNT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %42

36:                                               ; preds = %31
  %37 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %4, align 8
  %38 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %39 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.xl_chain_onefrag* %37, %struct.xl_chain_onefrag** %40, align 8
  %41 = load i32, i32* @EAGAIN, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %36, %35
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
