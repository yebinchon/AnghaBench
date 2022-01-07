; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_abort_xfers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_abort_xfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32* }

@URTW_RTL8187B = common dso_local global i32 0, align 4
@URTW_8187B_N_XFERS = common dso_local global i32 0, align 4
@URTW_8187L_N_XFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urtw_softc*)* @urtw_abort_xfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_abort_xfers(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %5 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %6 = call i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc* %5)
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %8 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @URTW_RTL8187B, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @URTW_8187B_N_XFERS, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @URTW_8187L_N_XFERS, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %32, %17
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %25 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usbd_transfer_stop(i32 %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %19

35:                                               ; preds = %19
  ret void
}

declare dso_local i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc*) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
