; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_grab_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_grab_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.userdiff_driver = type { i32 }
%struct.diff_filespec = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"Subproject commit %s\0A\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"object '%s' is not a blob!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.repository*, %struct.object_id*, i32, i64*, %struct.userdiff_driver*, i8*)* @grab_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @grab_blob(%struct.repository* %0, %struct.object_id* %1, i32 %2, i64* %3, %struct.userdiff_driver* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.repository*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.userdiff_driver*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.strbuf, align 8
  %17 = alloca %struct.diff_filespec*, align 8
  store %struct.repository* %0, %struct.repository** %8, align 8
  store %struct.object_id* %1, %struct.object_id** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store %struct.userdiff_driver* %4, %struct.userdiff_driver** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @S_ISGITLINK(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  %22 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %23 = load %struct.object_id*, %struct.object_id** %9, align 8
  %24 = call i32 @oid_to_hex(%struct.object_id* %23)
  %25 = call i32 @strbuf_addf(%struct.strbuf* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %11, align 8
  store i64 %27, i64* %28, align 8
  %29 = call i8* @strbuf_detach(%struct.strbuf* %16, i32* null)
  store i8* %29, i8** %14, align 8
  br label %68

30:                                               ; preds = %6
  %31 = load %struct.object_id*, %struct.object_id** %9, align 8
  %32 = call i64 @is_null_oid(%struct.object_id* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64*, i64** %11, align 8
  store i64 0, i64* %35, align 8
  %36 = call i8* @xcalloc(i32 1, i32 1)
  store i8* %36, i8** %7, align 8
  br label %70

37:                                               ; preds = %30
  %38 = load %struct.userdiff_driver*, %struct.userdiff_driver** %12, align 8
  %39 = icmp ne %struct.userdiff_driver* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i8*, i8** %13, align 8
  %42 = call %struct.diff_filespec* @alloc_filespec(i8* %41)
  store %struct.diff_filespec* %42, %struct.diff_filespec** %17, align 8
  %43 = load %struct.diff_filespec*, %struct.diff_filespec** %17, align 8
  %44 = load %struct.object_id*, %struct.object_id** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @fill_filespec(%struct.diff_filespec* %43, %struct.object_id* %44, i32 1, i32 %45)
  %47 = load %struct.repository*, %struct.repository** %8, align 8
  %48 = load %struct.userdiff_driver*, %struct.userdiff_driver** %12, align 8
  %49 = load %struct.diff_filespec*, %struct.diff_filespec** %17, align 8
  %50 = call i64 @fill_textconv(%struct.repository* %47, %struct.userdiff_driver* %48, %struct.diff_filespec* %49, i8** %14)
  %51 = load i64*, i64** %11, align 8
  store i64 %50, i64* %51, align 8
  %52 = load %struct.diff_filespec*, %struct.diff_filespec** %17, align 8
  %53 = call i32 @free_filespec(%struct.diff_filespec* %52)
  br label %66

54:                                               ; preds = %37
  %55 = load %struct.object_id*, %struct.object_id** %9, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = call i8* @read_object_file(%struct.object_id* %55, i32* %15, i64* %56)
  store i8* %57, i8** %14, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @OBJ_BLOB, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.object_id*, %struct.object_id** %9, align 8
  %63 = call i32 @oid_to_hex(%struct.object_id* %62)
  %64 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %54
  br label %66

66:                                               ; preds = %65, %40
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %21
  %69 = load i8*, i8** %14, align 8
  store i8* %69, i8** %7, align 8
  br label %70

70:                                               ; preds = %68, %34
  %71 = load i8*, i8** %7, align 8
  ret i8* %71
}

declare dso_local i64 @S_ISGITLINK(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local %struct.diff_filespec* @alloc_filespec(i8*) #1

declare dso_local i32 @fill_filespec(%struct.diff_filespec*, %struct.object_id*, i32, i32) #1

declare dso_local i64 @fill_textconv(%struct.repository*, %struct.userdiff_driver*, %struct.diff_filespec*, i8**) #1

declare dso_local i32 @free_filespec(%struct.diff_filespec*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @die(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
