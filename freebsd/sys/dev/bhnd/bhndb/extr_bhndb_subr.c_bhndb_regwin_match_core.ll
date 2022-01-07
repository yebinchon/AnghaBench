; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_regwin_match_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_regwin_match_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_regwin = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.bhnd_core_info = type { i64 }

@BHNDB_REGWIN_T_CORE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhndb_regwin_match_core(%struct.bhndb_regwin* %0, %struct.bhnd_core_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhndb_regwin*, align 8
  %5 = alloca %struct.bhnd_core_info*, align 8
  store %struct.bhndb_regwin* %0, %struct.bhndb_regwin** %4, align 8
  store %struct.bhnd_core_info* %1, %struct.bhnd_core_info** %5, align 8
  %6 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %4, align 8
  %7 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BHNDB_REGWIN_T_CORE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %5, align 8
  %14 = call i64 @bhnd_core_class(%struct.bhnd_core_info* %13)
  %15 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %4, align 8
  %16 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %34

22:                                               ; preds = %12
  %23 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %5, align 8
  %24 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %4, align 8
  %27 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %34

33:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32, %21, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @bhnd_core_class(%struct.bhnd_core_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
