; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simplebus.c_simplebus_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simplebus.c_simplebus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simplebus_softc = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @simplebus_init(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.simplebus_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.simplebus_softc* @device_get_softc(i32 %6)
  store %struct.simplebus_softc* %7, %struct.simplebus_softc** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @ofw_bus_get_node(i32 %11)
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %16 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %19 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %21 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %20, i32 0, i32 0
  store i32 2, i32* %21, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %24 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %23, i32 0, i32 0
  %25 = call i32 @OF_getencprop(i64 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %24, i32 4)
  %26 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %27 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %30 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %29, i32 0, i32 1
  %31 = call i32 @OF_getencprop(i64 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %30, i32 4)
  ret void
}

declare dso_local %struct.simplebus_softc* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
