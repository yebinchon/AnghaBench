; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_mem_putb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_mem_putb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exca_softc = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exca_softc*, i32, i32)* @exca_mem_putb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exca_mem_putb(%struct.exca_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.exca_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.exca_softc* %0, %struct.exca_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.exca_softc*, %struct.exca_softc** %4, align 8
  %8 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.exca_softc*, %struct.exca_softc** %4, align 8
  %11 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.exca_softc*, %struct.exca_softc** %4, align 8
  %14 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @bus_space_write_1(i32 %9, i32 %12, i64 %18, i32 %19)
  ret void
}

declare dso_local i32 @bus_space_write_1(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
