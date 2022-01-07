; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_wp_wrapu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_wp_wrapu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32 }

@WPREG_CRAM_PTR = common dso_local global i32 0, align 4
@WPREG_DATA_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"wp_wrapu() write timed out.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"wp_wrapu() indexing timed out.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_info*, i32, i32, i32)* @wp_wrapu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wp_wrapu(%struct.agg_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.agg_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.agg_info* %0, %struct.agg_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %10 = load i32, i32* @WPREG_CRAM_PTR, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 4
  %14 = or i32 %11, %13
  %15 = call i32 @wp_wrreg(%struct.agg_info* %9, i32 %10, i32 %14)
  %16 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 4
  %20 = or i32 %17, %19
  %21 = call i64 @wp_wait_data(%struct.agg_info* %16, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %4
  %24 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %25 = load i32, i32* @WPREG_DATA_PORT, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @wp_wrreg(%struct.agg_info* %24, i32 %25, i32 %26)
  %28 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @wp_wait_data(%struct.agg_info* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %34 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %23
  br label %43

38:                                               ; preds = %4
  %39 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %40 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @wp_wrreg(%struct.agg_info*, i32, i32) #1

declare dso_local i64 @wp_wait_data(%struct.agg_info*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
