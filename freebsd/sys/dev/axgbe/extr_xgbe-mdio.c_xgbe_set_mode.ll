; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32)* @xgbe_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_set_mode(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = call i32 @xgbe_cur_mode(%struct.xgbe_prv_data* %6, i32* %5)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %13 = call i32 @xgbe_switch_mode(%struct.xgbe_prv_data* %12)
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @xgbe_cur_mode(%struct.xgbe_prv_data*, i32*) #1

declare dso_local i32 @xgbe_switch_mode(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
