; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_meminit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_meminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_softc = type { i64, i64, i32*, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAS_NTXDESC = common dso_local global i32 0, align 4
@CAS_MAXTXFREE = common dso_local global i32 0, align 4
@CAS_NRXCOMP = common dso_local global i32 0, align 4
@CAS_NRXDESC = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas_softc*)* @cas_meminit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_meminit(%struct.cas_softc* %0) #0 {
  %2 = alloca %struct.cas_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.cas_softc* %0, %struct.cas_softc** %2, align 8
  %4 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @CAS_LOCK_ASSERT(%struct.cas_softc* %4, i32 %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @CAS_NTXDESC, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %13 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %12, i32 0, i32 6
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %20 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %19, i32 0, i32 6
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load i32, i32* @CAS_MAXTXFREE, align 4
  %31 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %32 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %34 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %36 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %49, %29
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @CAS_NRXCOMP, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %43 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @cas_rxcompinit(i32* %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %37

52:                                               ; preds = %37
  %53 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %54 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %64, %52
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @CAS_NRXDESC, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @CAS_INIT_RXDESC(%struct.cas_softc* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %55

67:                                               ; preds = %55
  %68 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %69 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %71 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %72 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @CAS_CDSYNC(%struct.cas_softc* %70, i32 %73)
  ret void
}

declare dso_local i32 @CAS_LOCK_ASSERT(%struct.cas_softc*, i32) #1

declare dso_local i32 @cas_rxcompinit(i32*) #1

declare dso_local i32 @CAS_INIT_RXDESC(%struct.cas_softc*, i32, i32) #1

declare dso_local i32 @CAS_CDSYNC(%struct.cas_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
