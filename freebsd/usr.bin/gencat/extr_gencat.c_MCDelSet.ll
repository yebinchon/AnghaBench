; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_MCDelSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_MCDelSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct._setT* }
%struct._setT = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct._setT* }
%struct.TYPE_4__ = type { %struct._setT* }
%struct._msgT = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }

@sethead = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@entries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"specified set doesn't exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MCDelSet(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._setT*, align 8
  %4 = alloca %struct._msgT*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct._setT*, %struct._setT** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sethead, i32 0, i32 0), align 8
  store %struct._setT* %5, %struct._setT** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct._setT*, %struct._setT** %3, align 8
  %8 = icmp ne %struct._setT* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load %struct._setT*, %struct._setT** %3, align 8
  %11 = getelementptr inbounds %struct._setT, %struct._setT* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %12, %13
  br label %15

15:                                               ; preds = %9, %6
  %16 = phi i1 [ false, %6 ], [ %14, %9 ]
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17
  %19 = load %struct._setT*, %struct._setT** %3, align 8
  %20 = getelementptr inbounds %struct._setT, %struct._setT* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct._setT*, %struct._setT** %21, align 8
  store %struct._setT* %22, %struct._setT** %3, align 8
  br label %6

23:                                               ; preds = %15
  %24 = load %struct._setT*, %struct._setT** %3, align 8
  %25 = icmp ne %struct._setT* %24, null
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = load %struct._setT*, %struct._setT** %3, align 8
  %28 = getelementptr inbounds %struct._setT, %struct._setT* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load %struct._setT*, %struct._setT** %3, align 8
  %34 = getelementptr inbounds %struct._setT, %struct._setT* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct._setT*, %struct._setT** %35, align 8
  %37 = bitcast %struct._setT* %36 to %struct._msgT*
  store %struct._msgT* %37, %struct._msgT** %4, align 8
  br label %38

38:                                               ; preds = %41, %32
  %39 = load %struct._msgT*, %struct._msgT** %4, align 8
  %40 = icmp ne %struct._msgT* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct._msgT*, %struct._msgT** %4, align 8
  %43 = getelementptr inbounds %struct._msgT, %struct._msgT* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @free(i32 %44)
  %46 = load %struct._msgT*, %struct._msgT** %4, align 8
  %47 = bitcast %struct._msgT* %46 to %struct._setT*
  %48 = load i32, i32* @entries, align 4
  %49 = call i32 @LIST_REMOVE(%struct._setT* %47, i32 %48)
  br label %38

50:                                               ; preds = %38
  %51 = load %struct._setT*, %struct._setT** %3, align 8
  %52 = load i32, i32* @entries, align 4
  %53 = call i32 @LIST_REMOVE(%struct._setT* %51, i32 %52)
  br label %56

54:                                               ; preds = %26, %23
  %55 = call i32 @warning(i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %50
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct._setT*, i32) #1

declare dso_local i32 @warning(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
