; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athstats/extr_athstats.c_ath_collect.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athstats/extr_athstats.c_ath_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.athstatfoo_p = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i32 }
%struct._athstats = type { i32, i32, i32 }

@ATHSTATS_ANI = common dso_local global i32 0, align 4
@HAL_DIAG_ANI_CURRENT = common dso_local global i32 0, align 4
@HAL_DIAG_ANI_STATS = common dso_local global i32 0, align 4
@SIOCGATHDIAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.athstatfoo_p*, %struct._athstats*)* @ath_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_collect(%struct.athstatfoo_p* %0, %struct._athstats* %1) #0 {
  %3 = alloca %struct.athstatfoo_p*, align 8
  %4 = alloca %struct._athstats*, align 8
  store %struct.athstatfoo_p* %0, %struct.athstatfoo_p** %3, align 8
  store %struct._athstats* %1, %struct._athstats** %4, align 8
  %5 = load %struct.athstatfoo_p*, %struct.athstatfoo_p** %3, align 8
  %6 = getelementptr inbounds %struct.athstatfoo_p, %struct.athstatfoo_p* %5, i32 0, i32 2
  %7 = load %struct._athstats*, %struct._athstats** %4, align 8
  %8 = getelementptr inbounds %struct._athstats, %struct._athstats* %7, i32 0, i32 2
  %9 = call i64 @ath_driver_req_fetch_stats(i32* %6, i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %2
  ret void
}

declare dso_local i64 @ath_driver_req_fetch_stats(i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
