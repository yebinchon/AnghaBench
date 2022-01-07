; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32 }

@__const.pmu_shutdown.cmd = private unnamed_addr constant [4 x i8] c"MATT", align 1
@RB_HALT = common dso_local global i32 0, align 4
@PMU_POWER_OFF = common dso_local global i32 0, align 4
@PMU_RESET_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pmu_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_shutdown(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmu_softc*, align 8
  %6 = alloca [4 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.pmu_softc*
  store %struct.pmu_softc* %8, %struct.pmu_softc** %5, align 8
  %9 = bitcast [4 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.pmu_shutdown.cmd, i32 0, i32 0), i64 4, i1 false)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @RB_HALT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %16 = load i32, i32* @PMU_POWER_OFF, align 4
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %18 = call i32 @pmu_send(%struct.pmu_softc* %15, i32 %16, i32 4, i8* %17, i32 0, i32* null)
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %21 = load i32, i32* @PMU_RESET_CPU, align 4
  %22 = call i32 @pmu_send(%struct.pmu_softc* %20, i32 %21, i32 0, i8* null, i32 0, i32* null)
  br label %23

23:                                               ; preds = %19, %14
  br label %24

24:                                               ; preds = %24, %23
  br label %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pmu_send(%struct.pmu_softc*, i32, i32, i8*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
