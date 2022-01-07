; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-ref.c_update_refs_stdin.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-ref.c_update_refs_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.ref_transaction = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"could not read from stdin\00", align 1
@line_termination = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"empty command in input\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"whitespace before command: %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"update \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"create \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"delete \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"verify \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"option \00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"unknown command: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref_transaction*)* @update_refs_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_refs_stdin(%struct.ref_transaction* %0) #0 {
  %2 = alloca %struct.ref_transaction*, align 8
  %3 = alloca %struct.strbuf, align 8
  %4 = alloca i8*, align 8
  store %struct.ref_transaction* %0, %struct.ref_transaction** %2, align 8
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %6 = call i64 @strbuf_read(%struct.strbuf* %3, i32 0, i32 1000)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @die_errno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %87, %10
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = icmp ult i8* %14, %20
  br i1 %21, label %22, label %90

22:                                               ; preds = %13
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @line_termination, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %87

31:                                               ; preds = %22
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isspace(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %86

39:                                               ; preds = %31
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @skip_prefix(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.ref_transaction*, %struct.ref_transaction** %2, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i8* @parse_cmd_update(%struct.ref_transaction* %44, %struct.strbuf* %3, i8* %45)
  store i8* %46, i8** %4, align 8
  br label %85

47:                                               ; preds = %39
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @skip_prefix(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %4)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.ref_transaction*, %struct.ref_transaction** %2, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i8* @parse_cmd_create(%struct.ref_transaction* %52, %struct.strbuf* %3, i8* %53)
  store i8* %54, i8** %4, align 8
  br label %84

55:                                               ; preds = %47
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @skip_prefix(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %4)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.ref_transaction*, %struct.ref_transaction** %2, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i8* @parse_cmd_delete(%struct.ref_transaction* %60, %struct.strbuf* %3, i8* %61)
  store i8* %62, i8** %4, align 8
  br label %83

63:                                               ; preds = %55
  %64 = load i8*, i8** %4, align 8
  %65 = call i64 @skip_prefix(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %4)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.ref_transaction*, %struct.ref_transaction** %2, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i8* @parse_cmd_verify(%struct.ref_transaction* %68, %struct.strbuf* %3, i8* %69)
  store i8* %70, i8** %4, align 8
  br label %82

71:                                               ; preds = %63
  %72 = load i8*, i8** %4, align 8
  %73 = call i64 @skip_prefix(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8*, i8** %4, align 8
  %77 = call i8* @parse_cmd_option(%struct.strbuf* %3, i8* %76)
  store i8* %77, i8** %4, align 8
  br label %81

78:                                               ; preds = %71
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %67
  br label %83

83:                                               ; preds = %82, %59
  br label %84

84:                                               ; preds = %83, %51
  br label %85

85:                                               ; preds = %84, %43
  br label %86

86:                                               ; preds = %85, %36
  br label %87

87:                                               ; preds = %86, %29
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %4, align 8
  br label %13

90:                                               ; preds = %13
  %91 = call i32 @strbuf_release(%struct.strbuf* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i8* @parse_cmd_update(%struct.ref_transaction*, %struct.strbuf*, i8*) #2

declare dso_local i8* @parse_cmd_create(%struct.ref_transaction*, %struct.strbuf*, i8*) #2

declare dso_local i8* @parse_cmd_delete(%struct.ref_transaction*, %struct.strbuf*, i8*) #2

declare dso_local i8* @parse_cmd_verify(%struct.ref_transaction*, %struct.strbuf*, i8*) #2

declare dso_local i8* @parse_cmd_option(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
