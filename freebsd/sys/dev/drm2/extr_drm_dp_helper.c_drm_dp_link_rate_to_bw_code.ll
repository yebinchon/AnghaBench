; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dp_helper.c_drm_dp_link_rate_to_bw_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dp_helper.c_drm_dp_link_rate_to_bw_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DP_LINK_BW_1_62 = common dso_local global i32 0, align 4
@DP_LINK_BW_2_7 = common dso_local global i32 0, align 4
@DP_LINK_BW_5_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_link_rate_to_bw_code(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %6 [
    i32 162000, label %5
    i32 270000, label %8
    i32 540000, label %10
  ]

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, i32* @DP_LINK_BW_1_62, align 4
  store i32 %7, i32* %2, align 4
  br label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @DP_LINK_BW_2_7, align 4
  store i32 %9, i32* %2, align 4
  br label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @DP_LINK_BW_5_4, align 4
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %10, %8, %6
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
