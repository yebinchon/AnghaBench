; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_dequeue_aen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_dequeue_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i64, i64, i32* }

@TWE_AEN_QUEUE_EMPTY = common dso_local global i32 0, align 4
@TWE_Q_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twe_softc*)* @twe_dequeue_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_dequeue_aen(%struct.twe_softc* %0) #0 {
  %2 = alloca %struct.twe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %2, align 8
  %4 = call i32 @debug_called(i32 4)
  %5 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %6 = call i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc* %5)
  %7 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %8 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %11 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @TWE_AEN_QUEUE_EMPTY, align 4
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %18 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %21 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  %25 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %26 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  %29 = load i32, i32* @TWE_Q_LENGTH, align 4
  %30 = sext i32 %29 to i64
  %31 = urem i64 %28, %30
  %32 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %33 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %16, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
