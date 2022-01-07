; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpge_softc = type { i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ifnet* }

@NAE_CACHELINE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"cpu %d: ERR Rx packet paddr %jx, temp %p, mag %lx\0A\00", align 1
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_xlpge_softc*, i32, i64, i32)* @nlm_xlpge_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_xlpge_rx(%struct.nlm_xlpge_softc* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.nlm_xlpge_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.nlm_xlpge_softc* %0, %struct.nlm_xlpge_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %5, align 8
  %15 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %14, i32 0, i32 2
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @NAE_CACHELINE_SIZE, align 8
  %19 = sub nsw i64 %17, %18
  %20 = call i8* @nlm_paddr_ld(i64 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @NAE_CACHELINE_SIZE, align 8
  %23 = sub nsw i64 %21, %22
  %24 = add i64 %23, 4
  %25 = call i8* @nlm_paddr_ld(i64 %24)
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %12, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = inttoptr i64 %28 to %struct.mbuf*
  store %struct.mbuf* %29, %struct.mbuf** %10, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 15731629
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = call i32 (...) @nlm_cpuid()
  %34 = load i64, i64* %7, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35, i8* %36, i64 %37)
  br label %84

39:                                               ; preds = %4
  %40 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store %struct.ifnet* %40, %struct.ifnet** %43, align 8
  %44 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %5, align 8
  %45 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %39
  %49 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %5, align 8
  %50 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = mul nsw i32 %52, 16
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 8
  br label %74

67:                                               ; preds = %39
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %72 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 8
  br label %74

74:                                               ; preds = %67, %48
  %75 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %76 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %77 = call i32 @if_inc_counter(%struct.ifnet* %75, i32 %76, i32 1)
  %78 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 0
  %80 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %79, align 8
  %81 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %82 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %83 = call i32 %80(%struct.ifnet* %81, %struct.mbuf* %82)
  br label %84

84:                                               ; preds = %74, %32
  ret void
}

declare dso_local i8* @nlm_paddr_ld(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nlm_cpuid(...) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
