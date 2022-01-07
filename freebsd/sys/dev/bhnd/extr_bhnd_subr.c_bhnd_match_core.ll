; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_match_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_match_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_info = type { i32 }
%struct.bhnd_core_match = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhnd_core_info* @bhnd_match_core(%struct.bhnd_core_info* %0, i64 %1, %struct.bhnd_core_match* %2) #0 {
  %4 = alloca %struct.bhnd_core_info*, align 8
  %5 = alloca %struct.bhnd_core_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bhnd_core_match*, align 8
  %8 = alloca i64, align 8
  store %struct.bhnd_core_info* %0, %struct.bhnd_core_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bhnd_core_match* %2, %struct.bhnd_core_match** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %14, i64 %15
  %17 = load %struct.bhnd_core_match*, %struct.bhnd_core_match** %7, align 8
  %18 = call i64 @bhnd_core_matches(%struct.bhnd_core_info* %16, %struct.bhnd_core_match* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %21, i64 %22
  store %struct.bhnd_core_info* %23, %struct.bhnd_core_info** %4, align 8
  br label %29

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %8, align 8
  br label %9

28:                                               ; preds = %9
  store %struct.bhnd_core_info* null, %struct.bhnd_core_info** %4, align 8
  br label %29

29:                                               ; preds = %28, %20
  %30 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %4, align 8
  ret %struct.bhnd_core_info* %30
}

declare dso_local i64 @bhnd_core_matches(%struct.bhnd_core_info*, %struct.bhnd_core_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
