; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_set_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32 }

@__const.pmu_set_speed.sleepcmd = private unnamed_addr constant [5 x i8] c"WOOF\00", align 1
@pmu = common dso_local global i32 0, align 4
@vIER = common dso_local global i32 0, align 4
@PMU_CPU_SPEED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmu_set_speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmu_softc*, align 8
  %4 = alloca [5 x i8], align 1
  %5 = alloca [16 x i8], align 16
  store i32 %0, i32* %2, align 4
  %6 = bitcast [5 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.pmu_set_speed.sleepcmd, i32 0, i32 0), i64 5, i1 false)
  %7 = load i32, i32* @pmu, align 4
  %8 = call %struct.pmu_softc* @device_get_softc(i32 %7)
  store %struct.pmu_softc* %8, %struct.pmu_softc** %3, align 8
  %9 = load %struct.pmu_softc*, %struct.pmu_softc** %3, align 8
  %10 = load i32, i32* @vIER, align 4
  %11 = call i32 @pmu_write_reg(%struct.pmu_softc* %9, i32 %10, i32 16)
  %12 = call i32 (...) @spinlock_enter()
  %13 = call i32 @mtdec(i32 2147483647)
  %14 = call i32 (...) @mb()
  %15 = call i32 @mtdec(i32 2147483647)
  %16 = load i32, i32* %2, align 4
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 4
  store i8 %17, i8* %18, align 1
  %19 = load %struct.pmu_softc*, %struct.pmu_softc** %3, align 8
  %20 = load i32, i32* @PMU_CPU_SPEED, align 4
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %23 = call i32 @pmu_send(%struct.pmu_softc* %19, i32 %20, i32 5, i8* %21, i32 16, i8* %22)
  %24 = call i32 @unin_chip_sleep(i32* null, i32 1)
  %25 = call i32 (...) @platform_sleep()
  %26 = call i32 @unin_chip_wake(i32* null)
  %27 = call i32 @mtdec(i32 1)
  %28 = call i32 (...) @spinlock_exit()
  %29 = load %struct.pmu_softc*, %struct.pmu_softc** %3, align 8
  %30 = load i32, i32* @vIER, align 4
  %31 = call i32 @pmu_write_reg(%struct.pmu_softc* %29, i32 %30, i32 144)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.pmu_softc* @device_get_softc(i32) #2

declare dso_local i32 @pmu_write_reg(%struct.pmu_softc*, i32, i32) #2

declare dso_local i32 @spinlock_enter(...) #2

declare dso_local i32 @mtdec(i32) #2

declare dso_local i32 @mb(...) #2

declare dso_local i32 @pmu_send(%struct.pmu_softc*, i32, i32, i8*, i32, i8*) #2

declare dso_local i32 @unin_chip_sleep(i32*, i32) #2

declare dso_local i32 @platform_sleep(...) #2

declare dso_local i32 @unin_chip_wake(i32*) #2

declare dso_local i32 @spinlock_exit(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
