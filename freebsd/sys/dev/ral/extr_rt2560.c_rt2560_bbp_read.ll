; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_bbp_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_bbp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32 }

@RT2560_BBPCSR = common dso_local global i32 0, align 4
@RT2560_BBP_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not read from BBP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2560_softc*, i32)* @rt2560_bbp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2560_bbp_read(%struct.rt2560_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2560_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.rt2560_softc*, %struct.rt2560_softc** %4, align 8
  %13 = load i32, i32* @RT2560_BBPCSR, align 4
  %14 = call i32 @RAL_READ(%struct.rt2560_softc* %12, i32 %13)
  %15 = load i32, i32* @RT2560_BBP_BUSY, align 4
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
  %28 = load %struct.rt2560_softc*, %struct.rt2560_softc** %4, align 8
  %29 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %65

32:                                               ; preds = %24
  %33 = load i32, i32* @RT2560_BBP_BUSY, align 4
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %33, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.rt2560_softc*, %struct.rt2560_softc** %4, align 8
  %38 = load i32, i32* @RT2560_BBPCSR, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @RAL_WRITE(%struct.rt2560_softc* %37, i32 %38, i32 %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %57, %32
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 100
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.rt2560_softc*, %struct.rt2560_softc** %4, align 8
  %46 = load i32, i32* @RT2560_BBPCSR, align 4
  %47 = call i32 @RAL_READ(%struct.rt2560_softc* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @RT2560_BBP_BUSY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 255
  store i32 %54, i32* %3, align 4
  br label %65

55:                                               ; preds = %44
  %56 = call i32 @DELAY(i32 1)
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %41

60:                                               ; preds = %41
  %61 = load %struct.rt2560_softc*, %struct.rt2560_softc** %4, align 8
  %62 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %52, %27
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @RAL_READ(%struct.rt2560_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2560_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
