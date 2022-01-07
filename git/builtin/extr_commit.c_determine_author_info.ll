; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_determine_author_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_determine_author_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ident_split = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"GIT_AUTHOR_NAME\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"GIT_AUTHOR_EMAIL\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"GIT_AUTHOR_DATE\00", align 1
@author_message = common dso_local global i64 0, align 8
@author_message_buffer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"commit '%s' lacks author header\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"commit '%s' has malformed author line\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@force_author = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"malformed --author parameter\00", align 1
@force_date = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"invalid date format: %s\00", align 1
@WANT_AUTHOR_IDENT = common dso_local global i32 0, align 4
@IDENT_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @determine_author_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_author_info(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ident_split, align 8
  %7 = alloca %struct.ident_split, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca %struct.ident_split, align 8
  %12 = alloca %struct.strbuf, align 4
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %13 = call i32 @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = call i8* @xstrdup_or_null(i32 %13)
  store i8* %14, i8** %3, align 8
  %15 = call i32 @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i8* @xstrdup_or_null(i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = call i32 @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i8* @xstrdup_or_null(i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i64, i64* @author_message, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %1
  %22 = load i32, i32* @author_message_buffer, align 4
  %23 = call i8* @find_commit_header(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64* %8)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i64, i64* @author_message, align 8
  %29 = call i32 (i32, ...) @die(i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @split_ident_line(%struct.ident_split* %7, i8* %31, i64 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %37 = load i64, i64* @author_message, align 8
  %38 = call i32 (i32, ...) @die(i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %43, %45
  %47 = call i32 @xmemdupz(i64 %41, i64 %46)
  %48 = call i32 @set_ident_var(i8** %3, i32 %47)
  %49 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %52, %54
  %56 = call i32 @xmemdupz(i64 %50, i64 %55)
  %57 = call i32 @set_ident_var(i8** %4, i32 %56)
  %58 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %39
  %62 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %63 = call i32 @strbuf_addch(%struct.strbuf* %10, i8 signext 64)
  %64 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %67, %69
  %71 = call i32 @strbuf_add(%struct.strbuf* %10, i64 %65, i64 %70)
  %72 = call i32 @strbuf_addch(%struct.strbuf* %10, i8 signext 32)
  %73 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %76, %78
  %80 = call i32 @strbuf_add(%struct.strbuf* %10, i64 %74, i64 %79)
  %81 = call i32 @strbuf_detach(%struct.strbuf* %10, i32* null)
  %82 = call i32 @set_ident_var(i8** %5, i32 %81)
  br label %83

83:                                               ; preds = %61, %39
  br label %84

84:                                               ; preds = %83, %1
  %85 = load i8*, i8** @force_author, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %115

87:                                               ; preds = %84
  %88 = load i8*, i8** @force_author, align 8
  %89 = load i8*, i8** @force_author, align 8
  %90 = call i64 @strlen(i8* %89)
  %91 = call i64 @split_ident_line(%struct.ident_split* %11, i8* %88, i64 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %95 = call i32 (i32, ...) @die(i32 %94)
  br label %96

96:                                               ; preds = %93, %87
  %97 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %11, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %11, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %11, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %100, %102
  %104 = call i32 @xmemdupz(i64 %98, i64 %103)
  %105 = call i32 @set_ident_var(i8** %3, i32 %104)
  %106 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %11, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %11, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %11, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %109, %111
  %113 = call i32 @xmemdupz(i64 %107, i64 %112)
  %114 = call i32 @set_ident_var(i8** %4, i32 %113)
  br label %115

115:                                              ; preds = %96, %84
  %116 = load i64, i64* @force_date, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %120 = load i64, i64* @force_date, align 8
  %121 = call i64 @parse_force_date(i64 %120, %struct.strbuf* %12)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %125 = load i64, i64* @force_date, align 8
  %126 = call i32 (i32, ...) @die(i32 %124, i64 %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = call i32 @strbuf_detach(%struct.strbuf* %12, i32* null)
  %129 = call i32 @set_ident_var(i8** %5, i32 %128)
  br label %130

130:                                              ; preds = %127, %115
  %131 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %132 = load i8*, i8** %3, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = load i32, i32* @WANT_AUTHOR_IDENT, align 4
  %135 = load i8*, i8** %5, align 8
  %136 = load i32, i32* @IDENT_STRICT, align 4
  %137 = call i32 @fmt_ident(i8* %132, i8* %133, i32 %134, i8* %135, i32 %136)
  %138 = call i32 @strbuf_addstr(%struct.strbuf* %131, i32 %137)
  %139 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %140 = call i32 @assert_split_ident(%struct.ident_split* %6, %struct.strbuf* %139)
  %141 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @export_one(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %142, i64 %144, i8 signext 0)
  %146 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @export_one(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %147, i64 %149, i8 signext 0)
  %151 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @export_one(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %152, i64 %154, i8 signext 64)
  %156 = load i8*, i8** %3, align 8
  %157 = call i32 @free(i8* %156)
  %158 = load i8*, i8** %4, align 8
  %159 = call i32 @free(i8* %158)
  %160 = load i8*, i8** %5, align 8
  %161 = call i32 @free(i8* %160)
  ret void
}

declare dso_local i8* @xstrdup_or_null(i32) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i8* @find_commit_header(i32, i8*, i64*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @split_ident_line(%struct.ident_split*, i8*, i64) #1

declare dso_local i32 @set_ident_var(i8**, i32) #1

declare dso_local i32 @xmemdupz(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i64, i64) #1

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @parse_force_date(i64, %struct.strbuf*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @fmt_ident(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @assert_split_ident(%struct.ident_split*, %struct.strbuf*) #1

declare dso_local i32 @export_one(i8*, i64, i64, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
