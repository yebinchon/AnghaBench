; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_get_remote_ref_states.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_get_remote_ref_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_states = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32** }
%struct.transport = type { i32 }
%struct.ref = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"No such remote: '%s'\00", align 1
@GET_REF_STATES = common dso_local global i32 0, align 4
@GET_HEAD_NAMES = common dso_local global i32 0, align 4
@GET_PUSH_REF_STATES = common dso_local global i32 0, align 4
@append_ref_to_tracked_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ref_states*, i32)* @get_remote_ref_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_remote_ref_states(i8* %0, %struct.ref_states* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ref_states*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.transport*, align 8
  %9 = alloca %struct.ref*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ref_states* %1, %struct.ref_states** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.TYPE_3__* @remote_get(i8* %10)
  %12 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %13 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %12, i32 0, i32 2
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %13, align 8
  %14 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %15 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @error(i32 %19, i8* %20)
  store i32 %21, i32* %4, align 4
  br label %91

22:                                               ; preds = %3
  %23 = call i32 (...) @read_branches()
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %22
  %27 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %28 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %31 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %38 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  br label %45

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %36
  %46 = phi i32* [ %43, %36 ], [ null, %44 ]
  %47 = call %struct.transport* @transport_get(%struct.TYPE_3__* %29, i32* %46)
  store %struct.transport* %47, %struct.transport** %8, align 8
  %48 = load %struct.transport*, %struct.transport** %8, align 8
  %49 = call %struct.ref* @transport_get_remote_refs(%struct.transport* %48, i32* null)
  store %struct.ref* %49, %struct.ref** %9, align 8
  %50 = load %struct.transport*, %struct.transport** %8, align 8
  %51 = call i32 @transport_disconnect(%struct.transport* %50)
  %52 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %53 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @GET_REF_STATES, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load %struct.ref*, %struct.ref** %9, align 8
  %60 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %61 = call i32 @get_ref_states(%struct.ref* %59, %struct.ref_states* %60)
  br label %62

62:                                               ; preds = %58, %45
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @GET_HEAD_NAMES, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.ref*, %struct.ref** %9, align 8
  %69 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %70 = call i32 @get_head_names(%struct.ref* %68, %struct.ref_states* %69)
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @GET_PUSH_REF_STATES, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.ref*, %struct.ref** %9, align 8
  %78 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %79 = call i32 @get_push_ref_states(%struct.ref* %77, %struct.ref_states* %78)
  br label %80

80:                                               ; preds = %76, %71
  br label %90

81:                                               ; preds = %22
  %82 = load i32, i32* @append_ref_to_tracked_list, align 4
  %83 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %84 = call i32 @for_each_ref(i32 %82, %struct.ref_states* %83)
  %85 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %86 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %85, i32 0, i32 1
  %87 = call i32 @string_list_sort(i32* %86)
  %88 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %89 = call i32 @get_push_ref_states_noquery(%struct.ref_states* %88)
  br label %90

90:                                               ; preds = %81, %80
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %18
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_3__* @remote_get(i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @read_branches(...) #1

declare dso_local %struct.transport* @transport_get(%struct.TYPE_3__*, i32*) #1

declare dso_local %struct.ref* @transport_get_remote_refs(%struct.transport*, i32*) #1

declare dso_local i32 @transport_disconnect(%struct.transport*) #1

declare dso_local i32 @get_ref_states(%struct.ref*, %struct.ref_states*) #1

declare dso_local i32 @get_head_names(%struct.ref*, %struct.ref_states*) #1

declare dso_local i32 @get_push_ref_states(%struct.ref*, %struct.ref_states*) #1

declare dso_local i32 @for_each_ref(i32, %struct.ref_states*) #1

declare dso_local i32 @string_list_sort(i32*) #1

declare dso_local i32 @get_push_ref_states_noquery(%struct.ref_states*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
