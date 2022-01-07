; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_terminate_stroke.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_terminate_stroke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp_softc = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }

@ATSF_ZOMBIE = common dso_local global i32 0, align 4
@atp_stroke_maturity_threshold = common dso_local global i64 0, align 8
@ATP_ZOMBIES_EXIST = common dso_local global i32 0, align 4
@ATP_ZOMBIE_STROKE_REAP_INTERVAL = common dso_local global i32 0, align 4
@atp_reap_sibling_zombies = common dso_local global i32 0, align 4
@ATP_STROKE_SLIDE = common dso_local global i64 0, align 8
@ATP_DOUBLE_TAP_DRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atp_softc*, %struct.TYPE_4__*)* @atp_terminate_stroke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atp_terminate_stroke(%struct.atp_softc* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.atp_softc*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.atp_softc* %0, %struct.atp_softc** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ATSF_ZOMBIE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %51

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @atp_stroke_maturity_threshold, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = call i32 @atp_free_stroke(%struct.atp_softc* %19, %struct.TYPE_4__* %20)
  br label %51

22:                                               ; preds = %12
  %23 = load i32, i32* @ATSF_ZOMBIE, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @ATP_ZOMBIES_EXIST, align 4
  %29 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %30 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %34 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %33, i32 0, i32 1
  %35 = load i32, i32* @ATP_ZOMBIE_STROKE_REAP_INTERVAL, align 4
  %36 = load i32, i32* @atp_reap_sibling_zombies, align 4
  %37 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %38 = call i32 @callout_reset(i32* %34, i32 %35, i32 %36, %struct.atp_softc* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ATP_STROKE_SLIDE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %22
  %45 = load i32, i32* @ATP_DOUBLE_TAP_DRAG, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %48 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %11, %18, %44, %22
  ret void
}

declare dso_local i32 @atp_free_stroke(%struct.atp_softc*, %struct.TYPE_4__*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.atp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
