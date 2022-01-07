; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_get_push_ref_states.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_get_push_ref_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, i32, i32, i32, %struct.TYPE_3__*, %struct.ref* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ref_states = type { %struct.TYPE_4__, %struct.remote* }
%struct.TYPE_4__ = type { i32 }
%struct.remote = type { i32, i64 }
%struct.string_list_item = type { %struct.push_info* }
%struct.push_info = type { i32, i32, i32 }

@MATCH_REFS_NONE = common dso_local global i32 0, align 4
@PUSH_STATUS_DELETE = common dso_local global i32 0, align 4
@PUSH_STATUS_UPTODATE = common dso_local global i32 0, align 4
@PUSH_STATUS_CREATE = common dso_local global i32 0, align 4
@PUSH_STATUS_FASTFORWARD = common dso_local global i32 0, align 4
@PUSH_STATUS_OUTOFDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref*, %struct.ref_states*)* @get_push_ref_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_push_ref_states(%struct.ref* %0, %struct.ref_states* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.ref_states*, align 8
  %6 = alloca %struct.remote*, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca %struct.ref*, align 8
  %9 = alloca %struct.ref*, align 8
  %10 = alloca %struct.string_list_item*, align 8
  %11 = alloca %struct.push_info*, align 8
  store %struct.ref* %0, %struct.ref** %4, align 8
  store %struct.ref_states* %1, %struct.ref_states** %5, align 8
  %12 = load %struct.ref_states*, %struct.ref_states** %5, align 8
  %13 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %12, i32 0, i32 1
  %14 = load %struct.remote*, %struct.remote** %13, align 8
  store %struct.remote* %14, %struct.remote** %6, align 8
  %15 = load %struct.remote*, %struct.remote** %6, align 8
  %16 = getelementptr inbounds %struct.remote, %struct.remote* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %138

20:                                               ; preds = %2
  %21 = call %struct.ref* (...) @get_local_heads()
  store %struct.ref* %21, %struct.ref** %8, align 8
  %22 = load %struct.ref*, %struct.ref** %4, align 8
  %23 = call %struct.ref* @copy_ref_list(%struct.ref* %22)
  store %struct.ref* %23, %struct.ref** %9, align 8
  %24 = load %struct.ref*, %struct.ref** %8, align 8
  %25 = load %struct.remote*, %struct.remote** %6, align 8
  %26 = getelementptr inbounds %struct.remote, %struct.remote* %25, i32 0, i32 0
  %27 = load i32, i32* @MATCH_REFS_NONE, align 4
  %28 = call i32 @match_push_refs(%struct.ref* %24, %struct.ref** %9, i32* %26, i32 %27)
  %29 = load %struct.ref_states*, %struct.ref_states** %5, align 8
  %30 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.ref*, %struct.ref** %9, align 8
  store %struct.ref* %32, %struct.ref** %7, align 8
  br label %33

33:                                               ; preds = %129, %20
  %34 = load %struct.ref*, %struct.ref** %7, align 8
  %35 = icmp ne %struct.ref* %34, null
  br i1 %35, label %36, label %133

36:                                               ; preds = %33
  %37 = load %struct.ref*, %struct.ref** %7, align 8
  %38 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %129

42:                                               ; preds = %36
  %43 = load %struct.ref*, %struct.ref** %7, align 8
  %44 = getelementptr inbounds %struct.ref, %struct.ref* %43, i32 0, i32 1
  %45 = load %struct.ref*, %struct.ref** %7, align 8
  %46 = getelementptr inbounds %struct.ref, %struct.ref* %45, i32 0, i32 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = call i32 @oidcpy(i32* %44, i32* %48)
  %50 = load %struct.ref_states*, %struct.ref_states** %5, align 8
  %51 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %50, i32 0, i32 0
  %52 = load %struct.ref*, %struct.ref** %7, align 8
  %53 = getelementptr inbounds %struct.ref, %struct.ref* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @abbrev_branch(i32 %56)
  %58 = call %struct.string_list_item* @string_list_append(%struct.TYPE_4__* %51, i32 %57)
  store %struct.string_list_item* %58, %struct.string_list_item** %10, align 8
  %59 = call %struct.push_info* @xcalloc(i32 1, i32 12)
  %60 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %61 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %60, i32 0, i32 0
  store %struct.push_info* %59, %struct.push_info** %61, align 8
  %62 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %63 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %62, i32 0, i32 0
  %64 = load %struct.push_info*, %struct.push_info** %63, align 8
  store %struct.push_info* %64, %struct.push_info** %11, align 8
  %65 = load %struct.ref*, %struct.ref** %7, align 8
  %66 = getelementptr inbounds %struct.ref, %struct.ref* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.push_info*, %struct.push_info** %11, align 8
  %69 = getelementptr inbounds %struct.push_info, %struct.push_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ref*, %struct.ref** %7, align 8
  %71 = getelementptr inbounds %struct.ref, %struct.ref* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @abbrev_branch(i32 %72)
  %74 = call i32 @xstrdup(i32 %73)
  %75 = load %struct.push_info*, %struct.push_info** %11, align 8
  %76 = getelementptr inbounds %struct.push_info, %struct.push_info* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ref*, %struct.ref** %7, align 8
  %78 = getelementptr inbounds %struct.ref, %struct.ref* %77, i32 0, i32 1
  %79 = call i64 @is_null_oid(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %42
  %82 = load i32, i32* @PUSH_STATUS_DELETE, align 4
  %83 = load %struct.push_info*, %struct.push_info** %11, align 8
  %84 = getelementptr inbounds %struct.push_info, %struct.push_info* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %128

85:                                               ; preds = %42
  %86 = load %struct.ref*, %struct.ref** %7, align 8
  %87 = getelementptr inbounds %struct.ref, %struct.ref* %86, i32 0, i32 0
  %88 = load %struct.ref*, %struct.ref** %7, align 8
  %89 = getelementptr inbounds %struct.ref, %struct.ref* %88, i32 0, i32 1
  %90 = call i64 @oideq(i32* %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @PUSH_STATUS_UPTODATE, align 4
  %94 = load %struct.push_info*, %struct.push_info** %11, align 8
  %95 = getelementptr inbounds %struct.push_info, %struct.push_info* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %127

96:                                               ; preds = %85
  %97 = load %struct.ref*, %struct.ref** %7, align 8
  %98 = getelementptr inbounds %struct.ref, %struct.ref* %97, i32 0, i32 0
  %99 = call i64 @is_null_oid(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @PUSH_STATUS_CREATE, align 4
  %103 = load %struct.push_info*, %struct.push_info** %11, align 8
  %104 = getelementptr inbounds %struct.push_info, %struct.push_info* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  br label %126

105:                                              ; preds = %96
  %106 = load %struct.ref*, %struct.ref** %7, align 8
  %107 = getelementptr inbounds %struct.ref, %struct.ref* %106, i32 0, i32 0
  %108 = call i64 @has_object_file(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load %struct.ref*, %struct.ref** %7, align 8
  %112 = getelementptr inbounds %struct.ref, %struct.ref* %111, i32 0, i32 1
  %113 = load %struct.ref*, %struct.ref** %7, align 8
  %114 = getelementptr inbounds %struct.ref, %struct.ref* %113, i32 0, i32 0
  %115 = call i64 @ref_newer(i32* %112, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @PUSH_STATUS_FASTFORWARD, align 4
  %119 = load %struct.push_info*, %struct.push_info** %11, align 8
  %120 = getelementptr inbounds %struct.push_info, %struct.push_info* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %125

121:                                              ; preds = %110, %105
  %122 = load i32, i32* @PUSH_STATUS_OUTOFDATE, align 4
  %123 = load %struct.push_info*, %struct.push_info** %11, align 8
  %124 = getelementptr inbounds %struct.push_info, %struct.push_info* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %125, %101
  br label %127

127:                                              ; preds = %126, %92
  br label %128

128:                                              ; preds = %127, %81
  br label %129

129:                                              ; preds = %128, %41
  %130 = load %struct.ref*, %struct.ref** %7, align 8
  %131 = getelementptr inbounds %struct.ref, %struct.ref* %130, i32 0, i32 5
  %132 = load %struct.ref*, %struct.ref** %131, align 8
  store %struct.ref* %132, %struct.ref** %7, align 8
  br label %33

133:                                              ; preds = %33
  %134 = load %struct.ref*, %struct.ref** %8, align 8
  %135 = call i32 @free_refs(%struct.ref* %134)
  %136 = load %struct.ref*, %struct.ref** %9, align 8
  %137 = call i32 @free_refs(%struct.ref* %136)
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %133, %19
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.ref* @get_local_heads(...) #1

declare dso_local %struct.ref* @copy_ref_list(%struct.ref*) #1

declare dso_local i32 @match_push_refs(%struct.ref*, %struct.ref**, i32*, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local %struct.string_list_item* @string_list_append(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @abbrev_branch(i32) #1

declare dso_local %struct.push_info* @xcalloc(i32, i32) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i64 @has_object_file(i32*) #1

declare dso_local i64 @ref_newer(i32*, i32*) #1

declare dso_local i32 @free_refs(%struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
