; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_write_refspec_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_write_refspec_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }
%struct.ref = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@option_mirror = common dso_local global i64 0, align 8
@option_bare = common dso_local global i32 0, align 4
@option_single_branch = common dso_local global i64 0, align 8
@option_branch = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"+%s:%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"+%s:%s%s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"remote HEAD points at non-head?\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"+%s*:%s*\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"remote.%s.fetch\00", align 1
@option_origin = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"^$\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"remote.%s.mirror\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ref*, %struct.ref*, %struct.strbuf*)* @write_refspec_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_refspec_config(i8* %0, %struct.ref* %1, %struct.ref* %2, %struct.strbuf* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca %struct.strbuf, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ref* %1, %struct.ref** %6, align 8
  store %struct.ref* %2, %struct.ref** %7, align 8
  store %struct.strbuf* %3, %struct.strbuf** %8, align 8
  %12 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %13 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %14 = load i64, i64* @option_mirror, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @option_bare, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %109, label %19

19:                                               ; preds = %16, %4
  %20 = load i64, i64* @option_single_branch, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %19
  %23 = load i64, i64* @option_mirror, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %75, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @option_branch, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load %struct.ref*, %struct.ref** %6, align 8
  %30 = getelementptr inbounds %struct.ref, %struct.ref* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @starts_with(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.ref*, %struct.ref** %6, align 8
  %36 = getelementptr inbounds %struct.ref, %struct.ref* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.ref*, %struct.ref** %6, align 8
  %39 = getelementptr inbounds %struct.ref, %struct.ref* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %37, i8* %40)
  br label %51

42:                                               ; preds = %28
  %43 = load %struct.ref*, %struct.ref** %6, align 8
  %44 = getelementptr inbounds %struct.ref, %struct.ref* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* @option_branch, align 8
  %50 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %45, i32 %48, i64 %49)
  br label %51

51:                                               ; preds = %42, %34
  br label %74

52:                                               ; preds = %25
  %53 = load %struct.ref*, %struct.ref** %7, align 8
  %54 = icmp ne %struct.ref* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load %struct.ref*, %struct.ref** %7, align 8
  %57 = getelementptr inbounds %struct.ref, %struct.ref* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @skip_prefix(i8* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %11)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = call i32 @BUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %55
  %65 = load %struct.ref*, %struct.ref** %7, align 8
  %66 = getelementptr inbounds %struct.ref, %struct.ref* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %67, i32 %70, i8* %71)
  br label %73

73:                                               ; preds = %64, %52
  br label %74

74:                                               ; preds = %73, %51
  br label %81

75:                                               ; preds = %22, %19
  %76 = load i8*, i8** %5, align 8
  %77 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %76, i32 %79)
  br label %81

81:                                               ; preds = %75, %74
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load i32, i32* @option_origin, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %88)
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @git_config_set_multivar(i32 %91, i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %95 = call i32 @strbuf_reset(%struct.strbuf* %9)
  %96 = load i64, i64* @option_mirror, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %85
  %99 = load i32, i32* @option_origin, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %101)
  %103 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @git_config_set(i32 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %106 = call i32 @strbuf_reset(%struct.strbuf* %9)
  br label %107

107:                                              ; preds = %98, %85
  br label %108

108:                                              ; preds = %107, %81
  br label %109

109:                                              ; preds = %108, %16
  %110 = call i32 @strbuf_release(%struct.strbuf* %9)
  %111 = call i32 @strbuf_release(%struct.strbuf* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @git_config_set_multivar(i32, i32, i8*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @git_config_set(i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
