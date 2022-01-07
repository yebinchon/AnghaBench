; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_atkbdc.c_atkbdc_kbd_queue_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_atkbdc.c_atkbdc_kbd_queue_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbdc_softc = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32* }

@FIFOSZ = common dso_local global i32 0, align 4
@KBDS_KBD_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDO_KBD_OUTFULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"atkbd data buffer full\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbdc_softc*, i32)* @atkbdc_kbd_queue_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbdc_kbd_queue_data(%struct.atkbdc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.atkbdc_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.atkbdc_softc* %0, %struct.atkbdc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %5, i32 0, i32 3
  %7 = call i32 @pthread_mutex_isowned_np(i32* %6)
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FIFOSZ, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %22 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32 %16, i32* %25, align 4
  %26 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %27 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  %31 = load i32, i32* @FIFOSZ, align 4
  %32 = sext i32 %31 to i64
  %33 = urem i64 %30, %32
  %34 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %35 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i64 %33, i64* %36, align 8
  %37 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %38 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %43 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @KBDO_KBD_OUTFULL, align 4
  %48 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %49 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %54

52:                                               ; preds = %2
  %53 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %15
  %55 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %56 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FIFOSZ, align 4
  %60 = icmp slt i32 %58, %59
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_isowned_np(i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
