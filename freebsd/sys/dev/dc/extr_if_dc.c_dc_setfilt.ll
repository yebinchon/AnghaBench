; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_setfilt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_setfilt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*)* @dc_setfilt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_setfilt(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %3 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %4 = call i64 @DC_IS_INTEL(%struct.dc_softc* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %8 = call i64 @DC_IS_MACRONIX(%struct.dc_softc* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %12 = call i64 @DC_IS_PNIC(%struct.dc_softc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %16 = call i64 @DC_IS_PNICII(%struct.dc_softc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %20 = call i64 @DC_IS_DAVICOM(%struct.dc_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %24 = call i64 @DC_IS_CONEXANT(%struct.dc_softc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %18, %14, %10, %6, %1
  %27 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %28 = call i32 @dc_setfilt_21143(%struct.dc_softc* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %31 = call i64 @DC_IS_ASIX(%struct.dc_softc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %35 = call i32 @dc_setfilt_asix(%struct.dc_softc* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %38 = call i64 @DC_IS_ADMTEK(%struct.dc_softc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %42 = call i32 @dc_setfilt_admtek(%struct.dc_softc* %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %45 = call i64 @DC_IS_ULI(%struct.dc_softc* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %49 = call i32 @dc_setfilt_uli(%struct.dc_softc* %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %52 = call i64 @DC_IS_XIRCOM(%struct.dc_softc* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %56 = call i32 @dc_setfilt_xircom(%struct.dc_softc* %55)
  br label %57

57:                                               ; preds = %54, %50
  ret void
}

declare dso_local i64 @DC_IS_INTEL(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_MACRONIX(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_PNIC(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_PNICII(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_DAVICOM(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_CONEXANT(%struct.dc_softc*) #1

declare dso_local i32 @dc_setfilt_21143(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_ASIX(%struct.dc_softc*) #1

declare dso_local i32 @dc_setfilt_asix(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_ADMTEK(%struct.dc_softc*) #1

declare dso_local i32 @dc_setfilt_admtek(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_ULI(%struct.dc_softc*) #1

declare dso_local i32 @dc_setfilt_uli(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_XIRCOM(%struct.dc_softc*) #1

declare dso_local i32 @dc_setfilt_xircom(%struct.dc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
