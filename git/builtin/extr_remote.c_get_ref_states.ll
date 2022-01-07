; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_get_ref_states.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_get_ref_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, %struct.ref*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ref_states = type { %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32*, i32* }
%struct.string_list_item = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Could not get fetch map for refspec %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref*, %struct.ref_states*)* @get_ref_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ref_states(%struct.ref* %0, %struct.ref_states* %1) #0 {
  %3 = alloca %struct.ref*, align 8
  %4 = alloca %struct.ref_states*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.ref**, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca %struct.ref*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.string_list_item*, align 8
  store %struct.ref* %0, %struct.ref** %3, align 8
  store %struct.ref_states* %1, %struct.ref_states** %4, align 8
  store %struct.ref* null, %struct.ref** %5, align 8
  store %struct.ref** %5, %struct.ref*** %6, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %47, %2
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %14 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %12, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %11
  %21 = load %struct.ref*, %struct.ref** %3, align 8
  %22 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %23 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i64 @get_fetch_map(%struct.ref* %21, i32* %30, %struct.ref*** %6, i32 1)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %20
  %34 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %36 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %35, i32 0, i32 3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @die(i32 %34, i32 %44)
  br label %46

46:                                               ; preds = %33, %20
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %11

50:                                               ; preds = %11
  %51 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %52 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %55 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %58 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.ref*, %struct.ref** %5, align 8
  store %struct.ref* %60, %struct.ref** %7, align 8
  br label %61

61:                                               ; preds = %94, %50
  %62 = load %struct.ref*, %struct.ref** %7, align 8
  %63 = icmp ne %struct.ref* %62, null
  br i1 %63, label %64, label %98

64:                                               ; preds = %61
  %65 = load %struct.ref*, %struct.ref** %7, align 8
  %66 = getelementptr inbounds %struct.ref, %struct.ref* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.ref*, %struct.ref** %7, align 8
  %71 = getelementptr inbounds %struct.ref, %struct.ref* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ref_exists(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %69, %64
  %78 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %79 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %78, i32 0, i32 2
  %80 = load %struct.ref*, %struct.ref** %7, align 8
  %81 = getelementptr inbounds %struct.ref, %struct.ref* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @abbrev_branch(i32 %82)
  %84 = call %struct.string_list_item* @string_list_append(%struct.TYPE_8__* %79, i32 %83)
  br label %93

85:                                               ; preds = %69
  %86 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %87 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %86, i32 0, i32 1
  %88 = load %struct.ref*, %struct.ref** %7, align 8
  %89 = getelementptr inbounds %struct.ref, %struct.ref* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @abbrev_branch(i32 %90)
  %92 = call %struct.string_list_item* @string_list_append(%struct.TYPE_8__* %87, i32 %91)
  br label %93

93:                                               ; preds = %85, %77
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.ref*, %struct.ref** %7, align 8
  %96 = getelementptr inbounds %struct.ref, %struct.ref* %95, i32 0, i32 1
  %97 = load %struct.ref*, %struct.ref** %96, align 8
  store %struct.ref* %97, %struct.ref** %7, align 8
  br label %61

98:                                               ; preds = %61
  %99 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %100 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %99, i32 0, i32 3
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.ref*, %struct.ref** %5, align 8
  %104 = call %struct.ref* @get_stale_heads(%struct.TYPE_9__* %102, %struct.ref* %103)
  store %struct.ref* %104, %struct.ref** %8, align 8
  %105 = load %struct.ref*, %struct.ref** %8, align 8
  store %struct.ref* %105, %struct.ref** %7, align 8
  br label %106

106:                                              ; preds = %123, %98
  %107 = load %struct.ref*, %struct.ref** %7, align 8
  %108 = icmp ne %struct.ref* %107, null
  br i1 %108, label %109, label %127

109:                                              ; preds = %106
  %110 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %111 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %110, i32 0, i32 0
  %112 = load %struct.ref*, %struct.ref** %7, align 8
  %113 = getelementptr inbounds %struct.ref, %struct.ref* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @abbrev_branch(i32 %114)
  %116 = call %struct.string_list_item* @string_list_append(%struct.TYPE_8__* %111, i32 %115)
  store %struct.string_list_item* %116, %struct.string_list_item** %10, align 8
  %117 = load %struct.ref*, %struct.ref** %7, align 8
  %118 = getelementptr inbounds %struct.ref, %struct.ref* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @xstrdup(i32 %119)
  %121 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %122 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %109
  %124 = load %struct.ref*, %struct.ref** %7, align 8
  %125 = getelementptr inbounds %struct.ref, %struct.ref* %124, i32 0, i32 1
  %126 = load %struct.ref*, %struct.ref** %125, align 8
  store %struct.ref* %126, %struct.ref** %7, align 8
  br label %106

127:                                              ; preds = %106
  %128 = load %struct.ref*, %struct.ref** %8, align 8
  %129 = call i32 @free_refs(%struct.ref* %128)
  %130 = load %struct.ref*, %struct.ref** %5, align 8
  %131 = call i32 @free_refs(%struct.ref* %130)
  %132 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %133 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %132, i32 0, i32 2
  %134 = call i32 @string_list_sort(%struct.TYPE_8__* %133)
  %135 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %136 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %135, i32 0, i32 1
  %137 = call i32 @string_list_sort(%struct.TYPE_8__* %136)
  %138 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %139 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %138, i32 0, i32 0
  %140 = call i32 @string_list_sort(%struct.TYPE_8__* %139)
  ret i32 0
}

declare dso_local i64 @get_fetch_map(%struct.ref*, i32*, %struct.ref***, i32) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ref_exists(i32) #1

declare dso_local %struct.string_list_item* @string_list_append(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @abbrev_branch(i32) #1

declare dso_local %struct.ref* @get_stale_heads(%struct.TYPE_9__*, %struct.ref*) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @free_refs(%struct.ref*) #1

declare dso_local i32 @string_list_sort(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
