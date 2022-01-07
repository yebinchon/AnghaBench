; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TWE_MAX_UNITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twe_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.twe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.twe_softc* @device_get_softc(i32 %7)
  store %struct.twe_softc* %8, %struct.twe_softc** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 @debug_called(i32 4)
  %10 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %11 = call i32 @TWE_CONFIG_LOCK(%struct.twe_softc* %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %37, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @TWE_MAX_UNITS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %18 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %16
  %27 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @twe_detach_drive(%struct.twe_softc* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %33 = call i32 @TWE_CONFIG_UNLOCK(%struct.twe_softc* %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %49

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %12

40:                                               ; preds = %12
  %41 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %42 = call i32 @TWE_CONFIG_UNLOCK(%struct.twe_softc* %41)
  %43 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %44 = call i32 @TWE_IO_LOCK(%struct.twe_softc* %43)
  %45 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %46 = call i32 @twe_deinit(%struct.twe_softc* %45)
  %47 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %48 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %40, %31
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.twe_softc* @device_get_softc(i32) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_CONFIG_LOCK(%struct.twe_softc*) #1

declare dso_local i32 @twe_detach_drive(%struct.twe_softc*, i32) #1

declare dso_local i32 @TWE_CONFIG_UNLOCK(%struct.twe_softc*) #1

declare dso_local i32 @TWE_IO_LOCK(%struct.twe_softc*) #1

declare dso_local i32 @twe_deinit(%struct.twe_softc*) #1

declare dso_local i32 @TWE_IO_UNLOCK(%struct.twe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
