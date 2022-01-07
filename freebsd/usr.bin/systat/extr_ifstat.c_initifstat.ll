; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ifstat.c_initifstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ifstat.c_initifstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_stat = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@curlist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initifstat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.if_stat*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.if_stat* null, %struct.if_stat** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %5 = call i64 (...) @getifnum()
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp sle i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %55

9:                                                ; preds = %0
  %10 = call i32 @SLIST_INIT(i32* @curlist)
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %50, %9
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  %16 = call i64 @calloc(i32 1, i32 24)
  %17 = inttoptr i64 %16 to %struct.if_stat*
  store %struct.if_stat* %17, %struct.if_stat** %2, align 8
  %18 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %19 = icmp eq %struct.if_stat* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @IFSTAT_ERR(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %24 = load i32, i32* @link, align 4
  %25 = call i32 @SLIST_INSERT_HEAD(i32* @curlist, %struct.if_stat* %23, i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %26, 1
  %28 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %29 = getelementptr inbounds %struct.if_stat, %struct.if_stat* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %31 = getelementptr inbounds %struct.if_stat, %struct.if_stat* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %34 = getelementptr inbounds %struct.if_stat, %struct.if_stat* %33, i32 0, i32 2
  %35 = call i32 @getifmibdata(i64 %32, %struct.TYPE_4__* %34)
  %36 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %37 = call i32 @right_align_string(%struct.if_stat* %36)
  %38 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %39 = getelementptr inbounds %struct.if_stat, %struct.if_stat* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %41 = getelementptr inbounds %struct.if_stat, %struct.if_stat* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %22
  %47 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %48 = getelementptr inbounds %struct.if_stat, %struct.if_stat* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %22
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %4, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %4, align 8
  br label %11

53:                                               ; preds = %11
  %54 = call i32 (...) @sort_interface_list()
  store i32 1, i32* %1, align 4
  br label %55

55:                                               ; preds = %53, %8
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local i64 @getifnum(...) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @IFSTAT_ERR(i32, i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.if_stat*, i32) #1

declare dso_local i32 @getifmibdata(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @right_align_string(%struct.if_stat*) #1

declare dso_local i32 @sort_interface_list(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
