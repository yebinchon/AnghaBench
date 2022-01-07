; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_davbus_cint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_davbus_cint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davbus_softc = type { i32 (%struct.davbus_softc*, i32)*, i32, i32, i32 (%struct.davbus_softc*, i32)* }

@DAVBUS_SOUND_CTRL = common dso_local global i32 0, align 4
@DAVBUS_PORTCHG = common dso_local global i32 0, align 4
@DAVBUS_CODEC_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @davbus_cint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davbus_cint(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.davbus_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.davbus_softc*
  store %struct.davbus_softc* %8, %struct.davbus_softc** %3, align 8
  %9 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %10 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %9, i32 0, i32 1
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %13 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DAVBUS_SOUND_CTRL, align 4
  %16 = call i32 @bus_read_4(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DAVBUS_PORTCHG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %1
  %22 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %23 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DAVBUS_CODEC_STATUS, align 4
  %26 = call i32 @bus_read_4(i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %28 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %27, i32 0, i32 0
  %29 = load i32 (%struct.davbus_softc*, i32)*, i32 (%struct.davbus_softc*, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.davbus_softc*, i32)* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %21
  %32 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %33 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %32, i32 0, i32 3
  %34 = load i32 (%struct.davbus_softc*, i32)*, i32 (%struct.davbus_softc*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.davbus_softc*, i32)* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %38 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %37, i32 0, i32 0
  %39 = load i32 (%struct.davbus_softc*, i32)*, i32 (%struct.davbus_softc*, i32)** %38, align 8
  %40 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 %39(%struct.davbus_softc* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %44 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %43, i32 0, i32 3
  %45 = load i32 (%struct.davbus_softc*, i32)*, i32 (%struct.davbus_softc*, i32)** %44, align 8
  %46 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 %45(%struct.davbus_softc* %46, i32 %47)
  br label %49

49:                                               ; preds = %36, %31, %21
  %50 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %51 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DAVBUS_SOUND_CTRL, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @bus_write_4(i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %1
  %57 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %58 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %57, i32 0, i32 1
  %59 = call i32 @mtx_unlock(i32* %58)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
