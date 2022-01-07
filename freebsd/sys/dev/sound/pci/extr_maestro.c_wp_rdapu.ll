; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_wp_rdapu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_wp_rdapu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32 }

@WPREG_CRAM_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"wp_rdapu() indexing timed out.\0A\00", align 1
@WPREG_DATA_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agg_info*, i32, i32)* @wp_rdapu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wp_rdapu(%struct.agg_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.agg_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.agg_info* %0, %struct.agg_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %8 = load i32, i32* @WPREG_CRAM_PTR, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 4
  %12 = or i32 %9, %11
  %13 = call i32 @wp_wrreg(%struct.agg_info* %7, i32 %8, i32 %12)
  %14 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 4
  %18 = or i32 %15, %17
  %19 = call i64 @wp_wait_data(%struct.agg_info* %14, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %23 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %3
  %27 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %28 = load i32, i32* @WPREG_DATA_PORT, align 4
  %29 = call i32 @wp_rdreg(%struct.agg_info* %27, i32 %28)
  ret i32 %29
}

declare dso_local i32 @wp_wrreg(%struct.agg_info*, i32, i32) #1

declare dso_local i64 @wp_wait_data(%struct.agg_info*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @wp_rdreg(%struct.agg_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
