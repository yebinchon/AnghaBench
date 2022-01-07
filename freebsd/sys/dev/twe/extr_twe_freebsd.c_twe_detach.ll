; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }

@TWE_STATE_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TWE_STATE_DETACHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twe_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.twe_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.twe_softc* @device_get_softc(i32 %5)
  store %struct.twe_softc* %6, %struct.twe_softc** %4, align 8
  %7 = call i32 @debug_called(i32 4)
  %8 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %9 = call i32 @TWE_IO_LOCK(%struct.twe_softc* %8)
  %10 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %11 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TWE_STATE_OPEN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %18 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %17)
  %19 = load i32, i32* @EBUSY, align 4
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load i32, i32* @TWE_STATE_DETACHING, align 4
  %22 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %23 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %27 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @twe_shutdown(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %20
  %32 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %33 = call i32 @TWE_IO_LOCK(%struct.twe_softc* %32)
  %34 = load i32, i32* @TWE_STATE_DETACHING, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %37 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %41 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %40)
  %42 = load i32, i32* @EBUSY, align 4
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %20
  %44 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %45 = call i32 @twe_free(%struct.twe_softc* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %31, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.twe_softc* @device_get_softc(i32) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_IO_LOCK(%struct.twe_softc*) #1

declare dso_local i32 @TWE_IO_UNLOCK(%struct.twe_softc*) #1

declare dso_local i64 @twe_shutdown(i32) #1

declare dso_local i32 @twe_free(%struct.twe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
