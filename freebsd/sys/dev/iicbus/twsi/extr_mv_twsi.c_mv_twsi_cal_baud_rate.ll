; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_mv_twsi.c_mv_twsi_cal_baud_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_mv_twsi.c_mv_twsi_cal_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twsi_softc = type { i32 }
%struct.twsi_baud_rate = type { i32, i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twsi_softc*, i32, %struct.twsi_baud_rate*)* @mv_twsi_cal_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_twsi_cal_baud_rate(%struct.twsi_softc* %0, i32 %1, %struct.twsi_baud_rate* %2) #0 {
  %4 = alloca %struct.twsi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.twsi_baud_rate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.twsi_softc* %0, %struct.twsi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.twsi_baud_rate* %2, %struct.twsi_baud_rate** %6, align 8
  store i32 4, i32* %14, align 4
  store i32 4, i32* %13, align 4
  store i32 -1, i32* %10, align 4
  %15 = call i32 (...) @get_tclk()
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %44, %3
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i8* @TWSI_BAUD_RATE_RAW(i32 %24, i32 %25, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ABSSUB(i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %20

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i8* @TWSI_BAUD_RATE_RAW(i32 %48, i32 %49, i32 %50)
  %52 = load %struct.twsi_baud_rate*, %struct.twsi_baud_rate** %6, align 8
  %53 = getelementptr inbounds %struct.twsi_baud_rate, %struct.twsi_baud_rate* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @TWSI_BAUD_RATE_PARAM(i32 %54, i32 %55)
  %57 = load %struct.twsi_baud_rate*, %struct.twsi_baud_rate** %6, align 8
  %58 = getelementptr inbounds %struct.twsi_baud_rate, %struct.twsi_baud_rate* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.twsi_baud_rate*, %struct.twsi_baud_rate** %6, align 8
  %61 = getelementptr inbounds %struct.twsi_baud_rate, %struct.twsi_baud_rate* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.twsi_baud_rate*, %struct.twsi_baud_rate** %6, align 8
  %64 = getelementptr inbounds %struct.twsi_baud_rate, %struct.twsi_baud_rate* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  ret void
}

declare dso_local i32 @get_tclk(...) #1

declare dso_local i8* @TWSI_BAUD_RATE_RAW(i32, i32, i32) #1

declare dso_local i32 @ABSSUB(i32, i32) #1

declare dso_local i32 @TWSI_BAUD_RATE_PARAM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
