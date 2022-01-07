; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"z8530, channel %c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @z8530_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z8530_bus_probe(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 3
  %9 = call i32 @z8530_probe(%struct.TYPE_2__* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 0
  store i32 3, i32* %16, align 4
  %17 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %18 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %20 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = add nsw i32 %23, 65
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %6, align 1
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %27 = load i8, i8* %6, align 1
  %28 = call i32 @snprintf(i8* %26, i32 80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8 signext %27)
  %29 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %30 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %33 = call i32 @device_set_desc_copy(i32 %31, i8* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %14, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @z8530_probe(%struct.TYPE_2__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
