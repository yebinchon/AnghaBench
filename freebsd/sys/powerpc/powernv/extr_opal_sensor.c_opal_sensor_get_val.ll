; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_sensor.c_opal_sensor_get_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_sensor.c_opal_sensor_get_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_sensor_softc = type { i32 }
%struct.opal_msg = type { i32* }

@OPAL_SENSOR_READ = common dso_local global i32 0, align 4
@OPAL_ASYNC_COMPLETION = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_sensor_softc*, i32, i32*)* @opal_sensor_get_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_sensor_get_val(%struct.opal_sensor_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.opal_sensor_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.opal_msg, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.opal_sensor_softc* %0, %struct.opal_sensor_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = call i32 (...) @opal_alloc_async_token()
  store i32 %11, i32* %10, align 4
  %12 = load %struct.opal_sensor_softc*, %struct.opal_sensor_softc** %4, align 8
  %13 = call i32 @SENSOR_LOCK(%struct.opal_sensor_softc* %12)
  %14 = load i32, i32* @OPAL_SENSOR_READ, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @vtophys(i32* %8)
  %18 = call i32 @opal_call(i32 %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @OPAL_ASYNC_COMPLETION, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %3
  %23 = call i32 @DELAY(i32 100)
  %24 = call i32 @bzero(%struct.opal_msg* %7, i32 8)
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @opal_wait_completion(%struct.opal_msg* %7, i32 8, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @OPAL_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %7, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %22
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.opal_sensor_softc*, %struct.opal_sensor_softc** %4, align 8
  %38 = call i32 @SENSOR_UNLOCK(%struct.opal_sensor_softc* %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @OPAL_SUCCESS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @EIO, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @opal_free_async_token(i32 %48)
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @opal_alloc_async_token(...) #1

declare dso_local i32 @SENSOR_LOCK(%struct.opal_sensor_softc*) #1

declare dso_local i32 @opal_call(i32, i32, i32, i32) #1

declare dso_local i32 @vtophys(i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bzero(%struct.opal_msg*, i32) #1

declare dso_local i32 @opal_wait_completion(%struct.opal_msg*, i32, i32) #1

declare dso_local i32 @SENSOR_UNLOCK(%struct.opal_sensor_softc*) #1

declare dso_local i32 @opal_free_async_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
