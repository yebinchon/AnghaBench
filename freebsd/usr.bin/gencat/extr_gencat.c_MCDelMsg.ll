; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_MCDelMsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_MCDelMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct._msgT* }
%struct._msgT = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct._msgT* }

@curSet = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"you can't delete a message before defining the set\00", align 1
@entries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"specified msg doesn't exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MCDelMsg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._msgT*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curSet, align 8
  %5 = icmp ne %struct.TYPE_6__* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curSet, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct._msgT*, %struct._msgT** %11, align 8
  store %struct._msgT* %12, %struct._msgT** %3, align 8
  br label %13

13:                                               ; preds = %25, %8
  %14 = load %struct._msgT*, %struct._msgT** %3, align 8
  %15 = icmp ne %struct._msgT* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct._msgT*, %struct._msgT** %3, align 8
  %18 = getelementptr inbounds %struct._msgT, %struct._msgT* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i1 [ false, %13 ], [ %21, %16 ]
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = load %struct._msgT*, %struct._msgT** %3, align 8
  %27 = getelementptr inbounds %struct._msgT, %struct._msgT* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct._msgT*, %struct._msgT** %28, align 8
  store %struct._msgT* %29, %struct._msgT** %3, align 8
  br label %13

30:                                               ; preds = %22
  %31 = load %struct._msgT*, %struct._msgT** %3, align 8
  %32 = icmp ne %struct._msgT* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct._msgT*, %struct._msgT** %3, align 8
  %35 = getelementptr inbounds %struct._msgT, %struct._msgT* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct._msgT*, %struct._msgT** %3, align 8
  %41 = getelementptr inbounds %struct._msgT, %struct._msgT* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @free(i32 %42)
  %44 = load %struct._msgT*, %struct._msgT** %3, align 8
  %45 = load i32, i32* @entries, align 4
  %46 = call i32 @LIST_REMOVE(%struct._msgT* %44, i32 %45)
  br label %49

47:                                               ; preds = %33, %30
  %48 = call i32 @warning(i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %39
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct._msgT*, i32) #1

declare dso_local i32 @warning(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
