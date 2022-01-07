; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_verify-tag.c_cmd_verify_tag.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_verify-tag.c_cmd_verify_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_format = type { i64 }
%struct.option = type { i32 }
%struct.object_id = type { i32 }

@REF_FORMAT_INIT = common dso_local global %struct.ref_format zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"print tag contents\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"print raw gpg status output\00", align 1
@GPG_VERIFY_RAW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"format to use for the output\00", align 1
@git_verify_tag_config = common dso_local global i32 0, align 4
@verify_tag_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_ARGV0 = common dso_local global i32 0, align 4
@GPG_VERIFY_VERBOSE = common dso_local global i32 0, align 4
@GPG_VERIFY_OMIT_STATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"tag '%s' not found.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_verify_tag(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ref_format, align 8
  %12 = alloca [4 x %struct.option], align 16
  %13 = alloca %struct.object_id, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = bitcast %struct.ref_format* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.ref_format* @REF_FORMAT_INIT to i8*), i64 8, i1 false)
  %16 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %12, i64 0, i64 0
  %17 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @OPT__VERBOSE(i32* %8, i32 %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %21 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @GPG_VERIFY_RAW, align 4
  %23 = call i32 @OPT_BIT(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %26 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %11, i32 0, i32 0
  %27 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64* %26, i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %32 = call i32 (...) @OPT_END()
  %33 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @git_verify_tag_config, align 4
  %35 = call i32 @git_config(i32 %34, i32* null)
  %36 = load i32, i32* %4, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %12, i64 0, i64 0
  %40 = load i32, i32* @verify_tag_usage, align 4
  %41 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %42 = call i32 @parse_options(i32 %36, i8** %37, i8* %38, %struct.option* %39, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %3
  %47 = load i32, i32* @verify_tag_usage, align 4
  %48 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %12, i64 0, i64 0
  %49 = call i32 @usage_with_options(i32 %47, %struct.option* %48)
  br label %50

50:                                               ; preds = %46, %3
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @GPG_VERIFY_VERBOSE, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %11, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = call i64 @verify_ref_format(%struct.ref_format* %11)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @verify_tag_usage, align 4
  %66 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %12, i64 0, i64 0
  %67 = call i32 @usage_with_options(i32 %65, %struct.option* %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* @GPG_VERIFY_OMIT_STATUS, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %57
  br label %73

73:                                               ; preds = %107, %99, %87, %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %73
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8*, i8** %78, i64 %81
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %14, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = call i64 @get_oid(i8* %84, %struct.object_id* %13)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %77
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %9, align 4
  br label %73

94:                                               ; preds = %77
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @gpg_verify_tag(%struct.object_id* %13, i8* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 1, i32* %9, align 4
  br label %73

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %11, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i8*, i8** %14, align 8
  %106 = call i32 @pretty_print_ref(i8* %105, %struct.object_id* %13, %struct.ref_format* %11)
  br label %107

107:                                              ; preds = %104, %100
  br label %73

108:                                              ; preds = %73
  %109 = load i32, i32* %9, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT__VERBOSE(i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_BIT(i32, i8*, i32*, i32, i32) #2

declare dso_local i32 @OPT_STRING(i32, i8*, i64*, i32, i32) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i64 @verify_ref_format(%struct.ref_format*) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local i64 @gpg_verify_tag(%struct.object_id*, i8*, i32) #2

declare dso_local i32 @pretty_print_ref(i8*, %struct.object_id*, %struct.ref_format*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
