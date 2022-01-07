; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/fhc/extr_fhc.c_fhc_led_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/fhc/extr_fhc.c_fhc_led_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhc_softc = type { i32* }

@FHC_INTERNAL = common dso_local global i64 0, align 8
@FHC_CTRL = common dso_local global i32 0, align 4
@FHC_CTRL_RLED = common dso_local global i32 0, align 4
@FHC_CTRL_AOFF = common dso_local global i32 0, align 4
@FHC_CTRL_BOFF = common dso_local global i32 0, align 4
@FHC_CTRL_SLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @fhc_led_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fhc_led_func(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fhc_softc*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.fhc_softc*
  store %struct.fhc_softc* %8, %struct.fhc_softc** %5, align 8
  %9 = load %struct.fhc_softc*, %struct.fhc_softc** %5, align 8
  %10 = getelementptr inbounds %struct.fhc_softc, %struct.fhc_softc* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @FHC_INTERNAL, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FHC_CTRL, align 4
  %16 = call i32 @bus_read_4(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @FHC_CTRL_RLED, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @FHC_CTRL_RLED, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, i32* @FHC_CTRL_AOFF, align 4
  %30 = load i32, i32* @FHC_CTRL_BOFF, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FHC_CTRL_SLINE, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.fhc_softc*, %struct.fhc_softc** %5, align 8
  %38 = getelementptr inbounds %struct.fhc_softc, %struct.fhc_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @FHC_INTERNAL, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FHC_CTRL, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @bus_write_4(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.fhc_softc*, %struct.fhc_softc** %5, align 8
  %47 = getelementptr inbounds %struct.fhc_softc, %struct.fhc_softc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @FHC_INTERNAL, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FHC_CTRL, align 4
  %53 = call i32 @bus_read_4(i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
