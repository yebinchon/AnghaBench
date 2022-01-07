; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_transform_todo_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_transform_todo_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.todo_list = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TODO_LIST_INIT = common dso_local global %struct.todo_list zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"could not read '%s'.\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unusable todo list: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"could not write '%s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @transform_todo_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transform_todo_file(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.todo_list, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i8* (...) @rebase_path_todo()
  store i8* %7, i8** %4, align 8
  %8 = bitcast %struct.todo_list* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.todo_list* @TODO_LIST_INIT to i8*), i64 4, i1 false)
  %9 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %5, i32 0, i32 0
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strbuf_read_file(%struct.TYPE_2__* %9, i8* %10, i32 0)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @error_errno(i32 %14, i8* %15)
  store i32 %16, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load i32, i32* @the_repository, align 4
  %19 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %5, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @todo_list_parse_insn_buffer(i32 %18, i32 %21, %struct.todo_list* %5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = call i32 @todo_list_release(%struct.todo_list* %5)
  %26 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @error(i32 %26, i8* %27)
  store i32 %28, i32* %2, align 4
  br label %42

29:                                               ; preds = %17
  %30 = load i32, i32* @the_repository, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @todo_list_write_to_file(i32 %30, %struct.todo_list* %5, i8* %31, i32* null, i32* null, i32 -1, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = call i32 @todo_list_release(%struct.todo_list* %5)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @error_errno(i32 %38, i8* %39)
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %37, %24, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i8* @rebase_path_todo(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strbuf_read_file(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @error_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @todo_list_parse_insn_buffer(i32, i32, %struct.todo_list*) #1

declare dso_local i32 @todo_list_release(%struct.todo_list*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @todo_list_write_to_file(i32, %struct.todo_list*, i8*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
