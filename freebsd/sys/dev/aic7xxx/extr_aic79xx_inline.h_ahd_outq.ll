; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_inline.h_ahd_outq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_inline.h_ahd_outq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, i64, i32)* @ahd_outq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_outq(%struct.ahd_softc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 255
  %11 = call i32 @ahd_outb(%struct.ahd_softc* %7, i64 %8, i32 %10)
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add nsw i64 %13, 1
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = call i32 @ahd_outb(%struct.ahd_softc* %12, i64 %14, i32 %17)
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %20, 2
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = call i32 @ahd_outb(%struct.ahd_softc* %19, i64 %21, i32 %24)
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %27, 3
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 24
  %31 = and i32 %30, 255
  %32 = call i32 @ahd_outb(%struct.ahd_softc* %26, i64 %28, i32 %31)
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %34, 4
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 32
  %38 = and i32 %37, 255
  %39 = call i32 @ahd_outb(%struct.ahd_softc* %33, i64 %35, i32 %38)
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %41, 5
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 40
  %45 = and i32 %44, 255
  %46 = call i32 @ahd_outb(%struct.ahd_softc* %40, i64 %42, i32 %45)
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %48, 6
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 48
  %52 = and i32 %51, 255
  %53 = call i32 @ahd_outb(%struct.ahd_softc* %47, i64 %49, i32 %52)
  %54 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %55, 7
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 56
  %59 = and i32 %58, 255
  %60 = call i32 @ahd_outb(%struct.ahd_softc* %54, i64 %56, i32 %59)
  ret void
}

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
