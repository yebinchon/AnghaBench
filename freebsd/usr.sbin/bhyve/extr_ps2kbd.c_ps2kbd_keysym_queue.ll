; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_ps2kbd.c_ps2kbd_keysym_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_ps2kbd.c_ps2kbd_keysym_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extended_translation = type { i64, i32, i32 }
%struct.ps2kbd_softc = type { i32 }

@ascii_translations = common dso_local global i32* null, align 8
@extended_translations = common dso_local global %struct.extended_translation* null, align 8
@SCANCODE_E0_PREFIX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unhandled ps2 keyboard keysym 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps2kbd_softc*, i32, i32)* @ps2kbd_keysym_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps2kbd_keysym_queue(%struct.ps2kbd_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ps2kbd_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.extended_translation*, align 8
  store %struct.ps2kbd_softc* %0, %struct.ps2kbd_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %11, i32 0, i32 0
  %13 = call i32 @pthread_mutex_isowned_np(i32* %12)
  %14 = call i32 @assert(i32 %13)
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32*, i32** @ascii_translations, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %52

23:                                               ; preds = %3
  %24 = load %struct.extended_translation*, %struct.extended_translation** @extended_translations, align 8
  %25 = getelementptr inbounds %struct.extended_translation, %struct.extended_translation* %24, i64 0
  store %struct.extended_translation* %25, %struct.extended_translation** %10, align 8
  br label %26

26:                                               ; preds = %48, %23
  %27 = load %struct.extended_translation*, %struct.extended_translation** %10, align 8
  %28 = getelementptr inbounds %struct.extended_translation, %struct.extended_translation* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.extended_translation*, %struct.extended_translation** %10, align 8
  %35 = getelementptr inbounds %struct.extended_translation, %struct.extended_translation* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.extended_translation*, %struct.extended_translation** %10, align 8
  %40 = getelementptr inbounds %struct.extended_translation, %struct.extended_translation* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = load %struct.extended_translation*, %struct.extended_translation** %10, align 8
  %43 = getelementptr inbounds %struct.extended_translation, %struct.extended_translation* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SCANCODE_E0_PREFIX, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %51

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.extended_translation*, %struct.extended_translation** %10, align 8
  %50 = getelementptr inbounds %struct.extended_translation, %struct.extended_translation* %49, i32 1
  store %struct.extended_translation* %50, %struct.extended_translation** %10, align 8
  br label %26

51:                                               ; preds = %38, %26
  br label %52

52:                                               ; preds = %51, %17
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %75

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %64 = call i32 @fifo_put(%struct.ps2kbd_softc* %63, i32 224)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %70 = call i32 @fifo_put(%struct.ps2kbd_softc* %69, i32 240)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @fifo_put(%struct.ps2kbd_softc* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %55
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_isowned_np(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @fifo_put(%struct.ps2kbd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
