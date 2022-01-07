; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit-tree.c_parse_parent_arg_callback.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit-tree.c_parse_parent_arg_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.commit_list** }
%struct.commit_list = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"not a valid object name %s\00", align 1
@OBJ_COMMIT = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_parent_arg_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_parent_arg_callback(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id, align 4
  %8 = alloca %struct.commit_list**, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.option*, %struct.option** %4, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load %struct.commit_list**, %struct.commit_list*** %10, align 8
  store %struct.commit_list** %11, %struct.commit_list*** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @BUG_ON_OPT_NEG_NOARG(i32 %12, i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @get_oid_commit(i8* %15, %struct.object_id* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @die(i32 %19, i8* %20)
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @OBJ_COMMIT, align 4
  %24 = call i32 @assert_oid_type(%struct.object_id* %7, i32 %23)
  %25 = load i32, i32* @the_repository, align 4
  %26 = call i32 @lookup_commit(i32 %25, %struct.object_id* %7)
  %27 = load %struct.commit_list**, %struct.commit_list*** %8, align 8
  %28 = call i32 @new_parent(i32 %26, %struct.commit_list** %27)
  ret i32 0
}

declare dso_local i32 @BUG_ON_OPT_NEG_NOARG(i32, i8*) #1

declare dso_local i64 @get_oid_commit(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @assert_oid_type(%struct.object_id*, i32) #1

declare dso_local i32 @new_parent(i32, %struct.commit_list**) #1

declare dso_local i32 @lookup_commit(i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
