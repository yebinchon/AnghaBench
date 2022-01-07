; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_regwin_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_regwin_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_regwin = type { i64 }

@BHNDB_REGWIN_T_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bhndb_regwin_count(%struct.bhndb_regwin* %0, i64 %1) #0 {
  %3 = alloca %struct.bhndb_regwin*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bhndb_regwin*, align 8
  %6 = alloca i64, align 8
  store %struct.bhndb_regwin* %0, %struct.bhndb_regwin** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %3, align 8
  store %struct.bhndb_regwin* %7, %struct.bhndb_regwin** %5, align 8
  br label %8

8:                                                ; preds = %28, %2
  %9 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %5, align 8
  %10 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BHNDB_REGWIN_T_INVALID, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @BHNDB_REGWIN_T_INVALID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %5, align 8
  %20 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %14
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %5, align 8
  %30 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %29, i32 1
  store %struct.bhndb_regwin* %30, %struct.bhndb_regwin** %5, align 8
  br label %8

31:                                               ; preds = %8
  %32 = load i64, i64* %6, align 8
  ret i64 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
