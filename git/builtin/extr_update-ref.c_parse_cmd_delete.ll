; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-ref.c_parse_cmd_delete.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-ref.c_parse_cmd_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.ref_transaction = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"delete: missing <ref>\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@PARSE_SHA1_OLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"delete %s: zero <oldvalue>\00", align 1
@line_termination = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"delete %s: extra input: %s\00", align 1
@update_flags = common dso_local global i32 0, align 4
@msg = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@default_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ref_transaction*, %struct.strbuf*, i8*)* @parse_cmd_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_cmd_delete(%struct.ref_transaction* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca %struct.ref_transaction*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id, align 4
  %10 = alloca i32, align 4
  store %struct.ref_transaction* %0, %struct.ref_transaction** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %13 = call i8* @parse_refname(%struct.strbuf* %12, i8** %6)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @PARSE_SHA1_OLD, align 4
  %22 = call i64 @parse_next_oid(%struct.strbuf* %19, i8** %6, %struct.object_id* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %32

25:                                               ; preds = %18
  %26 = call i64 @is_null_oid(%struct.object_id* %9)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %25
  store i32 1, i32* %10, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* @line_termination, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %50

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi %struct.object_id* [ %9, %48 ], [ null, %49 ]
  %52 = load i32, i32* @update_flags, align 4
  %53 = load i32, i32* @msg, align 4
  %54 = call i64 @ref_transaction_delete(%struct.ref_transaction* %44, i8* %45, %struct.object_id* %51, i32 %52, i32 %53, %struct.strbuf* %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* @default_flags, align 4
  store i32 %61, i32* @update_flags, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @free(i8* %62)
  %64 = call i32 @strbuf_release(%struct.strbuf* %7)
  %65 = load i8*, i8** %6, align 8
  ret i8* %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @parse_refname(%struct.strbuf*, i8**) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i64 @parse_next_oid(%struct.strbuf*, i8**, %struct.object_id*, i8*, i8*, i32) #2

declare dso_local i64 @is_null_oid(%struct.object_id*) #2

declare dso_local i64 @ref_transaction_delete(%struct.ref_transaction*, i8*, %struct.object_id*, i32, i32, %struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
