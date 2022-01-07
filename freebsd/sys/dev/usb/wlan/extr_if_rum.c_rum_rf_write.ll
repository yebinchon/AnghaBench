; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_rf_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_rf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32*, i32 }

@RT2573_PHY_CSR4 = common dso_local global i32 0, align 4
@RT2573_RF_BUSY = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not write to RF\0A\00", align 1
@RT2573_RF_20BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"RF R[%u] <- 0x%05x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*, i32, i32)* @rum_rf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_rf_write(%struct.rum_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rum_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 100
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %14 = load i32, i32* @RT2573_PHY_CSR4, align 4
  %15 = call i32 @rum_read(%struct.rum_softc* %13, i32 %14)
  %16 = load i32, i32* @RT2573_RF_BUSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %31

20:                                               ; preds = %12
  %21 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %22 = load i32, i32* @hz, align 4
  %23 = sdiv i32 %22, 100
  %24 = call i64 @rum_pause(%struct.rum_softc* %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %31

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %9

31:                                               ; preds = %26, %19, %9
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 100
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %36 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %66

39:                                               ; preds = %31
  %40 = load i32, i32* @RT2573_RF_BUSY, align 4
  %41 = load i32, i32* @RT2573_RF_20BIT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 1048575
  %45 = shl i32 %44, 2
  %46 = or i32 %42, %45
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 3
  %49 = or i32 %46, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %51 = load i32, i32* @RT2573_PHY_CSR4, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @rum_write(%struct.rum_softc* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %56 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 3
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 1048575
  %65 = call i32 @DPRINTFN(i32 15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %39, %34
  ret void
}

declare dso_local i32 @rum_read(%struct.rum_softc*, i32) #1

declare dso_local i64 @rum_pause(%struct.rum_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rum_write(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
