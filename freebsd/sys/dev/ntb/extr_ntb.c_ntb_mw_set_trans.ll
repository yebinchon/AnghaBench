; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_mw_set_trans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_mw_set_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_child = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_mw_set_trans(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ntb_child*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ntb_child* @device_get_ivars(i32 %10)
  store %struct.ntb_child* %11, %struct.ntb_child** %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ntb_child*, %struct.ntb_child** %9, align 8
  %16 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %14, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @NTB_MW_SET_TRANS(i32 %13, i32 %18, i32 %19, i64 %20)
  ret i32 %21
}

declare dso_local %struct.ntb_child* @device_get_ivars(i32) #1

declare dso_local i32 @NTB_MW_SET_TRANS(i32, i32, i32, i64) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
