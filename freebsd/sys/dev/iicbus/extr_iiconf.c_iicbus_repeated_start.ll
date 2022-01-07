; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iicbus_repeated_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iicbus_repeated_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbus_softc = type { i64 }

@IIC_ESTATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iicbus_repeated_start(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iicbus_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @device_get_softc(i32 %10)
  %12 = inttoptr i64 %11 to %struct.iicbus_softc*
  store %struct.iicbus_softc* %12, %struct.iicbus_softc** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.iicbus_softc*, %struct.iicbus_softc** %8, align 8
  %14 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @IIC_ESTATUS, align 4
  store i32 %18, i32* %4, align 4
  br label %35

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @device_get_parent(i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @IICBUS_REPEATED_START(i32 %21, i64 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.iicbus_softc*, %struct.iicbus_softc** %8, align 8
  %29 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %33

30:                                               ; preds = %19
  %31 = load %struct.iicbus_softc*, %struct.iicbus_softc** %8, align 8
  %32 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %17
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @IICBUS_REPEATED_START(i32, i64, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
