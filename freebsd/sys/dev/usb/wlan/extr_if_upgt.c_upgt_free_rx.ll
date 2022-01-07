; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_free_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_free_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { %struct.upgt_data* }
%struct.upgt_data = type { i32*, i32* }

@UPGT_RX_MAXCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upgt_softc*)* @upgt_free_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upgt_free_rx(%struct.upgt_softc* %0) #0 {
  %2 = alloca %struct.upgt_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.upgt_data*, align 8
  store %struct.upgt_softc* %0, %struct.upgt_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @UPGT_RX_MAXCOUNT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %11 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %10, i32 0, i32 0
  %12 = load %struct.upgt_data*, %struct.upgt_data** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %12, i64 %14
  store %struct.upgt_data* %15, %struct.upgt_data** %4, align 8
  %16 = load %struct.upgt_data*, %struct.upgt_data** %4, align 8
  %17 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.upgt_data*, %struct.upgt_data** %4, align 8
  %19 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
