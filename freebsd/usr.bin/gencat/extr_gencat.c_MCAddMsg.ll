; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_MCAddMsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_MCAddMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct._msgT* }
%struct._msgT = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct._msgT* }

@curSet = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"can't specify a message when no set exists\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"msgId's must be greater than zero\00", align 1
@NL_MSGMAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"msgID exceeds limit\00", align 1
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MCAddMsg(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct._msgT*, align 8
  %6 = alloca %struct._msgT*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curSet, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @NL_MSGMAX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curSet, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct._msgT*, %struct._msgT** %25, align 8
  store %struct._msgT* %26, %struct._msgT** %5, align 8
  store %struct._msgT* null, %struct._msgT** %6, align 8
  br label %27

27:                                               ; preds = %39, %22
  %28 = load %struct._msgT*, %struct._msgT** %5, align 8
  %29 = icmp ne %struct._msgT* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct._msgT*, %struct._msgT** %5, align 8
  %32 = getelementptr inbounds %struct._msgT, %struct._msgT* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %33, %34
  br label %36

36:                                               ; preds = %30, %27
  %37 = phi i1 [ false, %27 ], [ %35, %30 ]
  br i1 %37, label %38, label %45

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38
  %40 = load %struct._msgT*, %struct._msgT** %5, align 8
  store %struct._msgT* %40, %struct._msgT** %6, align 8
  %41 = load %struct._msgT*, %struct._msgT** %5, align 8
  %42 = getelementptr inbounds %struct._msgT, %struct._msgT* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct._msgT*, %struct._msgT** %43, align 8
  store %struct._msgT* %44, %struct._msgT** %5, align 8
  br label %27

45:                                               ; preds = %36
  %46 = load %struct._msgT*, %struct._msgT** %5, align 8
  %47 = icmp ne %struct._msgT* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct._msgT*, %struct._msgT** %5, align 8
  %50 = getelementptr inbounds %struct._msgT, %struct._msgT* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct._msgT*, %struct._msgT** %5, align 8
  %56 = getelementptr inbounds %struct._msgT, %struct._msgT* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @free(i32 %57)
  br label %77

59:                                               ; preds = %48, %45
  %60 = call %struct._msgT* @xmalloc(i32 16)
  store %struct._msgT* %60, %struct._msgT** %5, align 8
  %61 = load %struct._msgT*, %struct._msgT** %5, align 8
  %62 = call i32 @memset(%struct._msgT* %61, i8 signext 0, i32 16)
  %63 = load %struct._msgT*, %struct._msgT** %6, align 8
  %64 = icmp eq %struct._msgT* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curSet, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct._msgT*, %struct._msgT** %5, align 8
  %69 = load i32, i32* @entries, align 4
  %70 = call i32 @LIST_INSERT_HEAD(%struct.TYPE_6__* %67, %struct._msgT* %68, i32 %69)
  br label %76

71:                                               ; preds = %59
  %72 = load %struct._msgT*, %struct._msgT** %6, align 8
  %73 = load %struct._msgT*, %struct._msgT** %5, align 8
  %74 = load i32, i32* @entries, align 4
  %75 = call i32 @LIST_INSERT_AFTER(%struct._msgT* %72, %struct._msgT* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %65
  br label %77

77:                                               ; preds = %76, %54
  %78 = load i32, i32* %3, align 4
  %79 = load %struct._msgT*, %struct._msgT** %5, align 8
  %80 = getelementptr inbounds %struct._msgT, %struct._msgT* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @xstrdup(i8* %81)
  %83 = load %struct._msgT*, %struct._msgT** %5, align 8
  %84 = getelementptr inbounds %struct._msgT, %struct._msgT* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local %struct._msgT* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct._msgT*, i8 signext, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.TYPE_6__*, %struct._msgT*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct._msgT*, %struct._msgT*, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
