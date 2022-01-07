; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_ps2kbd.c_ps2kbd_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_ps2kbd.c_ps2kbd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2kbd_softc = type { i32, i32, i32 }

@PS2KC_ACK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unhandled ps2 keyboard current command byte 0x%02x\0A\00", align 1
@PS2KC_BAT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unhandled ps2 keyboard command 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ps2kbd_write(%struct.ps2kbd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ps2kbd_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ps2kbd_softc* %0, %struct.ps2kbd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %5, i32 0, i32 2
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  %8 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %28 [
    i32 128, label %16
    i32 129, label %20
    i32 130, label %24
  ]

16:                                               ; preds = %12
  %17 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %18 = load i32, i32* @PS2KC_ACK, align 4
  %19 = call i32 @fifo_put(%struct.ps2kbd_softc* %17, i32 %18)
  br label %32

20:                                               ; preds = %12
  %21 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %22 = load i32, i32* @PS2KC_ACK, align 4
  %23 = call i32 @fifo_put(%struct.ps2kbd_softc* %21, i32 %22)
  br label %32

24:                                               ; preds = %12
  %25 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %26 = load i32, i32* @PS2KC_ACK, align 4
  %27 = call i32 @fifo_put(%struct.ps2kbd_softc* %25, i32 %26)
  br label %32

28:                                               ; preds = %12
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %24, %20, %16
  %33 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %101

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %96 [
    i32 0, label %37
    i32 132, label %41
    i32 135, label %50
    i32 133, label %56
    i32 128, label %64
    i32 131, label %71
    i32 129, label %79
    i32 134, label %86
    i32 130, label %89
  ]

37:                                               ; preds = %35
  %38 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %39 = load i32, i32* @PS2KC_ACK, align 4
  %40 = call i32 @fifo_put(%struct.ps2kbd_softc* %38, i32 %39)
  br label %100

41:                                               ; preds = %35
  %42 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %43 = call i32 @fifo_reset(%struct.ps2kbd_softc* %42)
  %44 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %45 = load i32, i32* @PS2KC_ACK, align 4
  %46 = call i32 @fifo_put(%struct.ps2kbd_softc* %44, i32 %45)
  %47 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %48 = load i32, i32* @PS2KC_BAT_SUCCESS, align 4
  %49 = call i32 @fifo_put(%struct.ps2kbd_softc* %47, i32 %48)
  br label %100

50:                                               ; preds = %35
  %51 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %54 = load i32, i32* @PS2KC_ACK, align 4
  %55 = call i32 @fifo_put(%struct.ps2kbd_softc* %53, i32 %54)
  br label %100

56:                                               ; preds = %35
  %57 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %60 = call i32 @fifo_reset(%struct.ps2kbd_softc* %59)
  %61 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %62 = load i32, i32* @PS2KC_ACK, align 4
  %63 = call i32 @fifo_put(%struct.ps2kbd_softc* %61, i32 %62)
  br label %100

64:                                               ; preds = %35
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %69 = load i32, i32* @PS2KC_ACK, align 4
  %70 = call i32 @fifo_put(%struct.ps2kbd_softc* %68, i32 %69)
  br label %100

71:                                               ; preds = %35
  %72 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %73 = load i32, i32* @PS2KC_ACK, align 4
  %74 = call i32 @fifo_put(%struct.ps2kbd_softc* %72, i32 %73)
  %75 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %76 = call i32 @fifo_put(%struct.ps2kbd_softc* %75, i32 171)
  %77 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %78 = call i32 @fifo_put(%struct.ps2kbd_softc* %77, i32 131)
  br label %100

79:                                               ; preds = %35
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %84 = load i32, i32* @PS2KC_ACK, align 4
  %85 = call i32 @fifo_put(%struct.ps2kbd_softc* %83, i32 %84)
  br label %100

86:                                               ; preds = %35
  %87 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %88 = call i32 @fifo_put(%struct.ps2kbd_softc* %87, i32 134)
  br label %100

89:                                               ; preds = %35
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %92 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %94 = load i32, i32* @PS2KC_ACK, align 4
  %95 = call i32 @fifo_put(%struct.ps2kbd_softc* %93, i32 %94)
  br label %100

96:                                               ; preds = %35
  %97 = load i32, i32* @stderr, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %96, %89, %86, %79, %71, %64, %56, %50, %41, %37
  br label %101

101:                                              ; preds = %100, %32
  %102 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %102, i32 0, i32 2
  %104 = call i32 @pthread_mutex_unlock(i32* %103)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @fifo_put(%struct.ps2kbd_softc*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @fifo_reset(%struct.ps2kbd_softc*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
