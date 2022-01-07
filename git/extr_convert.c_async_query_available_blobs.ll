; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_async_query_available_blobs.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_async_query_available_blobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list = type { i32 }
%struct.cmd2process = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.child_process }
%struct.child_process = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@subprocess_map_initialized = common dso_local global i32 0, align 4
@subprocess_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"external filter '%s' is not available anymore although not all paths have been filtered\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"command=list_available_blobs\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pathname=\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"success\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @async_query_available_blobs(i8* %0, %struct.string_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cmd2process*, align 8
  %9 = alloca %struct.child_process*, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  %12 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = load i32, i32* @subprocess_map_initialized, align 4
  %14 = call i32 @assert(i32 %13)
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @subprocess_find_entry(i32* @subprocess_map, i8* %15)
  %17 = inttoptr i64 %16 to %struct.cmd2process*
  store %struct.cmd2process* %17, %struct.cmd2process** %8, align 8
  %18 = load %struct.cmd2process*, %struct.cmd2process** %8, align 8
  %19 = icmp ne %struct.cmd2process* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = call i32 @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @error(i32 %21, i8* %22)
  store i32 0, i32* %3, align 4
  br label %89

24:                                               ; preds = %2
  %25 = load %struct.cmd2process*, %struct.cmd2process** %8, align 8
  %26 = getelementptr inbounds %struct.cmd2process, %struct.cmd2process* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.child_process* %27, %struct.child_process** %9, align 8
  %28 = load i32, i32* @SIGPIPE, align 4
  %29 = load i32, i32* @SIG_IGN, align 4
  %30 = call i32 @sigchain_push(i32 %28, i32 %29)
  %31 = load %struct.child_process*, %struct.child_process** %9, align 8
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @packet_write_fmt_gently(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %76

38:                                               ; preds = %24
  %39 = load %struct.child_process*, %struct.child_process** %9, align 8
  %40 = getelementptr inbounds %struct.child_process, %struct.child_process* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @packet_flush_gently(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %76

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %63, %46
  %48 = load %struct.child_process*, %struct.child_process** %9, align 8
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @packet_read_line(i32 %50, i32* null)
  store i8* %51, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @skip_prefix(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %11)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.string_list*, %struct.string_list** %5, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @xstrdup(i8* %59)
  %61 = call i32 @string_list_insert(%struct.string_list* %58, i32 %60)
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %57
  br label %47

64:                                               ; preds = %47
  %65 = load %struct.child_process*, %struct.child_process** %9, align 8
  %66 = getelementptr inbounds %struct.child_process, %struct.child_process* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @subprocess_read_status(i32 %67, %struct.strbuf* %10)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %76

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @strcmp(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %71, %45, %37
  %77 = load i32, i32* @SIGPIPE, align 4
  %78 = call i32 @sigchain_pop(i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.cmd2process*, %struct.cmd2process** %8, align 8
  %83 = call i32 @handle_filter_error(%struct.strbuf* %10, %struct.cmd2process* %82, i32 0)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %20
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @subprocess_find_entry(i32*, i8*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @sigchain_push(i32, i32) #2

declare dso_local i32 @packet_write_fmt_gently(i32, i8*) #2

declare dso_local i32 @packet_flush_gently(i32) #2

declare dso_local i8* @packet_read_line(i32, i32*) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @string_list_insert(%struct.string_list*, i32) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @subprocess_read_status(i32, %struct.strbuf*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @sigchain_pop(i32) #2

declare dso_local i32 @handle_filter_error(%struct.strbuf*, %struct.cmd2process*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
