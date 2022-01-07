; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggch_stop_dac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggch_stop_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_chinfo = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@APUREG_APUTYPE = common dso_local global i32 0, align 4
@APUTYPE_INACTIVE = common dso_local global i32 0, align 4
@APU_APUTYPE_SHIFT = common dso_local global i32 0, align 4
@powerstate_idle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_chinfo*)* @aggch_stop_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggch_stop_dac(%struct.agg_chinfo* %0) #0 {
  %2 = alloca %struct.agg_chinfo*, align 8
  store %struct.agg_chinfo* %0, %struct.agg_chinfo** %2, align 8
  %3 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %4 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %3, i32 0, i32 1
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = call i32 @agg_lock(%struct.TYPE_8__* %5)
  %7 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %8 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = shl i32 1, %9
  %11 = xor i32 %10, -1
  %12 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %13 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %19 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %22 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 1
  %25 = or i32 %24, 32
  %26 = load i32, i32* @APUREG_APUTYPE, align 4
  %27 = load i32, i32* @APUTYPE_INACTIVE, align 4
  %28 = load i32, i32* @APU_APUTYPE_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = call i32 @wp_wrapu(%struct.TYPE_8__* %20, i32 %25, i32 %26, i32 %29)
  %31 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %32 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %35 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 1
  %38 = or i32 %37, 33
  %39 = load i32, i32* @APUREG_APUTYPE, align 4
  %40 = load i32, i32* @APUTYPE_INACTIVE, align 4
  %41 = load i32, i32* @APU_APUTYPE_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = call i32 @wp_wrapu(%struct.TYPE_8__* %33, i32 %38, i32 %39, i32 %42)
  %44 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %45 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %1
  %51 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %52 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call i32 @set_timer(%struct.TYPE_8__* %53)
  %55 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %56 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = call i32 @wp_starttimer(%struct.TYPE_8__* %57)
  br label %69

59:                                               ; preds = %1
  %60 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %61 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = call i32 @wp_stoptimer(%struct.TYPE_8__* %62)
  %64 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %65 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i32, i32* @powerstate_idle, align 4
  %68 = call i32 @agg_power(%struct.TYPE_8__* %66, i32 %67)
  br label %69

69:                                               ; preds = %59, %50
  %70 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %71 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = call i32 @agg_unlock(%struct.TYPE_8__* %72)
  ret void
}

declare dso_local i32 @agg_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @wp_wrapu(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @set_timer(%struct.TYPE_8__*) #1

declare dso_local i32 @wp_starttimer(%struct.TYPE_8__*) #1

declare dso_local i32 @wp_stoptimer(%struct.TYPE_8__*) #1

declare dso_local i32 @agg_power(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @agg_unlock(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
