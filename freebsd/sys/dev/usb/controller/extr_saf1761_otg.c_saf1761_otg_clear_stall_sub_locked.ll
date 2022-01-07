; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_clear_stall_sub_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_clear_stall_sub_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32 }

@UE_CONTROL = common dso_local global i64 0, align 8
@SOTG_EP_INDEX = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_ENDP_INDEX_SHIFT = common dso_local global i64 0, align 8
@UE_DIR_IN = common dso_local global i64 0, align 8
@SOTG_EP_INDEX_DIR_IN = common dso_local global i64 0, align 8
@SOTG_EP_INDEX_DIR_OUT = common dso_local global i64 0, align 8
@SOTG_EP_TYPE = common dso_local global i32 0, align 4
@SOTG_EP_TYPE_ENABLE = common dso_local global i64 0, align 8
@SOTG_CTRL_FUNC = common dso_local global i32 0, align 4
@SOTG_CTRL_FUNC_CLBUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saf1761_otg_softc*, i64, i64, i64)* @saf1761_otg_clear_stall_sub_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_clear_stall_sub_locked(%struct.saf1761_otg_softc* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.saf1761_otg_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @UE_CONTROL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %46

13:                                               ; preds = %4
  %14 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %5, align 8
  %15 = load i32, i32* @SOTG_EP_INDEX, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @SOTG_EP_INDEX_ENDP_INDEX_SHIFT, align 8
  %18 = shl i64 %16, %17
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @UE_DIR_IN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i64, i64* @SOTG_EP_INDEX_DIR_IN, align 8
  br label %26

24:                                               ; preds = %13
  %25 = load i64, i64* @SOTG_EP_INDEX_DIR_OUT, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  %28 = or i64 %18, %27
  %29 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %14, i32 %15, i64 %28)
  %30 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %5, align 8
  %31 = load i32, i32* @SOTG_EP_TYPE, align 4
  %32 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %30, i32 %31, i64 0)
  %33 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %5, align 8
  %34 = load i32, i32* @SOTG_EP_TYPE, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @SOTG_EP_TYPE_ENABLE, align 8
  %37 = or i64 %35, %36
  %38 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %33, i32 %34, i64 %37)
  %39 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %5, align 8
  %40 = load i32, i32* @SOTG_CTRL_FUNC, align 4
  %41 = load i64, i64* @SOTG_CTRL_FUNC_CLBUF, align 8
  %42 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %39, i32 %40, i64 %41)
  %43 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %5, align 8
  %44 = load i32, i32* @SOTG_CTRL_FUNC, align 4
  %45 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %43, i32 %44, i64 0)
  br label %46

46:                                               ; preds = %26, %12
  ret void
}

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
