; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_sbus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_sbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32, i32, i32, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SBUS_BURST_64 = common dso_local global i32 0, align 4
@SBUS_BURST_32 = common dso_local global i32 0, align 4
@SBUS_BURST_16 = common dso_local global i32 0, align 4
@CS4231_SBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cs4231_sbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4231_sbus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cs4231_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @M_DEVBUF, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.cs4231_softc* @malloc(i32 20, i32 %5, i32 %8)
  store %struct.cs4231_softc* %9, %struct.cs4231_softc** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %12 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %14 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sbus_get_burstsz(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SBUS_BURST_64, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %23 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %22, i32 0, i32 0
  store i32 64, i32* %23, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SBUS_BURST_32, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %31 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %30, i32 0, i32 0
  store i32 32, i32* %31, align 4
  br label %44

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SBUS_BURST_16, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %39 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %38, i32 0, i32 0
  store i32 16, i32* %39, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %42 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %29
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i32, i32* @CS4231_SBUS, align 4
  %47 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %48 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %50 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %52 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  %53 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %54 = call i32 @cs4231_attach_common(%struct.cs4231_softc* %53)
  ret i32 %54
}

declare dso_local %struct.cs4231_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @sbus_get_burstsz(i32) #1

declare dso_local i32 @cs4231_attach_common(%struct.cs4231_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
