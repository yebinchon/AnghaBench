; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_screamer_write_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_screamer_write_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davbus_softc = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"bad val\00", align 1
@DAVBUS_CODEC_CTRL = common dso_local global i32 0, align 4
@DAVBUS_CODEC_BUSY = common dso_local global i32 0, align 4
@SCREAMER_CODEC_EMSEL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davbus_softc*, i32, i32)* @screamer_write_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @screamer_write_locked(%struct.davbus_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.davbus_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.davbus_softc* %0, %struct.davbus_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 4095
  %11 = icmp eq i32 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %23, %3
  %15 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %16 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DAVBUS_CODEC_CTRL, align 4
  %19 = call i32 @bus_read_4(i32 %17, i32 %18)
  %20 = load i32, i32* @DAVBUS_CODEC_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @DELAY(i32 100)
  br label %14

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @SCREAMER_CODEC_EMSEL0, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %34 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DAVBUS_CODEC_CTRL, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @bus_write_4(i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %48, %25
  %40 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %41 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DAVBUS_CODEC_CTRL, align 4
  %44 = call i32 @bus_read_4(i32 %42, i32 %43)
  %45 = load i32, i32* @DAVBUS_CODEC_BUSY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = call i32 @DELAY(i32 100)
  br label %39

50:                                               ; preds = %39
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
