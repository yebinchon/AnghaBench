; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_softc = type { i32, i32 }

@CAS_STATUS_ALIAS = common dso_local global i32 0, align 4
@CAS_INTR_SUMMARY = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@CAS_INTMASK = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cas_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cas_softc*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.cas_softc*
  store %struct.cas_softc* %6, %struct.cas_softc** %4, align 8
  %7 = load %struct.cas_softc*, %struct.cas_softc** %4, align 8
  %8 = load i32, i32* @CAS_STATUS_ALIAS, align 4
  %9 = call i32 @CAS_READ_4(%struct.cas_softc* %7, i32 %8)
  %10 = load i32, i32* @CAS_INTR_SUMMARY, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @__predict_false(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.cas_softc*, %struct.cas_softc** %4, align 8
  %20 = load i32, i32* @CAS_INTMASK, align 4
  %21 = call i32 @CAS_WRITE_4(%struct.cas_softc* %19, i32 %20, i32 -1)
  %22 = load %struct.cas_softc*, %struct.cas_softc** %4, align 8
  %23 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cas_softc*, %struct.cas_softc** %4, align 8
  %26 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %25, i32 0, i32 0
  %27 = call i32 @taskqueue_enqueue(i32 %24, i32* %26)
  %28 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %18, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @CAS_READ_4(%struct.cas_softc*, i32) #1

declare dso_local i32 @CAS_WRITE_4(%struct.cas_softc*, i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
