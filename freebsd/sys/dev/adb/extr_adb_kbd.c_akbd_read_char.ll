; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_kbd.c_akbd_read_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_kbd.c_akbd_read_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_kbd_softc = type { i64, i32*, i32, i32*, i32, i32 }

@NOKEY = common dso_local global i32 0, align 4
@K_CODE = common dso_local global i64 0, align 8
@K_RAW = common dso_local global i64 0, align 8
@SCAN_PREFIX = common dso_local global i32 0, align 4
@SCAN_PREFIX_CTL = common dso_local global i32 0, align 4
@SCAN_PREFIX_E0 = common dso_local global i32 0, align 4
@SCAN_PREFIX_SHIFT = common dso_local global i32 0, align 4
@SCAN_RELEASE = common dso_local global i32 0, align 4
@adb_to_at_scancode_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @akbd_read_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @akbd_read_char(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adb_kbd_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.adb_kbd_softc*
  store %struct.adb_kbd_softc* %11, %struct.adb_kbd_softc** %6, align 8
  %12 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %6, align 8
  %13 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %12, i32 0, i32 4
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %6, align 8
  %16 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %6, align 8
  %24 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %23, i32 0, i32 5
  %25 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %6, align 8
  %26 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %25, i32 0, i32 4
  %27 = call i32 @cv_wait(i32* %24, i32* %26)
  br label %28

28:                                               ; preds = %22, %19, %2
  %29 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %6, align 8
  %30 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %6, align 8
  %35 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %34, i32 0, i32 4
  %36 = call i32 @mtx_unlock(i32* %35)
  %37 = load i32, i32* @NOKEY, align 4
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %28
  %39 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %6, align 8
  %40 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %65, %38
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %6, align 8
  %47 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %6, align 8
  %52 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %6, align 8
  %59 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %57, i32* %64, align 4
  br label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %44

68:                                               ; preds = %44
  %69 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %6, align 8
  %70 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %7, align 4
  %74 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %6, align 8
  %75 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %74, i32 0, i32 4
  %76 = call i32 @mtx_unlock(i32* %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %68, %33
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
