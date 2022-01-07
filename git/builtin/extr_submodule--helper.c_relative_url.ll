; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_relative_url.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_relative_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"./%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @relative_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @relative_url(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @xstrdup(i8* %14)
  store i8* %15, i8** %11, align 8
  %16 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %17 = load i8*, i8** %11, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %13, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i64, i64* %13, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @is_dir_sep(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %13, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %26, %3
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @url_is_local_not_ssh(i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @is_absolute_path(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  store i32 0, i32* %8, align 4
  br label %56

40:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @starts_with_dot_slash(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %11, align 8
  %46 = call i64 @starts_with_dot_dot_slash(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = call i32 @strbuf_reset(%struct.strbuf* %12)
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @free(i8* %52)
  %54 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %48, %44, %40
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %80, %56
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @starts_with_dot_dot_slash(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  store i8* %66, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @chop_last_dir(i8** %11, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %80

71:                                               ; preds = %60
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @starts_with_dot_slash(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8* %77, i8** %6, align 8
  br label %79

78:                                               ; preds = %71
  br label %81

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %64
  br label %57

81:                                               ; preds = %78, %57
  %82 = call i32 @strbuf_reset(%struct.strbuf* %12)
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %83, i8* %87, i8* %88)
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 @ends_with(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, 1
  %97 = call i32 @strbuf_setlen(%struct.strbuf* %12, i64 %96)
  br label %98

98:                                               ; preds = %93, %81
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @free(i8* %99)
  %101 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @starts_with_dot_slash(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = call i8* @xstrdup(i8* %108)
  store i8* %109, i8** %10, align 8
  br label %114

110:                                              ; preds = %98
  %111 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* @xstrdup(i8* %112)
  store i8* %113, i8** %10, align 8
  br label %114

114:                                              ; preds = %110, %105
  %115 = call i32 @strbuf_reset(%struct.strbuf* %12)
  %116 = load i8*, i8** %7, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118, %114
  %122 = load i8*, i8** %10, align 8
  store i8* %122, i8** %4, align 8
  br label %130

123:                                              ; preds = %118
  %124 = load i8*, i8** %7, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %124, i8* %125)
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @free(i8* %127)
  %129 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  store i8* %129, i8** %4, align 8
  br label %130

130:                                              ; preds = %123, %121
  %131 = load i8*, i8** %4, align 8
  ret i8* %131
}

declare dso_local i8* @xstrdup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @is_dir_sep(i8 signext) #1

declare dso_local i32 @url_is_local_not_ssh(i8*) #1

declare dso_local i64 @is_absolute_path(i8*) #1

declare dso_local i64 @starts_with_dot_slash(i8*) #1

declare dso_local i64 @starts_with_dot_dot_slash(i8*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @chop_last_dir(i8**, i32) #1

declare dso_local i64 @ends_with(i8*, i8*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
