; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_bbp_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_bbp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i32 }

@RT2661_PHY_CSR3 = common dso_local global i32 0, align 4
@RT2661_BBP_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not read from BBP\0A\00", align 1
@RT2661_BBP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2661_softc*, i32)* @rt2661_bbp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2661_bbp_read(%struct.rt2661_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2661_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.rt2661_softc*, %struct.rt2661_softc** %4, align 8
  %13 = load i32, i32* @RT2661_PHY_CSR3, align 4
  %14 = call i32 @RAL_READ(%struct.rt2661_softc* %12, i32 %13)
  %15 = load i32, i32* @RT2661_BBP_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %24

19:                                               ; preds = %11
  %20 = call i32 @DELAY(i32 1)
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

24:                                               ; preds = %18, %8
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 100
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.rt2661_softc*, %struct.rt2661_softc** %4, align 8
  %29 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %67

32:                                               ; preds = %24
  %33 = load i32, i32* @RT2661_BBP_BUSY, align 4
  %34 = load i32, i32* @RT2661_BBP_READ, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 8
  %38 = or i32 %35, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.rt2661_softc*, %struct.rt2661_softc** %4, align 8
  %40 = load i32, i32* @RT2661_PHY_CSR3, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @RAL_WRITE(%struct.rt2661_softc* %39, i32 %40, i32 %41)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %59, %32
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 100
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.rt2661_softc*, %struct.rt2661_softc** %4, align 8
  %48 = load i32, i32* @RT2661_PHY_CSR3, align 4
  %49 = call i32 @RAL_READ(%struct.rt2661_softc* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @RT2661_BBP_BUSY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 255
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %46
  %58 = call i32 @DELAY(i32 1)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %43

62:                                               ; preds = %43
  %63 = load %struct.rt2661_softc*, %struct.rt2661_softc** %4, align 8
  %64 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %54, %27
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @RAL_READ(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2661_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
