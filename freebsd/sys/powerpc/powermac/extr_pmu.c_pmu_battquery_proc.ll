; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_battquery_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_battquery_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32 }
%struct.pmu_battstate = type { i32 }

@pmu = common dso_local global i32 0, align 4
@curproc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pmu_batt\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmu_battquery_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_battquery_proc() #0 {
  %1 = alloca %struct.pmu_softc*, align 8
  %2 = alloca %struct.pmu_battstate, align 4
  %3 = alloca %struct.pmu_battstate, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @pmu, align 4
  %6 = call %struct.pmu_softc* @device_get_softc(i32 %5)
  store %struct.pmu_softc* %6, %struct.pmu_softc** %1, align 8
  %7 = call i32 @bzero(%struct.pmu_battstate* %3, i32 4)
  br label %8

8:                                                ; preds = %0, %8
  %9 = load i32, i32* @curproc, align 4
  %10 = call i32 @kproc_suspend_check(i32 %9)
  %11 = load %struct.pmu_softc*, %struct.pmu_softc** %1, align 8
  %12 = call i32 @pmu_query_battery(%struct.pmu_softc* %11, i32 0, %struct.pmu_battstate* %2)
  store i32 %12, i32* %4, align 4
  %13 = call i32 @pmu_battery_notify(%struct.pmu_battstate* %2, %struct.pmu_battstate* %3)
  %14 = bitcast %struct.pmu_battstate* %3 to i8*
  %15 = bitcast %struct.pmu_battstate* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load i32, i32* @hz, align 4
  %17 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %8
}

declare dso_local %struct.pmu_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.pmu_battstate*, i32) #1

declare dso_local i32 @kproc_suspend_check(i32) #1

declare dso_local i32 @pmu_query_battery(%struct.pmu_softc*, i32, %struct.pmu_battstate*) #1

declare dso_local i32 @pmu_battery_notify(%struct.pmu_battstate*, %struct.pmu_battstate*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
