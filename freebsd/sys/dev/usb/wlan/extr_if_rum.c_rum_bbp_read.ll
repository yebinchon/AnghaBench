; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_bbp_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_bbp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"reg=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"could not read BBP\0A\00", align 1
@RT2573_BBP_BUSY = common dso_local global i32 0, align 4
@RT2573_BBP_READ = common dso_local global i32 0, align 4
@RT2573_PHY_CSR3 = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rum_softc*, i32)* @rum_bbp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_bbp_read(%struct.rum_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rum_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %11 = call i64 @rum_bbp_busy(%struct.rum_softc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %15 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load i32, i32* @RT2573_BBP_BUSY, align 4
  %20 = load i32, i32* @RT2573_BBP_READ, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 8
  %24 = or i32 %21, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %26 = load i32, i32* @RT2573_PHY_CSR3, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @rum_write(%struct.rum_softc* %25, i32 %26, i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %51, %18
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 100
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %34 = load i32, i32* @RT2573_PHY_CSR3, align 4
  %35 = call i32 @rum_read(%struct.rum_softc* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @RT2573_BBP_BUSY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 255
  store i32 %42, i32* %3, align 4
  br label %59

43:                                               ; preds = %32
  %44 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %45 = load i32, i32* @hz, align 4
  %46 = sdiv i32 %45, 100
  %47 = call i64 @rum_pause(%struct.rum_softc* %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %54

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %29

54:                                               ; preds = %49, %29
  %55 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %56 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %40, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i64 @rum_bbp_busy(%struct.rum_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rum_write(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @rum_read(%struct.rum_softc*, i32) #1

declare dso_local i64 @rum_pause(%struct.rum_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
