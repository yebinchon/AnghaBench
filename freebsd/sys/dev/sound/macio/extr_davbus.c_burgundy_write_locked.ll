; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_burgundy_write_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_burgundy_write_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davbus_softc = type { i32 }

@BURGUNDY_CTRL_WRITE = common dso_local global i32 0, align 4
@BURGUNDY_CTRL_RESET = common dso_local global i32 0, align 4
@DAVBUS_CODEC_CTRL = common dso_local global i32 0, align 4
@DAVBUS_CODEC_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davbus_softc*, i32, i32)* @burgundy_write_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @burgundy_write_locked(%struct.davbus_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.davbus_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.davbus_softc* %0, %struct.davbus_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 16711680
  %14 = ashr i32 %13, 16
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 65280
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %72, %3
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %21
  %28 = load i32, i32* @BURGUNDY_CTRL_WRITE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 %29, 12
  %31 = or i32 %28, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = shl i32 %35, 10
  %37 = or i32 %31, %36
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %37, %39
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 255
  %43 = or i32 %40, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %27
  %48 = load i32, i32* @BURGUNDY_CTRL_RESET, align 4
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %27
  %52 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %53 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DAVBUS_CODEC_CTRL, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @bus_write_4(i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %67, %51
  %59 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %60 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DAVBUS_CODEC_CTRL, align 4
  %63 = call i32 @bus_read_4(i32 %61, i32 %62)
  %64 = load i32, i32* @DAVBUS_CODEC_BUSY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = call i32 @DELAY(i32 1)
  br label %58

69:                                               ; preds = %58
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %70, 8
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %21

75:                                               ; preds = %21
  ret void
}

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
