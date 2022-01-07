; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_setup_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_setup_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpnae_softc = type { i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_xlpnae_softc*)* @nlm_setup_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_setup_interfaces(%struct.nlm_xlpnae_softc* %0) #0 {
  %2 = alloca %struct.nlm_xlpnae_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nlm_xlpnae_softc* %0, %struct.nlm_xlpnae_softc** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %2, align 8
  %13 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %2, align 8
  %16 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @nlm_get_flow_mask(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %2, align 8
  %20 = call i32 @xlpnae_get_maxchannels(%struct.nlm_xlpnae_softc* %19)
  store i32 %20, i32* %9, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %72, %1
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %2, align 8
  %24 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %21
  %28 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %2, align 8
  %29 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UNKNOWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %72

39:                                               ; preds = %27
  %40 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %2, align 8
  %41 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %2, align 8
  %42 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @nlm_setup_interface(%struct.nlm_xlpnae_softc* %40, i32 %48, i32 %49, i64 %50, i64 %51, i32 %52, i32 %53)
  %55 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %2, align 8
  %56 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %6, align 8
  %60 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %2, align 8
  %61 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %39, %38
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %21

75:                                               ; preds = %21
  ret void
}

declare dso_local i64 @nlm_get_flow_mask(i32) #1

declare dso_local i32 @xlpnae_get_maxchannels(%struct.nlm_xlpnae_softc*) #1

declare dso_local i32 @nlm_setup_interface(%struct.nlm_xlpnae_softc*, i32, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
