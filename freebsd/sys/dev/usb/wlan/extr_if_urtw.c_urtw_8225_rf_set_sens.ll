; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_rf_set_sens.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_rf_set_sens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32 }

@URTW_8225_ADDR_C_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_C_DATA_MAGIC1 = common dso_local global i32 0, align 4
@URTW_8225_ADDR_C_DATA_MAGIC2 = common dso_local global i32 0, align 4
@urtw_8225_threshold = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*, i32)* @urtw_8225_rf_set_sens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_8225_rf_set_sens(%struct.urtw_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urtw_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 6
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %45

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 4
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %18 = load i32, i32* @URTW_8225_ADDR_C_MAGIC, align 4
  %19 = load i32, i32* @URTW_8225_ADDR_C_DATA_MAGIC1, align 4
  %20 = call i32 @urtw_8225_write(%struct.urtw_softc* %17, i32 %18, i32 %19)
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %23 = load i32, i32* @URTW_8225_ADDR_C_MAGIC, align 4
  %24 = load i32, i32* @URTW_8225_ADDR_C_DATA_MAGIC2, align 4
  %25 = call i32 @urtw_8225_write(%struct.urtw_softc* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 6, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @urtw_8225_setgain(%struct.urtw_softc* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %43

35:                                               ; preds = %26
  %36 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %37 = load i32*, i32** @urtw_8225_threshold, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @urtw_8187_write_phy_cck(%struct.urtw_softc* %36, i32 65, i32 %41)
  br label %43

43:                                               ; preds = %35, %34
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @urtw_8225_write(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_8225_setgain(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_8187_write_phy_cck(%struct.urtw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
