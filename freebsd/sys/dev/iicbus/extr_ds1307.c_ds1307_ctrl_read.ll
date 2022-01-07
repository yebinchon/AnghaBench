; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1307.c_ds1307_ctrl_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1307.c_ds1307_ctrl_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1307_softc = type { i32, i64 }

@DS1307_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot read from RTC.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds1307_softc*)* @ds1307_ctrl_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1307_ctrl_read(%struct.ds1307_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ds1307_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ds1307_softc* %0, %struct.ds1307_softc** %3, align 8
  %5 = load %struct.ds1307_softc*, %struct.ds1307_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load %struct.ds1307_softc*, %struct.ds1307_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @DS1307_CONTROL, align 4
  %11 = load %struct.ds1307_softc*, %struct.ds1307_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %11, i32 0, i32 1
  %13 = call i32 @ds1307_read1(i32 %9, i32 %10, i64* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.ds1307_softc*, %struct.ds1307_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @ds1307_read1(i32, i32, i64*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
