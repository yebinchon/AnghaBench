; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_s_update_ref.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_s_update_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_2__ = type { i8* }
%struct.ref = type { i32, i32, i32 }
%struct.ref_transaction = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"GIT_REFLOG_ACTION\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@dry_run = common dso_local global i64 0, align 8
@default_rla = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@TRANSACTION_NAME_CONFLICT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@STORE_REF_ERROR_DF_CONFLICT = common dso_local global i32 0, align 4
@STORE_REF_ERROR_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ref*, i32)* @s_update_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_update_ref(i8* %0, %struct.ref* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ref_transaction*, align 8
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ref* %1, %struct.ref** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %9, align 8
  %15 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %13, align 4
  %16 = load i64, i64* @dry_run, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

19:                                               ; preds = %3
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_rla, i32 0, i32 0), align 8
  store i8* %23, i8** %9, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @xstrfmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %26)
  store i8* %27, i8** %8, align 8
  %28 = call %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf* %11)
  store %struct.ref_transaction* %28, %struct.ref_transaction** %10, align 8
  %29 = load %struct.ref_transaction*, %struct.ref_transaction** %10, align 8
  %30 = icmp ne %struct.ref_transaction* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load %struct.ref_transaction*, %struct.ref_transaction** %10, align 8
  %33 = load %struct.ref*, %struct.ref** %6, align 8
  %34 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ref*, %struct.ref** %6, align 8
  %37 = getelementptr inbounds %struct.ref, %struct.ref* %36, i32 0, i32 1
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.ref*, %struct.ref** %6, align 8
  %42 = getelementptr inbounds %struct.ref, %struct.ref* %41, i32 0, i32 0
  br label %44

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i32* [ %42, %40 ], [ null, %43 ]
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @ref_transaction_update(%struct.ref_transaction* %32, i32 %35, i32* %37, i32* %45, i32 0, i8* %46, %struct.strbuf* %11)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %24
  br label %66

50:                                               ; preds = %44
  %51 = load %struct.ref_transaction*, %struct.ref_transaction** %10, align 8
  %52 = call i32 @ref_transaction_commit(%struct.ref_transaction* %51, %struct.strbuf* %11)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @TRANSACTION_NAME_CONFLICT, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %13, align 4
  br label %66

60:                                               ; preds = %50
  %61 = load %struct.ref_transaction*, %struct.ref_transaction** %10, align 8
  %62 = call i32 @ref_transaction_free(%struct.ref_transaction* %61)
  %63 = call i32 @strbuf_release(%struct.strbuf* %11)
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @free(i8* %64)
  store i32 0, i32* %4, align 4
  br label %83

66:                                               ; preds = %55, %49
  %67 = load %struct.ref_transaction*, %struct.ref_transaction** %10, align 8
  %68 = call i32 @ref_transaction_free(%struct.ref_transaction* %67)
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = call i32 @strbuf_release(%struct.strbuf* %11)
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* @STORE_REF_ERROR_DF_CONFLICT, align 4
  br label %81

79:                                               ; preds = %66
  %80 = load i32, i32* @STORE_REF_ERROR_OTHER, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %60, %18
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @xstrfmt(i8*, i8*, i8*) #1

declare dso_local %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf*) #1

declare dso_local i64 @ref_transaction_update(%struct.ref_transaction*, i32, i32*, i32*, i32, i8*, %struct.strbuf*) #1

declare dso_local i32 @ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #1

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
