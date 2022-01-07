; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_softirq_alloc_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_softirq_alloc_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqgroup = type { i32 }
%struct.TYPE_12__ = type { i32*, %struct.grouptask, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.grouptask = type { i32 }
%struct.TYPE_10__ = type { %struct.grouptask }
%struct.TYPE_9__ = type { %struct.grouptask }
%struct.TYPE_11__ = type { i32* }

@qgroup_if_io_tqg = common dso_local global %struct.taskqgroup* null, align 8
@_task_fn_tx = common dso_local global i32* null, align 8
@_task_fn_rx = common dso_local global i32* null, align 8
@qgroup_if_config_tqg = common dso_local global %struct.taskqgroup* null, align 8
@_task_fn_iov = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"unknown net intr type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iflib_softirq_alloc_generic(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.grouptask*, align 8
  %14 = alloca %struct.taskqgroup*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %60 [
    i32 128, label %19
    i32 129, label %36
    i32 130, label %53
  ]

19:                                               ; preds = %6
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 %24
  %26 = bitcast %struct.TYPE_9__* %25 to i8*
  store i8* %26, i8** %16, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store %struct.grouptask* %33, %struct.grouptask** %13, align 8
  %34 = load %struct.taskqgroup*, %struct.taskqgroup** @qgroup_if_io_tqg, align 8
  store %struct.taskqgroup* %34, %struct.taskqgroup** %14, align 8
  %35 = load i32*, i32** @_task_fn_tx, align 8
  store i32* %35, i32** %15, align 8
  br label %62

36:                                               ; preds = %6
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  %43 = bitcast %struct.TYPE_10__* %42 to i8*
  store i8* %43, i8** %16, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store %struct.grouptask* %50, %struct.grouptask** %13, align 8
  %51 = load %struct.taskqgroup*, %struct.taskqgroup** @qgroup_if_io_tqg, align 8
  store %struct.taskqgroup* %51, %struct.taskqgroup** %14, align 8
  %52 = load i32*, i32** @_task_fn_rx, align 8
  store i32* %52, i32** %15, align 8
  br label %62

53:                                               ; preds = %6
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = bitcast %struct.TYPE_12__* %54 to i8*
  store i8* %55, i8** %16, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  store %struct.grouptask* %57, %struct.grouptask** %13, align 8
  %58 = load %struct.taskqgroup*, %struct.taskqgroup** @qgroup_if_config_tqg, align 8
  store %struct.taskqgroup* %58, %struct.taskqgroup** %14, align 8
  %59 = load i32*, i32** @_task_fn_iov, align 8
  store i32* %59, i32** %15, align 8
  br label %62

60:                                               ; preds = %6
  %61 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %53, %36, %19
  %63 = load %struct.grouptask*, %struct.grouptask** %13, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = call i32 @GROUPTASK_INIT(%struct.grouptask* %63, i32 0, i32* %64, i8* %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  br i1 %68, label %69, label %94

69:                                               ; preds = %62
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.grouptask*, %struct.grouptask** %13, align 8
  %75 = load %struct.taskqgroup*, %struct.taskqgroup** %14, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @iflib_irq_set_affinity(%struct.TYPE_12__* %70, %struct.TYPE_11__* %71, i32 %72, i32 %73, %struct.grouptask* %74, %struct.taskqgroup* %75, i8* %76, i8* %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %69
  %82 = load %struct.taskqgroup*, %struct.taskqgroup** %14, align 8
  %83 = load %struct.grouptask*, %struct.grouptask** %13, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @taskqgroup_attach(%struct.taskqgroup* %82, %struct.grouptask* %83, i8* %84, i32* %87, i32* %90, i8* %91)
  br label %93

93:                                               ; preds = %81, %69
  br label %100

94:                                               ; preds = %62
  %95 = load %struct.taskqgroup*, %struct.taskqgroup** %14, align 8
  %96 = load %struct.grouptask*, %struct.grouptask** %13, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @taskqgroup_attach(%struct.taskqgroup* %95, %struct.grouptask* %96, i8* %97, i32* null, i32* null, i8* %98)
  br label %100

100:                                              ; preds = %94, %93
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @GROUPTASK_INIT(%struct.grouptask*, i32, i32*, i8*) #1

declare dso_local i32 @iflib_irq_set_affinity(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, %struct.grouptask*, %struct.taskqgroup*, i8*, i8*) #1

declare dso_local i32 @taskqgroup_attach(%struct.taskqgroup*, %struct.grouptask*, i8*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
