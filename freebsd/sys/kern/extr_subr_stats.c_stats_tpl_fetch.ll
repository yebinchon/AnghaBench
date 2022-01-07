; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_tpl_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_tpl_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsblob_tpl = type { i32 }

@ntpl = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@tpllist = common dso_local global %struct.statsblob_tpl** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stats_tpl_fetch(i32 %0, %struct.statsblob_tpl** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.statsblob_tpl**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.statsblob_tpl** %1, %struct.statsblob_tpl*** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @TPL_LIST_WLOCK()
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i64, i64* @ntpl, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp sge i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @ENOENT, align 4
  store i32 %15, i32* %5, align 4
  br label %23

16:                                               ; preds = %9
  %17 = load %struct.statsblob_tpl**, %struct.statsblob_tpl*** @tpllist, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.statsblob_tpl*, %struct.statsblob_tpl** %17, i64 %19
  %21 = load %struct.statsblob_tpl*, %struct.statsblob_tpl** %20, align 8
  %22 = load %struct.statsblob_tpl**, %struct.statsblob_tpl*** %4, align 8
  store %struct.statsblob_tpl* %21, %struct.statsblob_tpl** %22, align 8
  br label %23

23:                                               ; preds = %16, %14
  %24 = call i32 (...) @TPL_LIST_WUNLOCK()
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @TPL_LIST_WLOCK(...) #1

declare dso_local i32 @TPL_LIST_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
