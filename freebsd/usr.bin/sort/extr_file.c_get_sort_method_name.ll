; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_get_sort_method_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_get_sort_method_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SORT_MERGESORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mergesort\00", align 1
@sort_opts_vals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SORT_RADIXSORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"radixsort\00", align 1
@SORT_HEAPSORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"heapsort\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"quicksort\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_sort_method_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_sort_method_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SORT_MERGESORT, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %19

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 0), align 8
  %10 = load i64, i64* @SORT_RADIXSORT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %19

13:                                               ; preds = %8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 0), align 8
  %15 = load i64, i64* @SORT_HEAPSORT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %19

18:                                               ; preds = %13
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %19

19:                                               ; preds = %18, %17, %12, %7
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
