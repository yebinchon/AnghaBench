; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_kbd.c_akbd_repeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_kbd.c_akbd_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_kbd_softc = type { i32, i32*, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_6__*, i32, i32)* }

@KBDIO_KEYINPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @akbd_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @akbd_repeat(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.adb_kbd_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.adb_kbd_softc*
  store %struct.adb_kbd_softc* %6, %struct.adb_kbd_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %8 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %7, i32 0, i32 5
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %11 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 7
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  %15 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %16 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, 128
  %19 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %20 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %23 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  store i32 %18, i32* %27, align 4
  %28 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %29 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %32 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %35 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32 %30, i32* %39, align 4
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %14, %1
  %41 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %42 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %41, i32 0, i32 5
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %48 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %47, i32 0, i32 3
  %49 = call i64 @KBD_IS_ACTIVE(%struct.TYPE_6__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %53 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %52, i32 0, i32 3
  %54 = call i64 @KBD_IS_BUSY(%struct.TYPE_6__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %58 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %60, align 8
  %62 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %63 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %62, i32 0, i32 3
  %64 = load i32, i32* @KBDIO_KEYINPUT, align 4
  %65 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %66 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %61(%struct.TYPE_6__* %63, i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %56, %51, %46, %40
  %72 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %73 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %72, i32 0, i32 4
  %74 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %75 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ms_to_ticks(i32 %77)
  %79 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %3, align 8
  %80 = call i32 @callout_reset(i32* %73, i32 %78, void (i8*)* @akbd_repeat, %struct.adb_kbd_softc* %79)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @KBD_IS_ACTIVE(%struct.TYPE_6__*) #1

declare dso_local i64 @KBD_IS_BUSY(%struct.TYPE_6__*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.adb_kbd_softc*) #1

declare dso_local i32 @ms_to_ticks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
