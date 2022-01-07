; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_rx_resync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_rx_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.dc_desc* }
%struct.dc_desc = type { i32 }

@DC_RX_LIST_CNT = common dso_local global i32 0, align 4
@DC_RXSTAT_OWN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_softc*)* @dc_rx_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_rx_resync(%struct.dc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca %struct.dc_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %3, align 8
  %7 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DC_RX_LIST_CNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.dc_desc*, %struct.dc_desc** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %19, i64 %21
  store %struct.dc_desc* %22, %struct.dc_desc** %4, align 8
  %23 = load %struct.dc_desc*, %struct.dc_desc** %4, align 8
  %24 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32toh(i32 %25)
  %27 = load i32, i32* @DC_RXSTAT_OWN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %15
  br label %38

31:                                               ; preds = %15
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DC_RX_LIST_CNT, align 4
  %34 = call i32 @DC_INC(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %11

38:                                               ; preds = %30, %11
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @DC_RX_LIST_CNT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %46 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @EAGAIN, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %42
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @DC_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
