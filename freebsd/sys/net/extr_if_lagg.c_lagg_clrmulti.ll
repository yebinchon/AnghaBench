; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_clrmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_clrmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_port = type { i64, i32, i32 }
%struct.lagg_mc = type { i64 }

@lagg_mc = common dso_local global i32 0, align 4
@mc_entries = common dso_local global i32 0, align 4
@M_LAGG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lagg_port*)* @lagg_clrmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lagg_clrmulti(%struct.lagg_port* %0) #0 {
  %2 = alloca %struct.lagg_port*, align 8
  %3 = alloca %struct.lagg_mc*, align 8
  store %struct.lagg_port* %0, %struct.lagg_port** %2, align 8
  %4 = load %struct.lagg_port*, %struct.lagg_port** %2, align 8
  %5 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @LAGG_XLOCK_ASSERT(i32 %6)
  br label %8

8:                                                ; preds = %34, %1
  %9 = load %struct.lagg_port*, %struct.lagg_port** %2, align 8
  %10 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %9, i32 0, i32 1
  %11 = call %struct.lagg_mc* @SLIST_FIRST(i32* %10)
  store %struct.lagg_mc* %11, %struct.lagg_mc** %3, align 8
  %12 = icmp ne %struct.lagg_mc* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load %struct.lagg_port*, %struct.lagg_port** %2, align 8
  %15 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %14, i32 0, i32 1
  %16 = load %struct.lagg_mc*, %struct.lagg_mc** %3, align 8
  %17 = load i32, i32* @lagg_mc, align 4
  %18 = load i32, i32* @mc_entries, align 4
  %19 = call i32 @SLIST_REMOVE(i32* %15, %struct.lagg_mc* %16, i32 %17, i32 %18)
  %20 = load %struct.lagg_mc*, %struct.lagg_mc** %3, align 8
  %21 = getelementptr inbounds %struct.lagg_mc, %struct.lagg_mc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %13
  %25 = load %struct.lagg_port*, %struct.lagg_port** %2, align 8
  %26 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.lagg_mc*, %struct.lagg_mc** %3, align 8
  %31 = getelementptr inbounds %struct.lagg_mc, %struct.lagg_mc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @if_delmulti_ifma(i64 %32)
  br label %34

34:                                               ; preds = %29, %24, %13
  %35 = load %struct.lagg_mc*, %struct.lagg_mc** %3, align 8
  %36 = load i32, i32* @M_LAGG, align 4
  %37 = call i32 @free(%struct.lagg_mc* %35, i32 %36)
  br label %8

38:                                               ; preds = %8
  ret i32 0
}

declare dso_local i32 @LAGG_XLOCK_ASSERT(i32) #1

declare dso_local %struct.lagg_mc* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.lagg_mc*, i32, i32) #1

declare dso_local i32 @if_delmulti_ifma(i64) #1

declare dso_local i32 @free(%struct.lagg_mc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
