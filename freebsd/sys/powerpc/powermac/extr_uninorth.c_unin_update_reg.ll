; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_update_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_update_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unin_chip_softc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64)* @unin_update_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unin_update_reg(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.unin_chip_softc*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.unin_chip_softc* @device_get_softc(i32 %12)
  store %struct.unin_chip_softc* %13, %struct.unin_chip_softc** %10, align 8
  %14 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %10, align 8
  %15 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add nsw i64 %16, %17
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i64 @inl(i32* %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = xor i64 %23, -1
  %25 = load i64, i64* %11, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %11, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %11, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @outl(i32* %30, i64 %31)
  ret void
}

declare dso_local %struct.unin_chip_softc* @device_get_softc(i32) #1

declare dso_local i64 @inl(i32*) #1

declare dso_local i32 @outl(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
