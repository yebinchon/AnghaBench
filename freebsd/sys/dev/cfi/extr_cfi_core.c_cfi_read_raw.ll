; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_read_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_softc = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfi_read_raw(%struct.cfi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.cfi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cfi_softc* %0, %struct.cfi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 1
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %43 [
    i32 1, label %16
    i32 2, label %25
    i32 4, label %34
  ]

16:                                               ; preds = %2
  %17 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %18 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %21 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @bus_space_read_1(i32 %19, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @bus_space_read_2(i32 %28, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %44

34:                                               ; preds = %2
  %35 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %39 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @bus_space_read_4(i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %34, %25, %16
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @bus_space_read_2(i32, i32, i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
