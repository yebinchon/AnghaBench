; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_convtbl.c_get_tbl_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_convtbl.c_get_tbl_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.convtbl = type { i32 }

@SC_AUTO = common dso_local global i32 0, align 4
@SC_KILOBYTE = common dso_local global i32 0, align 4
@MEGABYTE = common dso_local global i32 0, align 4
@SC_BIT = common dso_local global i32 0, align 4
@convtbl = common dso_local global %struct.convtbl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.convtbl* (i32, i32)* @get_tbl_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.convtbl* @get_tbl_ptr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SC_AUTO, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @SC_AUTO, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SC_AUTO, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @SC_KILOBYTE, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %34, %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MEGABYTE, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SC_BIT, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 10
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %22

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %14
  %41 = load %struct.convtbl*, %struct.convtbl** @convtbl, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.convtbl, %struct.convtbl* %41, i64 %43
  ret %struct.convtbl* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
