; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_softc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfi_softc*, i32, i32)* @cfi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_write(%struct.cfi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cfi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cfi_softc* %0, %struct.cfi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %8 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %9, 1
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %15 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %49 [
    i32 1, label %17
    i32 2, label %27
    i32 4, label %38
  ]

17:                                               ; preds = %3
  %18 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %22 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @bus_space_write_1(i32 %20, i32 %23, i32 %24, i32 %25)
  br label %49

27:                                               ; preds = %3
  %28 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %29 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %32 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @htole16(i32 %35)
  %37 = call i32 @bus_space_write_2(i32 %30, i32 %33, i32 %34, i32 %36)
  br label %49

38:                                               ; preds = %3
  %39 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %40 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @htole32(i32 %46)
  %48 = call i32 @bus_space_write_4(i32 %41, i32 %44, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %3, %38, %27, %17
  ret void
}

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_write_2(i32, i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
