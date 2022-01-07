; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_replace.c_replace_object_oid.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_replace.c_replace_object_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }
%struct.ref_transaction = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [136 x i8] c"Objects must be of the same type.\0A'%s' points to a replaced object of type '%s'\0Awhile '%s' points to a replacement object of type '%s'.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i8*, %struct.object_id*, i32)* @replace_object_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_object_oid(i8* %0, %struct.object_id* %1, i8* %2, %struct.object_id* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.object_id, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.strbuf, align 4
  %16 = alloca %struct.ref_transaction*, align 8
  %17 = alloca %struct.strbuf, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.object_id* %1, %struct.object_id** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %20 = bitcast %struct.strbuf* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %18, align 4
  %21 = load i32, i32* @the_repository, align 4
  %22 = load %struct.object_id*, %struct.object_id** %8, align 8
  %23 = call i32 @oid_object_info(i32 %21, %struct.object_id* %22, i32* null)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @the_repository, align 4
  %25 = load %struct.object_id*, %struct.object_id** %10, align 8
  %26 = call i32 @oid_object_info(i32 %24, %struct.object_id* %25, i32* null)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = call i32 @_(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str, i64 0, i64 0))
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i8* @type_name(i32 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i8* @type_name(i32 %41)
  %43 = call i32 (i8*, i8*, ...) @error(i8* %36, i8* %37, i8* %39, i8* %40, i8* %42)
  store i32 %43, i32* %6, align 4
  br label %77

44:                                               ; preds = %29, %5
  %45 = load %struct.object_id*, %struct.object_id** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @check_ref_valid(%struct.object_id* %45, %struct.object_id* %12, %struct.strbuf* %15, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @strbuf_release(%struct.strbuf* %15)
  store i32 -1, i32* %6, align 4
  br label %77

51:                                               ; preds = %44
  %52 = call %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf* %17)
  store %struct.ref_transaction* %52, %struct.ref_transaction** %16, align 8
  %53 = load %struct.ref_transaction*, %struct.ref_transaction** %16, align 8
  %54 = icmp ne %struct.ref_transaction* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.ref_transaction*, %struct.ref_transaction** %16, align 8
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.object_id*, %struct.object_id** %10, align 8
  %60 = call i64 @ref_transaction_update(%struct.ref_transaction* %56, i32 %58, %struct.object_id* %59, %struct.object_id* %12, i32 0, i32* null, %struct.strbuf* %17)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load %struct.ref_transaction*, %struct.ref_transaction** %16, align 8
  %64 = call i64 @ref_transaction_commit(%struct.ref_transaction* %63, %struct.strbuf* %17)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62, %55, %51
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %66, %62
  %73 = load %struct.ref_transaction*, %struct.ref_transaction** %16, align 8
  %74 = call i32 @ref_transaction_free(%struct.ref_transaction* %73)
  %75 = call i32 @strbuf_release(%struct.strbuf* %15)
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %72, %49, %33
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #2

declare dso_local i32 @error(i8*, i8*, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @type_name(i32) #2

declare dso_local i64 @check_ref_valid(%struct.object_id*, %struct.object_id*, %struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf*) #2

declare dso_local i64 @ref_transaction_update(%struct.ref_transaction*, i32, %struct.object_id*, %struct.object_id*, i32, i32*, %struct.strbuf*) #2

declare dso_local i64 @ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #2

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
