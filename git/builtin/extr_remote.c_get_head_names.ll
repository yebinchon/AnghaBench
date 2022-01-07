; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_get_head_names.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_get_head_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, %struct.ref* }
%struct.ref_states = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.refspec_item = type { i32, i8*, i8*, i64 }

@.str = private unnamed_addr constant [13 x i8] c"refs/heads/*\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref*, %struct.ref_states*)* @get_head_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_head_names(%struct.ref* %0, %struct.ref_states* %1) #0 {
  %3 = alloca %struct.ref*, align 8
  %4 = alloca %struct.ref_states*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca %struct.ref**, align 8
  %9 = alloca %struct.refspec_item, align 8
  store %struct.ref* %0, %struct.ref** %3, align 8
  store %struct.ref_states* %1, %struct.ref_states** %4, align 8
  store %struct.ref* null, %struct.ref** %7, align 8
  store %struct.ref** %7, %struct.ref*** %8, align 8
  %10 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %9, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %15 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.ref*, %struct.ref** %3, align 8
  %18 = call i32 @get_fetch_map(%struct.ref* %17, %struct.refspec_item* %9, %struct.ref*** %8, i32 0)
  %19 = load %struct.ref*, %struct.ref** %3, align 8
  %20 = call i32 @find_ref_by_name(%struct.ref* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.ref*, %struct.ref** %7, align 8
  %22 = call %struct.ref* @guess_remote_head(i32 %20, %struct.ref* %21, i32 1)
  store %struct.ref* %22, %struct.ref** %6, align 8
  %23 = load %struct.ref*, %struct.ref** %6, align 8
  store %struct.ref* %23, %struct.ref** %5, align 8
  br label %24

24:                                               ; preds = %35, %2
  %25 = load %struct.ref*, %struct.ref** %5, align 8
  %26 = icmp ne %struct.ref* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load %struct.ref_states*, %struct.ref_states** %4, align 8
  %29 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %28, i32 0, i32 0
  %30 = load %struct.ref*, %struct.ref** %5, align 8
  %31 = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @abbrev_branch(i32 %32)
  %34 = call i32 @string_list_append(%struct.TYPE_2__* %29, i32 %33)
  br label %35

35:                                               ; preds = %27
  %36 = load %struct.ref*, %struct.ref** %5, align 8
  %37 = getelementptr inbounds %struct.ref, %struct.ref* %36, i32 0, i32 1
  %38 = load %struct.ref*, %struct.ref** %37, align 8
  store %struct.ref* %38, %struct.ref** %5, align 8
  br label %24

39:                                               ; preds = %24
  %40 = load %struct.ref*, %struct.ref** %7, align 8
  %41 = call i32 @free_refs(%struct.ref* %40)
  %42 = load %struct.ref*, %struct.ref** %6, align 8
  %43 = call i32 @free_refs(%struct.ref* %42)
  ret i32 0
}

declare dso_local i32 @get_fetch_map(%struct.ref*, %struct.refspec_item*, %struct.ref***, i32) #1

declare dso_local %struct.ref* @guess_remote_head(i32, %struct.ref*, i32) #1

declare dso_local i32 @find_ref_by_name(%struct.ref*, i8*) #1

declare dso_local i32 @string_list_append(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @abbrev_branch(i32) #1

declare dso_local i32 @free_refs(%struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
