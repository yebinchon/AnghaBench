; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_remove_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_remove_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_common = type { i32 }
%struct.res_qp = type { i32 }
%struct.res_cq = type { i32 }
%struct.res_srq = type { i32 }
%struct.res_mpt = type { i32 }
%struct.res_mtt = type { i32 }
%struct.res_eq = type { i32 }
%struct.res_counter = type { i32 }
%struct.res_xrcdn = type { i32 }
%struct.res_fs_rule = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.res_common*, i32, i32)* @remove_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_ok(%struct.res_common* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.res_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.res_common* %0, %struct.res_common** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %49 [
    i32 130, label %9
    i32 136, label %13
    i32 129, label %17
    i32 132, label %21
    i32 131, label %25
    i32 133, label %30
    i32 135, label %33
    i32 137, label %37
    i32 128, label %41
    i32 134, label %45
  ]

9:                                                ; preds = %3
  %10 = load %struct.res_common*, %struct.res_common** %5, align 8
  %11 = bitcast %struct.res_common* %10 to %struct.res_qp*
  %12 = call i32 @remove_qp_ok(%struct.res_qp* %11)
  store i32 %12, i32* %4, align 4
  br label %52

13:                                               ; preds = %3
  %14 = load %struct.res_common*, %struct.res_common** %5, align 8
  %15 = bitcast %struct.res_common* %14 to %struct.res_cq*
  %16 = call i32 @remove_cq_ok(%struct.res_cq* %15)
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.res_common*, %struct.res_common** %5, align 8
  %19 = bitcast %struct.res_common* %18 to %struct.res_srq*
  %20 = call i32 @remove_srq_ok(%struct.res_srq* %19)
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.res_common*, %struct.res_common** %5, align 8
  %23 = bitcast %struct.res_common* %22 to %struct.res_mpt*
  %24 = call i32 @remove_mpt_ok(%struct.res_mpt* %23)
  store i32 %24, i32* %4, align 4
  br label %52

25:                                               ; preds = %3
  %26 = load %struct.res_common*, %struct.res_common** %5, align 8
  %27 = bitcast %struct.res_common* %26 to %struct.res_mtt*
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @remove_mtt_ok(%struct.res_mtt* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %52

33:                                               ; preds = %3
  %34 = load %struct.res_common*, %struct.res_common** %5, align 8
  %35 = bitcast %struct.res_common* %34 to %struct.res_eq*
  %36 = call i32 @remove_eq_ok(%struct.res_eq* %35)
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %3
  %38 = load %struct.res_common*, %struct.res_common** %5, align 8
  %39 = bitcast %struct.res_common* %38 to %struct.res_counter*
  %40 = call i32 @remove_counter_ok(%struct.res_counter* %39)
  store i32 %40, i32* %4, align 4
  br label %52

41:                                               ; preds = %3
  %42 = load %struct.res_common*, %struct.res_common** %5, align 8
  %43 = bitcast %struct.res_common* %42 to %struct.res_xrcdn*
  %44 = call i32 @remove_xrcdn_ok(%struct.res_xrcdn* %43)
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %3
  %46 = load %struct.res_common*, %struct.res_common** %5, align 8
  %47 = bitcast %struct.res_common* %46 to %struct.res_fs_rule*
  %48 = call i32 @remove_fs_rule_ok(%struct.res_fs_rule* %47)
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %45, %41, %37, %33, %30, %25, %21, %17, %13, %9
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @remove_qp_ok(%struct.res_qp*) #1

declare dso_local i32 @remove_cq_ok(%struct.res_cq*) #1

declare dso_local i32 @remove_srq_ok(%struct.res_srq*) #1

declare dso_local i32 @remove_mpt_ok(%struct.res_mpt*) #1

declare dso_local i32 @remove_mtt_ok(%struct.res_mtt*, i32) #1

declare dso_local i32 @remove_eq_ok(%struct.res_eq*) #1

declare dso_local i32 @remove_counter_ok(%struct.res_counter*) #1

declare dso_local i32 @remove_xrcdn_ok(%struct.res_xrcdn*) #1

declare dso_local i32 @remove_fs_rule_ok(%struct.res_fs_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
