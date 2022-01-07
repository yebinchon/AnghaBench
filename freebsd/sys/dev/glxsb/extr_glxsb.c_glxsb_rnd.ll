; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_rnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_rnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxsb_softc = type { i32, i32, i32 }

@SB_RANDOM_NUM_STATUS = common dso_local global i32 0, align 4
@SB_RNS_TRNG_VALID = common dso_local global i32 0, align 4
@SB_RANDOM_NUM = common dso_local global i32 0, align 4
@RANDOM_PURE_GLXSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @glxsb_rnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glxsb_rnd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.glxsb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.glxsb_softc*
  store %struct.glxsb_softc* %7, %struct.glxsb_softc** %3, align 8
  %8 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %9 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SB_RANDOM_NUM_STATUS, align 4
  %12 = call i32 @bus_read_4(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SB_RNS_TRNG_VALID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %19 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SB_RANDOM_NUM, align 4
  %22 = call i32 @bus_read_4(i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @RANDOM_PURE_GLXSB, align 4
  %24 = call i32 @random_harvest_queue(i32* %5, i32 4, i32 %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %27 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %26, i32 0, i32 1
  %28 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %32 = call i32 @callout_reset(i32* %27, i32 %30, void (i8*)* @glxsb_rnd, %struct.glxsb_softc* %31)
  ret void
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @random_harvest_queue(i32*, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.glxsb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
