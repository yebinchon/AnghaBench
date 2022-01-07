; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_append_ref_to_tracked_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_append_ref_to_tracked_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.ref_states = type { i32, i32 }
%struct.refspec_item = type { i8*, i32 }

@REF_ISSYMREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @append_ref_to_tracked_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_ref_to_tracked_list(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ref_states*, align 8
  %11 = alloca %struct.refspec_item, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.ref_states*
  store %struct.ref_states* %13, %struct.ref_states** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @REF_ISSYMREF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.refspec_item* %11, i32 0, i32 16)
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %11, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load %struct.ref_states*, %struct.ref_states** %10, align 8
  %24 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @remote_find_tracking(i32 %25, %struct.refspec_item* %11)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %19
  %29 = load %struct.ref_states*, %struct.ref_states** %10, align 8
  %30 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %11, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @abbrev_branch(i32 %32)
  %34 = call i32 @string_list_append(i32* %30, i32 %33)
  br label %35

35:                                               ; preds = %28, %19
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @memset(%struct.refspec_item*, i32, i32) #1

declare dso_local i32 @remote_find_tracking(i32, %struct.refspec_item*) #1

declare dso_local i32 @string_list_append(i32*, i32) #1

declare dso_local i32 @abbrev_branch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
