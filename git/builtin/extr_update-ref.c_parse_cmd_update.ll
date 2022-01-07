; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-ref.c_parse_cmd_update.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-ref.c_parse_cmd_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.ref_transaction = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"update: missing <ref>\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@PARSE_SHA1_ALLOW_EMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"update %s: missing <newvalue>\00", align 1
@PARSE_SHA1_OLD = common dso_local global i32 0, align 4
@line_termination = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"update %s: extra input: %s\00", align 1
@update_flags = common dso_local global i32 0, align 4
@create_reflog_flag = common dso_local global i32 0, align 4
@msg = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@default_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ref_transaction*, %struct.strbuf*, i8*)* @parse_cmd_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_cmd_update(%struct.ref_transaction* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca %struct.ref_transaction*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i32, align 4
  store %struct.ref_transaction* %0, %struct.ref_transaction** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %13 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %14 = call i8* @parse_refname(%struct.strbuf* %13, i8** %6)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @PARSE_SHA1_ALLOW_EMPTY, align 4
  %23 = call i64 @parse_next_oid(%struct.strbuf* %20, i8** %6, %struct.object_id* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @PARSE_SHA1_OLD, align 4
  %32 = call i64 @parse_next_oid(%struct.strbuf* %29, i8** %6, %struct.object_id* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @line_termination, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %42, %28
  %47 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %53

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %51
  %54 = phi %struct.object_id* [ %10, %51 ], [ null, %52 ]
  %55 = load i32, i32* @update_flags, align 4
  %56 = load i32, i32* @create_reflog_flag, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @msg, align 4
  %59 = call i64 @ref_transaction_update(%struct.ref_transaction* %47, i8* %48, %struct.object_id* %9, %struct.object_id* %54, i32 %57, i32 %58, %struct.strbuf* %7)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i32, i32* @default_flags, align 4
  store i32 %66, i32* @update_flags, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @free(i8* %67)
  %69 = call i32 @strbuf_release(%struct.strbuf* %7)
  %70 = load i8*, i8** %6, align 8
  ret i8* %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @parse_refname(%struct.strbuf*, i8**) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i64 @parse_next_oid(%struct.strbuf*, i8**, %struct.object_id*, i8*, i8*, i32) #2

declare dso_local i64 @ref_transaction_update(%struct.ref_transaction*, i8*, %struct.object_id*, %struct.object_id*, i32, i32, %struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
