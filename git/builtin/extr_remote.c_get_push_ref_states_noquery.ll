; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_get_push_ref_states_noquery.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_get_push_ref_states_noquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_states = type { %struct.TYPE_4__, %struct.remote* }
%struct.TYPE_4__ = type { i32 }
%struct.remote = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, %struct.refspec_item* }
%struct.refspec_item = type { i64, i32, i32, i64 }
%struct.string_list_item = type { i64, %struct.push_info* }
%struct.push_info = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"(matching)\00", align 1
@PUSH_STATUS_NOTQUERIED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"(delete)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_states*)* @get_push_ref_states_noquery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_push_ref_states_noquery(%struct.ref_states* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_states*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.remote*, align 8
  %6 = alloca %struct.string_list_item*, align 8
  %7 = alloca %struct.push_info*, align 8
  %8 = alloca %struct.refspec_item*, align 8
  store %struct.ref_states* %0, %struct.ref_states** %3, align 8
  %9 = load %struct.ref_states*, %struct.ref_states** %3, align 8
  %10 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %9, i32 0, i32 1
  %11 = load %struct.remote*, %struct.remote** %10, align 8
  store %struct.remote* %11, %struct.remote** %5, align 8
  %12 = load %struct.remote*, %struct.remote** %5, align 8
  %13 = getelementptr inbounds %struct.remote, %struct.remote* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %122

17:                                               ; preds = %1
  %18 = load %struct.ref_states*, %struct.ref_states** %3, align 8
  %19 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.remote*, %struct.remote** %5, align 8
  %22 = getelementptr inbounds %struct.remote, %struct.remote* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %17
  %27 = load %struct.ref_states*, %struct.ref_states** %3, align 8
  %28 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %27, i32 0, i32 0
  %29 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = call %struct.string_list_item* @string_list_append(%struct.TYPE_4__* %28, i32 %29)
  store %struct.string_list_item* %30, %struct.string_list_item** %6, align 8
  %31 = call i8* @xcalloc(i32 1, i32 24)
  %32 = bitcast i8* %31 to %struct.push_info*
  %33 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %34 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %33, i32 0, i32 1
  store %struct.push_info* %32, %struct.push_info** %34, align 8
  store %struct.push_info* %32, %struct.push_info** %7, align 8
  %35 = load i8*, i8** @PUSH_STATUS_NOTQUERIED, align 8
  %36 = load %struct.push_info*, %struct.push_info** %7, align 8
  %37 = getelementptr inbounds %struct.push_info, %struct.push_info* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %39 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @xstrdup(i64 %40)
  %42 = load %struct.push_info*, %struct.push_info** %7, align 8
  %43 = getelementptr inbounds %struct.push_info, %struct.push_info* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %26, %17
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %118, %44
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.remote*, %struct.remote** %5, align 8
  %48 = getelementptr inbounds %struct.remote, %struct.remote* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %121

52:                                               ; preds = %45
  %53 = load %struct.remote*, %struct.remote** %5, align 8
  %54 = getelementptr inbounds %struct.remote, %struct.remote* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load %struct.refspec_item*, %struct.refspec_item** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %56, i64 %58
  store %struct.refspec_item* %59, %struct.refspec_item** %8, align 8
  %60 = load %struct.refspec_item*, %struct.refspec_item** %8, align 8
  %61 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load %struct.ref_states*, %struct.ref_states** %3, align 8
  %66 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %65, i32 0, i32 0
  %67 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %68 = call %struct.string_list_item* @string_list_append(%struct.TYPE_4__* %66, i32 %67)
  store %struct.string_list_item* %68, %struct.string_list_item** %6, align 8
  br label %88

69:                                               ; preds = %52
  %70 = load %struct.refspec_item*, %struct.refspec_item** %8, align 8
  %71 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @strlen(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.ref_states*, %struct.ref_states** %3, align 8
  %77 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %76, i32 0, i32 0
  %78 = load %struct.refspec_item*, %struct.refspec_item** %8, align 8
  %79 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.string_list_item* @string_list_append(%struct.TYPE_4__* %77, i32 %80)
  store %struct.string_list_item* %81, %struct.string_list_item** %6, align 8
  br label %87

82:                                               ; preds = %69
  %83 = load %struct.ref_states*, %struct.ref_states** %3, align 8
  %84 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %83, i32 0, i32 0
  %85 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %86 = call %struct.string_list_item* @string_list_append(%struct.TYPE_4__* %84, i32 %85)
  store %struct.string_list_item* %86, %struct.string_list_item** %6, align 8
  br label %87

87:                                               ; preds = %82, %75
  br label %88

88:                                               ; preds = %87, %64
  %89 = call i8* @xcalloc(i32 1, i32 24)
  %90 = bitcast i8* %89 to %struct.push_info*
  %91 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %92 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %91, i32 0, i32 1
  store %struct.push_info* %90, %struct.push_info** %92, align 8
  store %struct.push_info* %90, %struct.push_info** %7, align 8
  %93 = load %struct.refspec_item*, %struct.refspec_item** %8, align 8
  %94 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.push_info*, %struct.push_info** %7, align 8
  %97 = getelementptr inbounds %struct.push_info, %struct.push_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i8*, i8** @PUSH_STATUS_NOTQUERIED, align 8
  %99 = load %struct.push_info*, %struct.push_info** %7, align 8
  %100 = getelementptr inbounds %struct.push_info, %struct.push_info* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.refspec_item*, %struct.refspec_item** %8, align 8
  %102 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %88
  %106 = load %struct.refspec_item*, %struct.refspec_item** %8, align 8
  %107 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  br label %113

109:                                              ; preds = %88
  %110 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %111 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i64 [ %108, %105 ], [ %112, %109 ]
  %115 = call i8* @xstrdup(i64 %114)
  %116 = load %struct.push_info*, %struct.push_info** %7, align 8
  %117 = getelementptr inbounds %struct.push_info, %struct.push_info* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %45

121:                                              ; preds = %45
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %16
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.string_list_item* @string_list_append(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i8* @xstrdup(i64) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
