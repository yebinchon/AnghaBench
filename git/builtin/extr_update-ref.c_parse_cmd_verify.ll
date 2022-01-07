; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-ref.c_parse_cmd_verify.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-ref.c_parse_cmd_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_transaction = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"verify: missing <ref>\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@PARSE_SHA1_OLD = common dso_local global i32 0, align 4
@line_termination = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"verify %s: extra input: %s\00", align 1
@update_flags = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@default_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ref_transaction*, %struct.strbuf*, i8*)* @parse_cmd_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_cmd_verify(%struct.ref_transaction* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca %struct.ref_transaction*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id, align 4
  store %struct.ref_transaction* %0, %struct.ref_transaction** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %12 = call i8* @parse_refname(%struct.strbuf* %11, i8** %6)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @PARSE_SHA1_OLD, align 4
  %21 = call i64 @parse_next_oid(%struct.strbuf* %18, i8** %6, %struct.object_id* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @oidclr(%struct.object_id* %9)
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @line_termination, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @update_flags, align 4
  %40 = call i64 @ref_transaction_verify(%struct.ref_transaction* %37, i8* %38, %struct.object_id* %9, i32 %39, %struct.strbuf* %7)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %36
  %47 = load i32, i32* @default_flags, align 4
  store i32 %47, i32* @update_flags, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @free(i8* %48)
  %50 = call i32 @strbuf_release(%struct.strbuf* %7)
  %51 = load i8*, i8** %6, align 8
  ret i8* %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @parse_refname(%struct.strbuf*, i8**) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i64 @parse_next_oid(%struct.strbuf*, i8**, %struct.object_id*, i8*, i8*, i32) #2

declare dso_local i32 @oidclr(%struct.object_id*) #2

declare dso_local i64 @ref_transaction_verify(%struct.ref_transaction*, i8*, %struct.object_id*, i32, %struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
