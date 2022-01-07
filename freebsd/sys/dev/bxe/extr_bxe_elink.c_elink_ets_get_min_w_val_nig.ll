; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ets_get_min_w_val_nig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ets_get_min_w_val_nig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_vars = type { i64, i64 }

@ELINK_SPEED_20000 = common dso_local global i64 0, align 8
@ELINK_ETS_E3B0_NIG_MIN_W_VAL_20GBPS = common dso_local global i32 0, align 4
@ELINK_ETS_E3B0_NIG_MIN_W_VAL_UP_TO_10GBPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_vars*)* @elink_ets_get_min_w_val_nig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_ets_get_min_w_val_nig(%struct.elink_vars* %0) #0 {
  %2 = alloca %struct.elink_vars*, align 8
  %3 = alloca i32, align 4
  store %struct.elink_vars* %0, %struct.elink_vars** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.elink_vars*, %struct.elink_vars** %2, align 8
  %5 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.elink_vars*, %struct.elink_vars** %2, align 8
  %10 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ELINK_SPEED_20000, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @ELINK_ETS_E3B0_NIG_MIN_W_VAL_20GBPS, align 4
  store i32 %15, i32* %3, align 4
  br label %18

16:                                               ; preds = %8
  %17 = load i32, i32* @ELINK_ETS_E3B0_NIG_MIN_W_VAL_UP_TO_10GBPS, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %14
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ELINK_ETS_E3B0_NIG_MIN_W_VAL_20GBPS, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
