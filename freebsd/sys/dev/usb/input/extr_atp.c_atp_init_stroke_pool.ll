; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_init_stroke_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_init_stroke_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp_softc = type { i32*, i32, i64, i32 }

@ATP_MAX_STROKES = common dso_local global i64 0, align 8
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atp_softc*)* @atp_init_stroke_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atp_init_stroke_pool(%struct.atp_softc* %0) #0 {
  %2 = alloca %struct.atp_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.atp_softc* %0, %struct.atp_softc** %2, align 8
  %4 = load %struct.atp_softc*, %struct.atp_softc** %2, align 8
  %5 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %4, i32 0, i32 1
  %6 = call i32 @TAILQ_INIT(i32* %5)
  %7 = load %struct.atp_softc*, %struct.atp_softc** %2, align 8
  %8 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %7, i32 0, i32 3
  %9 = call i32 @TAILQ_INIT(i32* %8)
  %10 = load %struct.atp_softc*, %struct.atp_softc** %2, align 8
  %11 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.atp_softc*, %struct.atp_softc** %2, align 8
  %13 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %12, i32 0, i32 0
  %14 = call i32 @memset(i32** %13, i32 0, i32 8)
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @ATP_MAX_STROKES, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load %struct.atp_softc*, %struct.atp_softc** %2, align 8
  %21 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %20, i32 0, i32 1
  %22 = load %struct.atp_softc*, %struct.atp_softc** %2, align 8
  %23 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* @entry, align 4
  %28 = call i32 @TAILQ_INSERT_TAIL(i32* %21, i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %19
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %15

32:                                               ; preds = %15
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
