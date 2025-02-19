; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_pv_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_pv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pv_entry_count = common dso_local global i64 0, align 8
@pv_entry_high_water = common dso_local global i64 0, align 8
@pvzone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pv_alloc() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @pv_entry_count, align 8
  %3 = add nsw i64 %2, 1
  store i64 %3, i64* @pv_entry_count, align 8
  %4 = load i64, i64* @pv_entry_count, align 8
  %5 = load i64, i64* @pv_entry_high_water, align 8
  %6 = icmp sgt i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @pagedaemon_wakeup(i32 0)
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, i32* @pvzone, align 4
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = call i32 @uma_zalloc(i32 %10, i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @pagedaemon_wakeup(i32) #1

declare dso_local i32 @uma_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
