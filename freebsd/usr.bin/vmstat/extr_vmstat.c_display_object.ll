; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_display_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_display_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_vmobject = type { i8*, i8*, i32, i32, i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"{:resident/%5ju} \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"{:active/%5ju} \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"{:inactive/%5ju} \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"{:refcount/%3d} \00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"{:shadowcount/%3d} \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"UC\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"WC\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"WT\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"WP\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"WB\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"UC-\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"NC\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"DEV\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"PRE\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"{:attribute/%-3s} \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"vn\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"dv\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"ph\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"sg\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"{:type/%-2s} \00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"{:path/%-s}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kinfo_vmobject*)* @display_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_object(%struct.kinfo_vmobject* %0) #0 {
  %2 = alloca %struct.kinfo_vmobject*, align 8
  %3 = alloca i8*, align 8
  store %struct.kinfo_vmobject* %0, %struct.kinfo_vmobject** %2, align 8
  %4 = call i32 @xo_open_instance(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %2, align 8
  %6 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  %10 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %2, align 8
  %11 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @xo_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %15 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %2, align 8
  %16 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  %20 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %2, align 8
  %21 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %22)
  %24 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %2, align 8
  %25 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %26)
  %28 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %2, align 8
  %29 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %42 [
    i32 134, label %31
    i32 130, label %32
    i32 128, label %33
    i32 129, label %34
    i32 131, label %35
    i32 132, label %36
    i32 133, label %37
    i32 136, label %38
    i32 137, label %39
    i32 138, label %40
    i32 135, label %41
  ]

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %43

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %43

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %43

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %43

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %43

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %43

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %43

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %43

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %43

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %43

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %43

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %43

43:                                               ; preds = %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* %44)
  %46 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %2, align 8
  %47 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %59 [
    i32 144, label %49
    i32 147, label %50
    i32 139, label %51
    i32 141, label %52
    i32 146, label %53
    i32 143, label %54
    i32 148, label %55
    i32 142, label %56
    i32 145, label %57
    i32 140, label %58
  ]

49:                                               ; preds = %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %60

50:                                               ; preds = %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %60

51:                                               ; preds = %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %60

52:                                               ; preds = %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %60

53:                                               ; preds = %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %60

54:                                               ; preds = %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %60

55:                                               ; preds = %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %60

56:                                               ; preds = %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %60

57:                                               ; preds = %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %60

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %43, %58
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %60

60:                                               ; preds = %59, %57, %56, %55, %54, %53, %52, %51, %50, %49
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %61)
  %63 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %2, align 8
  %64 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8* %65)
  %67 = call i32 @xo_close_instance(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @xo_emit(i8*, i8*) #1

declare dso_local i32 @xo_close_instance(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
