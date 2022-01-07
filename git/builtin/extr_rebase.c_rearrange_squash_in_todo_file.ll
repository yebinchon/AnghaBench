; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_rearrange_squash_in_todo_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_rearrange_squash_in_todo_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.todo_list = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TODO_LIST_INIT = common dso_local global %struct.todo_list zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"could not read '%s'.\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unusable todo list: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"could not write '%s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rearrange_squash_in_todo_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rearrange_squash_in_todo_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.todo_list, align 4
  %4 = alloca i32, align 4
  %5 = call i8* (...) @rebase_path_todo()
  store i8* %5, i8** %2, align 8
  %6 = bitcast %struct.todo_list* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.todo_list* @TODO_LIST_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %4, align 4
  %7 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %3, i32 0, i32 0
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strbuf_read_file(%struct.TYPE_2__* %7, i8* %8, i32 0)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @error_errno(i32 %12, i8* %13)
  store i32 %14, i32* %1, align 4
  br label %44

15:                                               ; preds = %0
  %16 = load i32, i32* @the_repository, align 4
  %17 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %3, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @todo_list_parse_insn_buffer(i32 %16, i32 %19, %struct.todo_list* %3)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = call i32 @todo_list_release(%struct.todo_list* %3)
  %24 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @error(i32 %24, i8* %25)
  store i32 %26, i32* %1, align 4
  br label %44

27:                                               ; preds = %15
  %28 = call i32 @todo_list_rearrange_squash(%struct.todo_list* %3)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @the_repository, align 4
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @todo_list_write_to_file(i32 %32, %struct.todo_list* %3, i8* %33, i32* null, i32* null, i32 -1, i32 0)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = call i32 @todo_list_release(%struct.todo_list* %3)
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @error_errno(i32 %40, i8* %41)
  store i32 %42, i32* %1, align 4
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %43, %39, %22, %11
  %45 = load i32, i32* %1, align 4
  ret i32 %45
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

declare dso_local i32 @todo_list_rearrange_squash(%struct.todo_list*) #1

declare dso_local i32 @todo_list_write_to_file(i32, %struct.todo_list*, i8*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
