; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_regwin_find_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_regwin_find_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_regwin = type { i64, i64 }

@BHNDB_REGWIN_T_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhndb_regwin* @bhndb_regwin_find_type(%struct.bhndb_regwin* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bhndb_regwin*, align 8
  %5 = alloca %struct.bhndb_regwin*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bhndb_regwin*, align 8
  store %struct.bhndb_regwin* %0, %struct.bhndb_regwin** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %5, align 8
  store %struct.bhndb_regwin* %9, %struct.bhndb_regwin** %8, align 8
  br label %10

10:                                               ; preds = %31, %3
  %11 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %8, align 8
  %12 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BHNDB_REGWIN_T_INVALID, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %8, align 8
  %18 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %8, align 8
  %24 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %8, align 8
  store %struct.bhndb_regwin* %29, %struct.bhndb_regwin** %4, align 8
  br label %35

30:                                               ; preds = %22, %16
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %8, align 8
  %33 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %32, i32 1
  store %struct.bhndb_regwin* %33, %struct.bhndb_regwin** %8, align 8
  br label %10

34:                                               ; preds = %10
  store %struct.bhndb_regwin* null, %struct.bhndb_regwin** %4, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %4, align 8
  ret %struct.bhndb_regwin* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
