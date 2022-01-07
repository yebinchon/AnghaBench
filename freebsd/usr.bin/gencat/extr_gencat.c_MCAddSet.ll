; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_MCAddSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_MCAddSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct._setT* }
%struct._setT = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct._setT* }

@.str = private unnamed_addr constant [34 x i8] c"setId's must be greater than zero\00", align 1
@NL_SETMAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"setId exceeds limit\00", align 1
@sethead = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@entries = common dso_local global i32 0, align 4
@curSet = common dso_local global %struct._setT* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MCAddSet(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._setT*, align 8
  %4 = alloca %struct._setT*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @NL_SETMAX, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %9
  %16 = load %struct._setT*, %struct._setT** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sethead, i32 0, i32 0), align 8
  store %struct._setT* %16, %struct._setT** %3, align 8
  store %struct._setT* null, %struct._setT** %4, align 8
  br label %17

17:                                               ; preds = %29, %15
  %18 = load %struct._setT*, %struct._setT** %3, align 8
  %19 = icmp ne %struct._setT* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct._setT*, %struct._setT** %3, align 8
  %22 = getelementptr inbounds %struct._setT, %struct._setT* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = load %struct._setT*, %struct._setT** %3, align 8
  store %struct._setT* %30, %struct._setT** %4, align 8
  %31 = load %struct._setT*, %struct._setT** %3, align 8
  %32 = getelementptr inbounds %struct._setT, %struct._setT* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct._setT*, %struct._setT** %33, align 8
  store %struct._setT* %34, %struct._setT** %3, align 8
  br label %17

35:                                               ; preds = %26
  %36 = load %struct._setT*, %struct._setT** %3, align 8
  %37 = icmp ne %struct._setT* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct._setT*, %struct._setT** %3, align 8
  %40 = getelementptr inbounds %struct._setT, %struct._setT* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %67

45:                                               ; preds = %38, %35
  %46 = call %struct._setT* @xmalloc(i32 16)
  store %struct._setT* %46, %struct._setT** %3, align 8
  %47 = load %struct._setT*, %struct._setT** %3, align 8
  %48 = call i32 @memset(%struct._setT* %47, i8 signext 0, i32 16)
  %49 = load %struct._setT*, %struct._setT** %3, align 8
  %50 = getelementptr inbounds %struct._setT, %struct._setT* %49, i32 0, i32 1
  %51 = call i32 @LIST_INIT(i32* %50)
  %52 = load i32, i32* %2, align 4
  %53 = load %struct._setT*, %struct._setT** %3, align 8
  %54 = getelementptr inbounds %struct._setT, %struct._setT* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct._setT*, %struct._setT** %4, align 8
  %56 = icmp eq %struct._setT* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load %struct._setT*, %struct._setT** %3, align 8
  %59 = load i32, i32* @entries, align 4
  %60 = call i32 @LIST_INSERT_HEAD(%struct.TYPE_5__* @sethead, %struct._setT* %58, i32 %59)
  br label %66

61:                                               ; preds = %45
  %62 = load %struct._setT*, %struct._setT** %4, align 8
  %63 = load %struct._setT*, %struct._setT** %3, align 8
  %64 = load i32, i32* @entries, align 4
  %65 = call i32 @LIST_INSERT_AFTER(%struct._setT* %62, %struct._setT* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %57
  br label %67

67:                                               ; preds = %66, %44
  %68 = load %struct._setT*, %struct._setT** %3, align 8
  store %struct._setT* %68, %struct._setT** @curSet, align 8
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct._setT* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct._setT*, i8 signext, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.TYPE_5__*, %struct._setT*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct._setT*, %struct._setT*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
