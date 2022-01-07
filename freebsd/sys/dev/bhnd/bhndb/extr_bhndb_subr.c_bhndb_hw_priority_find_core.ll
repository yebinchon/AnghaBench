; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_hw_priority_find_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_hw_priority_find_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_hw_priority = type { i32, i32* }
%struct.bhnd_core_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhndb_hw_priority* @bhndb_hw_priority_find_core(%struct.bhndb_hw_priority* %0, %struct.bhnd_core_info* %1) #0 {
  %3 = alloca %struct.bhndb_hw_priority*, align 8
  %4 = alloca %struct.bhndb_hw_priority*, align 8
  %5 = alloca %struct.bhnd_core_info*, align 8
  %6 = alloca %struct.bhndb_hw_priority*, align 8
  store %struct.bhndb_hw_priority* %0, %struct.bhndb_hw_priority** %4, align 8
  store %struct.bhnd_core_info* %1, %struct.bhnd_core_info** %5, align 8
  %7 = load %struct.bhndb_hw_priority*, %struct.bhndb_hw_priority** %4, align 8
  store %struct.bhndb_hw_priority* %7, %struct.bhndb_hw_priority** %6, align 8
  br label %8

8:                                                ; preds = %22, %2
  %9 = load %struct.bhndb_hw_priority*, %struct.bhndb_hw_priority** %6, align 8
  %10 = getelementptr inbounds %struct.bhndb_hw_priority, %struct.bhndb_hw_priority* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %5, align 8
  %15 = load %struct.bhndb_hw_priority*, %struct.bhndb_hw_priority** %6, align 8
  %16 = getelementptr inbounds %struct.bhndb_hw_priority, %struct.bhndb_hw_priority* %15, i32 0, i32 0
  %17 = call i64 @bhnd_core_matches(%struct.bhnd_core_info* %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.bhndb_hw_priority*, %struct.bhndb_hw_priority** %6, align 8
  store %struct.bhndb_hw_priority* %20, %struct.bhndb_hw_priority** %3, align 8
  br label %26

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.bhndb_hw_priority*, %struct.bhndb_hw_priority** %6, align 8
  %24 = getelementptr inbounds %struct.bhndb_hw_priority, %struct.bhndb_hw_priority* %23, i32 1
  store %struct.bhndb_hw_priority* %24, %struct.bhndb_hw_priority** %6, align 8
  br label %8

25:                                               ; preds = %8
  store %struct.bhndb_hw_priority* null, %struct.bhndb_hw_priority** %3, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = load %struct.bhndb_hw_priority*, %struct.bhndb_hw_priority** %3, align 8
  ret %struct.bhndb_hw_priority* %27
}

declare dso_local i64 @bhnd_core_matches(%struct.bhnd_core_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
