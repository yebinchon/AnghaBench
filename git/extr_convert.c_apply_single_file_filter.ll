; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_apply_single_file_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_apply_single_file_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.async = type { i32, %struct.filter_params*, i32 }
%struct.filter_params = type { i8*, i64, i32, i8*, i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@filter_buffer_or_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"read from external filter '%s' failed\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"external filter '%s' failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32, %struct.strbuf*, i8*)* @apply_single_file_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_single_file_filter(i8* %0, i8* %1, i64 %2, i32 %3, %struct.strbuf* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.strbuf, align 4
  %16 = alloca %struct.async, align 8
  %17 = alloca %struct.filter_params, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.strbuf* %4, %struct.strbuf** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %19 = call i32 @memset(%struct.async* %16, i32 0, i32 24)
  %20 = load i32, i32* @filter_buffer_or_fd, align 4
  %21 = getelementptr inbounds %struct.async, %struct.async* %16, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.async, %struct.async* %16, i32 0, i32 1
  store %struct.filter_params* %17, %struct.filter_params** %22, align 8
  %23 = getelementptr inbounds %struct.async, %struct.async* %16, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %17, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %17, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %17, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %17, i32 0, i32 3
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %17, i32 0, i32 4
  store i8* %32, i8** %33, align 8
  %34 = call i32 @fflush(i32* null)
  %35 = call i64 @start_async(%struct.async* %16)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %75

38:                                               ; preds = %6
  %39 = getelementptr inbounds %struct.async, %struct.async* %16, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @strbuf_read(%struct.strbuf* %15, i32 %40, i32 0)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @error(i32 %44, i8* %45)
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = getelementptr inbounds %struct.async, %struct.async* %16, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @close(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @error(i32 %53, i8* %54)
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = call i64 @finish_async(%struct.async* %16)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @error(i32 %60, i8* %61)
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %68 = call i32 @strbuf_swap(%struct.strbuf* %67, %struct.strbuf* %15)
  br label %69

69:                                               ; preds = %66, %63
  %70 = call i32 @strbuf_release(%struct.strbuf* %15)
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %69, %37
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.async*, i32, i32) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i64 @start_async(%struct.async*) #2

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @close(i32) #2

declare dso_local i64 @finish_async(%struct.async*) #2

declare dso_local i32 @strbuf_swap(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
