; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_regwin_find_best.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_regwin_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_regwin = type { i32 }

@BHNDB_REGWIN_T_DYN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhndb_regwin* @bhndb_regwin_find_best(%struct.bhndb_regwin* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.bhndb_regwin*, align 8
  %10 = alloca %struct.bhndb_regwin*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bhndb_regwin*, align 8
  store %struct.bhndb_regwin* %0, %struct.bhndb_regwin** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %17, align 4
  %27 = call %struct.bhndb_regwin* @bhndb_regwin_find_core(%struct.bhndb_regwin* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  store %struct.bhndb_regwin* %27, %struct.bhndb_regwin** %18, align 8
  %28 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %29 = icmp ne %struct.bhndb_regwin* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  store %struct.bhndb_regwin* %31, %struct.bhndb_regwin** %9, align 8
  br label %37

32:                                               ; preds = %8
  %33 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %10, align 8
  %34 = load i32, i32* @BHNDB_REGWIN_T_DYN, align 4
  %35 = load i32, i32* %17, align 4
  %36 = call %struct.bhndb_regwin* @bhndb_regwin_find_type(%struct.bhndb_regwin* %33, i32 %34, i32 %35)
  store %struct.bhndb_regwin* %36, %struct.bhndb_regwin** %9, align 8
  br label %37

37:                                               ; preds = %32, %30
  %38 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %9, align 8
  ret %struct.bhndb_regwin* %38
}

declare dso_local %struct.bhndb_regwin* @bhndb_regwin_find_core(%struct.bhndb_regwin*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.bhndb_regwin* @bhndb_regwin_find_type(%struct.bhndb_regwin*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
