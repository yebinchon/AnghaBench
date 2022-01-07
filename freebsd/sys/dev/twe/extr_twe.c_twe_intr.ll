; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }

@TWE_STATUS_HOST_INTERRUPT = common dso_local global i32 0, align 4
@TWE_STATUS_ATTENTION_INTERRUPT = common dso_local global i32 0, align 4
@TWE_STATUS_COMMAND_INTERRUPT = common dso_local global i32 0, align 4
@TWE_STATUS_RESPONSE_INTERRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @twe_intr(%struct.twe_softc* %0) #0 {
  %2 = alloca %struct.twe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %2, align 8
  %4 = call i32 @debug_called(i32 4)
  %5 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %6 = call i32 @TWE_STATUS(%struct.twe_softc* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @twe_check_bits(%struct.twe_softc* %7, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @TWE_STATUS_HOST_INTERRUPT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %16 = call i32 @twe_host_intr(%struct.twe_softc* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @TWE_STATUS_ATTENTION_INTERRUPT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %24 = call i32 @twe_attention_intr(%struct.twe_softc* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @TWE_STATUS_COMMAND_INTERRUPT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %32 = call i32 @twe_command_intr(%struct.twe_softc* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @TWE_STATUS_RESPONSE_INTERRUPT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %40 = call i32 @twe_done(%struct.twe_softc* %39, i32 1)
  br label %41

41:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_STATUS(%struct.twe_softc*) #1

declare dso_local i32 @twe_check_bits(%struct.twe_softc*, i32) #1

declare dso_local i32 @twe_host_intr(%struct.twe_softc*) #1

declare dso_local i32 @twe_attention_intr(%struct.twe_softc*) #1

declare dso_local i32 @twe_command_intr(%struct.twe_softc*) #1

declare dso_local i32 @twe_done(%struct.twe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
