; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_get_max_io_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_get_max_io_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_softc = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ioat_get_max_io_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioat_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ioat_softc* @to_ioat_softc(i32 %4)
  store %struct.ioat_softc* %5, %struct.ioat_softc** %3, align 8
  %6 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

declare dso_local %struct.ioat_softc* @to_ioat_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
