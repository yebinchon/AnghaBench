; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_current_config_origin_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_current_config_origin_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@current_config_kvi = common dso_local global %struct.TYPE_3__* null, align 8
@cf = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"current_config_origin_type called outside config callback\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"submodule-blob\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"command line\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"unknown config origin type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @current_config_origin_type() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_config_kvi, align 8
  %4 = icmp ne %struct.TYPE_3__* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_config_kvi, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %2, align 4
  br label %19

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cf, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cf, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  br label %18

16:                                               ; preds = %9
  %17 = call i32 @BUG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12
  br label %19

19:                                               ; preds = %18, %5
  %20 = load i32, i32* %2, align 4
  switch i32 %20, label %26 [
    i32 132, label %21
    i32 130, label %22
    i32 129, label %23
    i32 128, label %24
    i32 131, label %25
  ]

21:                                               ; preds = %19
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %28

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %28

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %28

24:                                               ; preds = %19
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %28

25:                                               ; preds = %19
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %28

26:                                               ; preds = %19
  %27 = call i32 @BUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %28

28:                                               ; preds = %21, %22, %23, %24, %25, %26
  %29 = load i8*, i8** %1, align 8
  ret i8* %29
}

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
