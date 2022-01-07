; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_prepare_include_condition_pattern.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_prepare_include_condition_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@cf = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"relative config include conditionals must come from files\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"how is this possible?\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"**/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*)* @prepare_include_condition_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_include_condition_pattern(%struct.strbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.strbuf, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  %8 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %6, align 4
  %9 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @expand_user_path(i8* %11, i32 1)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %17 = call i32 @strbuf_reset(%struct.strbuf* %16)
  %18 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strbuf_addstr(%struct.strbuf* %18, i8* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @free(i8* %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 46
  br i1 %30, label %31, label %82

31:                                               ; preds = %23
  %32 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @is_dir_sep(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %82

39:                                               ; preds = %31
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42, %39
  %48 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @error(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %97

50:                                               ; preds = %42
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strbuf_realpath(%struct.strbuf* %4, i32 %53, i32 1)
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @find_last_dir_sep(i8* %56)
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %50
  %61 = call i32 @BUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %50
  %63 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %66 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @strbuf_splice(%struct.strbuf* %63, i32 0, i32 1, i8* %65, i32 %72)
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %74 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = add nsw i64 %79, 1
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %6, align 4
  br label %92

82:                                               ; preds = %31, %23
  %83 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @is_absolute_path(i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %90 = call i32 @strbuf_insert(%struct.strbuf* %89, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  br label %91

91:                                               ; preds = %88, %82
  br label %92

92:                                               ; preds = %91, %62
  %93 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %94 = call i32 @add_trailing_starstar_for_dir(%struct.strbuf* %93)
  %95 = call i32 @strbuf_release(%struct.strbuf* %4)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %92, %47
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @expand_user_path(i8*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @is_dir_sep(i8 signext) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_realpath(%struct.strbuf*, i32, i32) #2

declare dso_local i8* @find_last_dir_sep(i8*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @strbuf_splice(%struct.strbuf*, i32, i32, i8*, i32) #2

declare dso_local i32 @is_absolute_path(i8*) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i32) #2

declare dso_local i32 @add_trailing_starstar_for_dir(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
