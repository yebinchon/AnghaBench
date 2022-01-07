; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_cat-file.c_filter_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_cat-file.c_filter_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"cannot read object %s '%s'\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@the_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.object_id*, i8**, i64*)* @filter_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_object(i8* %0, i32 %1, %struct.object_id* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.strbuf, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.object_id* %2, %struct.object_id** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.object_id*, %struct.object_id** %9, align 8
  %15 = load i64*, i64** %11, align 8
  %16 = call i8* @read_object_file(%struct.object_id* %14, i32* %12, i64* %15)
  %17 = load i8**, i8*** %10, align 8
  store i8* %16, i8** %17, align 8
  %18 = load i8**, i8*** %10, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.object_id*, %struct.object_id** %9, align 8
  %24 = call i32 @oid_to_hex(%struct.object_id* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @error(i32 %22, i32 %24, i8* %25)
  store i32 %26, i32* %6, align 4
  br label %55

27:                                               ; preds = %5
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @OBJ_BLOB, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @S_ISREG(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %37 = load i8*, i8** %7, align 8
  %38 = load i8**, i8*** %10, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @convert_to_working_tree(i32* @the_index, i8* %37, i8* %39, i64 %41, %struct.strbuf* %13)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load i8**, i8*** %10, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @free(i8* %46)
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  %51 = call i8* @strbuf_detach(%struct.strbuf* %13, i32* null)
  %52 = load i8**, i8*** %10, align 8
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %44, %35
  br label %54

54:                                               ; preds = %53, %31, %27
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %21
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i64 @S_ISREG(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @convert_to_working_tree(i32*, i8*, i8*, i64, %struct.strbuf*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
