; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.cas_softc* }
%struct.cas_softc = type { %struct.cas_rxdsoft* }
%struct.cas_rxdsoft = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*)* @cas_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_free(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.cas_rxdsoft*, align 8
  %4 = alloca %struct.cas_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %8 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.cas_softc*, %struct.cas_softc** %9, align 8
  store %struct.cas_softc* %10, %struct.cas_softc** %4, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.cas_softc*, %struct.cas_softc** %4, align 8
  %16 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %15, i32 0, i32 0
  %17 = load %struct.cas_rxdsoft*, %struct.cas_rxdsoft** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.cas_rxdsoft, %struct.cas_rxdsoft* %17, i64 %18
  store %struct.cas_rxdsoft* %19, %struct.cas_rxdsoft** %3, align 8
  %20 = load %struct.cas_rxdsoft*, %struct.cas_rxdsoft** %3, align 8
  %21 = getelementptr inbounds %struct.cas_rxdsoft, %struct.cas_rxdsoft* %20, i32 0, i32 0
  %22 = call i64 @refcount_release(i32* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %41

25:                                               ; preds = %1
  %26 = load %struct.cas_softc*, %struct.cas_softc** %4, align 8
  %27 = call i64 @CAS_LOCK_OWNED(%struct.cas_softc* %26)
  store i64 %27, i64* %6, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.cas_softc*, %struct.cas_softc** %4, align 8
  %31 = call i32 @CAS_LOCK(%struct.cas_softc* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.cas_softc*, %struct.cas_softc** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @cas_add_rxdesc(%struct.cas_softc* %33, i64 %34)
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.cas_softc*, %struct.cas_softc** %4, align 8
  %40 = call i32 @CAS_UNLOCK(%struct.cas_softc* %39)
  br label %41

41:                                               ; preds = %24, %38, %32
  ret void
}

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i64 @CAS_LOCK_OWNED(%struct.cas_softc*) #1

declare dso_local i32 @CAS_LOCK(%struct.cas_softc*) #1

declare dso_local i32 @cas_add_rxdesc(%struct.cas_softc*, i64) #1

declare dso_local i32 @CAS_UNLOCK(%struct.cas_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
