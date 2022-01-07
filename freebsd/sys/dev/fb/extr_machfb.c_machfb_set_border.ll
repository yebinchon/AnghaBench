; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_set_border.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_set_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machfb_softc = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @machfb_set_border to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_set_border(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.machfb_softc*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.machfb_softc*
  store %struct.machfb_softc* %7, %struct.machfb_softc** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %11 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %14 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @machfb_fill_rect(i32* %8, i32 %9, i64 0, i64 0, i64 %12, i64 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %20 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %23 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %27 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %30 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @machfb_fill_rect(i32* %17, i32 %18, i64 0, i64 %25, i64 %28, i64 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %36 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %39 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @machfb_fill_rect(i32* %33, i32 %34, i64 0, i64 0, i64 %37, i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %45 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %48 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %52 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %55 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @machfb_fill_rect(i32* %42, i32 %43, i64 %50, i64 0, i64 %53, i64 %56)
  ret i32 0
}

declare dso_local i32 @machfb_fill_rect(i32*, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
