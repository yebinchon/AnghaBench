; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_set_sleepled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_set_sleepled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32 }

@__const.pmu_set_sleepled.cmd = private unnamed_addr constant [3 x i32] [i32 4, i32 0, i32 0], align 4
@PMU_SET_SLEEPLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pmu_set_sleepled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_set_sleepled(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmu_softc*, align 8
  %6 = alloca [3 x i32], align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.pmu_softc*
  store %struct.pmu_softc* %8, %struct.pmu_softc** %5, align 8
  %9 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ([3 x i32]* @__const.pmu_set_sleepled.cmd to i8*), i64 12, i1 false)
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %10, i32* %11, align 4
  %12 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %13 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %12, i32 0, i32 0
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %16 = load i32, i32* @PMU_SET_SLEEPLED, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %18 = call i32 @pmu_send(%struct.pmu_softc* %15, i32 %16, i32 3, i32* %17, i32 0, i32* null)
  %19 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %20 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %19, i32 0, i32 0
  %21 = call i32 @mtx_unlock(i32* %20)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @pmu_send(%struct.pmu_softc*, i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @mtx_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
