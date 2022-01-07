; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_edit_todo_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_edit_todo_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.todo_list = type { i32 }

@TODO_LIST_INIT = common dso_local global %struct.todo_list zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"could not read '%s'.\00", align 1
@the_repository = common dso_local global i32 0, align 4
@TODO_LIST_SHORTEN_IDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"could not write '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @edit_todo_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edit_todo_file(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.todo_list, align 4
  %6 = alloca %struct.todo_list, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i8* (...) @rebase_path_todo()
  store i8* %8, i8** %4, align 8
  %9 = bitcast %struct.todo_list* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.todo_list* @TODO_LIST_INIT to i8*), i64 4, i1 false)
  %10 = bitcast %struct.todo_list* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.todo_list* @TODO_LIST_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %7, align 4
  %11 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %5, i32 0, i32 0
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strbuf_read_file(i32* %11, i8* %12, i32 0)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @error_errno(i32 %16, i8* %17)
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %5, i32 0, i32 0
  %21 = call i32 @strbuf_stripspace(i32* %20, i32 1)
  %22 = load i32, i32* @the_repository, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @edit_todo_list(i32 %22, %struct.todo_list* %5, %struct.todo_list* %6, i32* null, i32* null, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @the_repository, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @TODO_LIST_SHORTEN_IDS, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i64 @todo_list_write_to_file(i32 %28, %struct.todo_list* %6, i8* %29, i32* null, i32* null, i32 -1, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @error_errno(i32 %37, i8* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %27, %19
  %41 = call i32 @todo_list_release(%struct.todo_list* %5)
  %42 = call i32 @todo_list_release(%struct.todo_list* %6)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i8* @rebase_path_todo(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strbuf_read_file(i32*, i8*, i32) #1

declare dso_local i32 @error_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_stripspace(i32*, i32) #1

declare dso_local i32 @edit_todo_list(i32, %struct.todo_list*, %struct.todo_list*, i32*, i32*, i32) #1

declare dso_local i64 @todo_list_write_to_file(i32, %struct.todo_list*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @todo_list_release(%struct.todo_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
