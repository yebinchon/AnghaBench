; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_rmnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_rmnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)* }

@NGF_CLOSING = common dso_local global i32 0, align 4
@ng_deadnode = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"shutdown called on deadnode\0A\00", align 1
@NGF_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ng_rmnode(%struct.TYPE_13__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @NGF_CLOSING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %105

17:                                               ; preds = %4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, @ng_deadnode
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %105

22:                                               ; preds = %17
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = call i32 @NG_NODE_REF(%struct.TYPE_13__* %23)
  %25 = load i32, i32* @NGF_INVALID, align 4
  %26 = load i32, i32* @NGF_CLOSING, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %22
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %40, align 8
  %42 = icmp ne i32 (%struct.TYPE_13__*)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = call i32 %48(%struct.TYPE_13__* %49)
  br label %51

51:                                               ; preds = %43, %36, %22
  br label %52

52:                                               ; preds = %57, %51
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = call i32* @LIST_FIRST(i32* %54)
  store i32* %55, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @ng_destroy_hook(i32* %58)
  br label %52

60:                                               ; preds = %52
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = call i32 @ng_flush_input_queue(%struct.TYPE_13__* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = icmp ne %struct.TYPE_12__* %65, null
  br i1 %66, label %67, label %97

67:                                               ; preds = %60
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %71, align 8
  %73 = icmp ne i32 (%struct.TYPE_13__*)* %72, null
  br i1 %73, label %74, label %97

74:                                               ; preds = %67
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = call i32 %79(%struct.TYPE_13__* %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = call i64 @NG_NODE_IS_VALID(%struct.TYPE_13__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %74
  %86 = load i32, i32* @NGF_INVALID, align 4
  %87 = load i32, i32* @NGF_CLOSING, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = call i32 @NG_NODE_UNREF(%struct.TYPE_13__* %94)
  br label %105

96:                                               ; preds = %74
  br label %100

97:                                               ; preds = %67, %60
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = call i32 @NG_NODE_UNREF(%struct.TYPE_13__* %98)
  br label %100

100:                                              ; preds = %97, %96
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = call i32 @ng_unname(%struct.TYPE_13__* %101)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = call i32 @NG_NODE_UNREF(%struct.TYPE_13__* %103)
  br label %105

105:                                              ; preds = %100, %85, %20, %16
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @NG_NODE_REF(%struct.TYPE_13__*) #1

declare dso_local i32* @LIST_FIRST(i32*) #1

declare dso_local i32 @ng_destroy_hook(i32*) #1

declare dso_local i32 @ng_flush_input_queue(%struct.TYPE_13__*) #1

declare dso_local i64 @NG_NODE_IS_VALID(%struct.TYPE_13__*) #1

declare dso_local i32 @NG_NODE_UNREF(%struct.TYPE_13__*) #1

declare dso_local i32 @ng_unname(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
