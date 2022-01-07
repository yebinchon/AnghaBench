; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_idahwqcbvtop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_idahwqcbvtop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida_softc = type { i64, i64 }
%struct.ida_hardware_qcb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ida_softc*, %struct.ida_hardware_qcb*)* @idahwqcbvtop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @idahwqcbvtop(%struct.ida_softc* %0, %struct.ida_hardware_qcb* %1) #0 {
  %3 = alloca %struct.ida_softc*, align 8
  %4 = alloca %struct.ida_hardware_qcb*, align 8
  store %struct.ida_softc* %0, %struct.ida_softc** %3, align 8
  store %struct.ida_hardware_qcb* %1, %struct.ida_hardware_qcb** %4, align 8
  %5 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %4, align 8
  %9 = ptrtoint %struct.ida_hardware_qcb* %8 to i64
  %10 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = add nsw i64 %7, %13
  ret i64 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
