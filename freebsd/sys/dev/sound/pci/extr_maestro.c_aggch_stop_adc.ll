; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggch_stop_adc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggch_stop_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_rchinfo = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@APUREG_APUTYPE = common dso_local global i32 0, align 4
@APUTYPE_INACTIVE = common dso_local global i32 0, align 4
@APU_APUTYPE_SHIFT = common dso_local global i32 0, align 4
@powerstate_idle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_rchinfo*)* @aggch_stop_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggch_stop_adc(%struct.agg_rchinfo* %0) #0 {
  %2 = alloca %struct.agg_rchinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.agg_rchinfo* %0, %struct.agg_rchinfo** %2, align 8
  %4 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %5 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %4, i32 0, i32 0
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = call i32 @agg_lock(%struct.TYPE_8__* %6)
  %8 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %9 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 1, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %16 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %14
  store i32 %20, i32* %18, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %34, %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %26 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @APUREG_APUTYPE, align 4
  %30 = load i32, i32* @APUTYPE_INACTIVE, align 4
  %31 = load i32, i32* @APU_APUTYPE_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = call i32 @wp_wrapu(%struct.TYPE_8__* %27, i32 %28, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %21

37:                                               ; preds = %21
  %38 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %39 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %46 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = call i32 @set_timer(%struct.TYPE_8__* %47)
  %49 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %50 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i32 @wp_starttimer(%struct.TYPE_8__* %51)
  br label %63

53:                                               ; preds = %37
  %54 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %55 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = call i32 @wp_stoptimer(%struct.TYPE_8__* %56)
  %58 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %59 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* @powerstate_idle, align 4
  %62 = call i32 @agg_power(%struct.TYPE_8__* %60, i32 %61)
  br label %63

63:                                               ; preds = %53, %44
  %64 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %65 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i32 @agg_unlock(%struct.TYPE_8__* %66)
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
