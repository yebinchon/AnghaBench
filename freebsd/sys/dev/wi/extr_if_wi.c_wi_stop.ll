; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i32, i32, i64, i64, i32, i64, i64 }

@WI_INT_EN = common dso_local global i32 0, align 4
@WI_CMD_DISABLE = common dso_local global i32 0, align 4
@WI_FLAGS_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wi_stop(%struct.wi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.wi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.wi_softc* %0, %struct.wi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %6 = call i32 @WI_LOCK_ASSERT(%struct.wi_softc* %5)
  %7 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %11
  %17 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %18 = load i32, i32* @WI_INT_EN, align 4
  %19 = call i32 @CSR_WRITE_2(%struct.wi_softc* %17, i32 %18, i32 0)
  %20 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %21 = load i32, i32* @WI_CMD_DISABLE, align 4
  %22 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %21, %24
  %26 = call i32 @wi_cmd(%struct.wi_softc* %20, i32 %25, i32 0, i32 0, i32 0)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %31 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %16
  br label %45

33:                                               ; preds = %11, %2
  %34 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %35 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %43 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %38, %33
  br label %45

45:                                               ; preds = %44, %32
  %46 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %47 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %46, i32 0, i32 4
  %48 = call i32 @callout_stop(i32* %47)
  %49 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %50 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %52 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @WI_FLAGS_RUNNING, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %56 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  ret void
}

declare dso_local i32 @WI_LOCK_ASSERT(%struct.wi_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.wi_softc*, i32, i32) #1

declare dso_local i32 @wi_cmd(%struct.wi_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
