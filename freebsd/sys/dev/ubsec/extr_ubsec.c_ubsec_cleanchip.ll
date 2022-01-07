; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_cleanchip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_cleanchip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_softc = type { i64, i32 }
%struct.ubsec_q = type { i32 }

@q_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubsec_softc*)* @ubsec_cleanchip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsec_cleanchip(%struct.ubsec_softc* %0) #0 {
  %2 = alloca %struct.ubsec_softc*, align 8
  %3 = alloca %struct.ubsec_q*, align 8
  store %struct.ubsec_softc* %0, %struct.ubsec_softc** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %5, i32 0, i32 1
  %7 = call i32 @SIMPLEQ_EMPTY(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %11, i32 0, i32 1
  %13 = call %struct.ubsec_q* @SIMPLEQ_FIRST(i32* %12)
  store %struct.ubsec_q* %13, %struct.ubsec_q** %3, align 8
  %14 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %14, i32 0, i32 1
  %16 = load i32, i32* @q_next, align 4
  %17 = call i32 @SIMPLEQ_REMOVE_HEAD(i32* %15, i32 %16)
  %18 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %19 = load %struct.ubsec_q*, %struct.ubsec_q** %3, align 8
  %20 = call i32 @ubsec_free_q(%struct.ubsec_softc* %18, %struct.ubsec_q* %19)
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  ret void
}

declare dso_local i32 @SIMPLEQ_EMPTY(i32*) #1

declare dso_local %struct.ubsec_q* @SIMPLEQ_FIRST(i32*) #1

declare dso_local i32 @SIMPLEQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ubsec_free_q(%struct.ubsec_softc*, %struct.ubsec_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
