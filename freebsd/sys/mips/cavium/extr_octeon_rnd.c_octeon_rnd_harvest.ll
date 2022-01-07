; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_rnd.c_octeon_rnd_harvest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_rnd.c_octeon_rnd_harvest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_rnd_softc = type { i32, i32* }

@OCTEON_RND_WORDS = common dso_local global i32 0, align 4
@RANDOM_PURE_OCTEON = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @octeon_rnd_harvest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_rnd_harvest(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.octeon_rnd_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.octeon_rnd_softc*
  store %struct.octeon_rnd_softc* %6, %struct.octeon_rnd_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @OCTEON_RND_WORDS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = call i32 (...) @cvmx_rng_get_random64()
  %13 = load %struct.octeon_rnd_softc*, %struct.octeon_rnd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.octeon_rnd_softc, %struct.octeon_rnd_softc* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %12, i32* %18, align 4
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %7

22:                                               ; preds = %7
  %23 = load %struct.octeon_rnd_softc*, %struct.octeon_rnd_softc** %3, align 8
  %24 = getelementptr inbounds %struct.octeon_rnd_softc, %struct.octeon_rnd_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @RANDOM_PURE_OCTEON, align 4
  %27 = call i32 @random_harvest_queue(i32* %25, i32 8, i32 %26)
  %28 = load %struct.octeon_rnd_softc*, %struct.octeon_rnd_softc** %3, align 8
  %29 = getelementptr inbounds %struct.octeon_rnd_softc, %struct.octeon_rnd_softc* %28, i32 0, i32 0
  %30 = load i32, i32* @hz, align 4
  %31 = mul nsw i32 %30, 5
  %32 = load %struct.octeon_rnd_softc*, %struct.octeon_rnd_softc** %3, align 8
  %33 = call i32 @callout_reset(i32* %29, i32 %31, void (i8*)* @octeon_rnd_harvest, %struct.octeon_rnd_softc* %32)
  ret void
}

declare dso_local i32 @cvmx_rng_get_random64(...) #1

declare dso_local i32 @random_harvest_queue(i32*, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.octeon_rnd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
