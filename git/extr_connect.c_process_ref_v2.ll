; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_process_ref_v2.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_process_ref_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.ref = type { %struct.ref*, i32, i32, i32 }
%struct.object_id = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"symref-target:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"peeled:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s^{}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ref***)* @process_ref_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ref_v2(i8* %0, %struct.ref*** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ref***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id, align 4
  %8 = alloca %struct.ref*, align 8
  %9 = alloca %struct.string_list, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.object_id, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ref*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ref*** %1, %struct.ref**** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = bitcast %struct.string_list* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @string_list_split(%struct.string_list* %9, i8* %16, i8 signext 32, i32 -1)
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %114

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @parse_oid_hex(i8* %28, %struct.object_id* %7, i8** %10)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %20
  store i32 0, i32* %5, align 4
  br label %114

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call %struct.ref* @alloc_ref(i8* %45)
  store %struct.ref* %46, %struct.ref** %8, align 8
  %47 = load %struct.ref*, %struct.ref** %8, align 8
  %48 = getelementptr inbounds %struct.ref, %struct.ref* %47, i32 0, i32 1
  %49 = call i32 @oidcpy(i32* %48, %struct.object_id* %7)
  %50 = load %struct.ref*, %struct.ref** %8, align 8
  %51 = load %struct.ref***, %struct.ref**** %4, align 8
  %52 = load %struct.ref**, %struct.ref*** %51, align 8
  store %struct.ref* %50, %struct.ref** %52, align 8
  %53 = load %struct.ref*, %struct.ref** %8, align 8
  %54 = getelementptr inbounds %struct.ref, %struct.ref* %53, i32 0, i32 0
  %55 = load %struct.ref***, %struct.ref**** %4, align 8
  store %struct.ref** %54, %struct.ref*** %55, align 8
  br label %56

56:                                               ; preds = %110, %37
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %113

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i64 @skip_prefix(i8* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %11)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @xstrdup(i8* %73)
  %75 = load %struct.ref*, %struct.ref** %8, align 8
  %76 = getelementptr inbounds %struct.ref, %struct.ref* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %61
  %78 = load i8*, i8** %11, align 8
  %79 = call i64 @skip_prefix(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %11)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %77
  %82 = load i8*, i8** %11, align 8
  %83 = call i64 @parse_oid_hex(i8* %82, %struct.object_id* %12, i8** %10)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %10, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %81
  store i32 0, i32* %5, align 4
  br label %114

91:                                               ; preds = %85
  %92 = load %struct.ref*, %struct.ref** %8, align 8
  %93 = getelementptr inbounds %struct.ref, %struct.ref* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @xstrfmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  store i8* %95, i8** %13, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = call %struct.ref* @alloc_ref(i8* %96)
  store %struct.ref* %97, %struct.ref** %14, align 8
  %98 = load %struct.ref*, %struct.ref** %14, align 8
  %99 = getelementptr inbounds %struct.ref, %struct.ref* %98, i32 0, i32 1
  %100 = call i32 @oidcpy(i32* %99, %struct.object_id* %12)
  %101 = load %struct.ref*, %struct.ref** %14, align 8
  %102 = load %struct.ref***, %struct.ref**** %4, align 8
  %103 = load %struct.ref**, %struct.ref*** %102, align 8
  store %struct.ref* %101, %struct.ref** %103, align 8
  %104 = load %struct.ref*, %struct.ref** %14, align 8
  %105 = getelementptr inbounds %struct.ref, %struct.ref* %104, i32 0, i32 0
  %106 = load %struct.ref***, %struct.ref**** %4, align 8
  store %struct.ref** %105, %struct.ref*** %106, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @free(i8* %107)
  br label %109

109:                                              ; preds = %91, %77
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %56

113:                                              ; preds = %56
  br label %114

114:                                              ; preds = %113, %90, %36, %19
  %115 = call i32 @string_list_clear(%struct.string_list* %9, i32 0)
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @string_list_split(%struct.string_list*, i8*, i8 signext, i32) #2

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #2

declare dso_local %struct.ref* @alloc_ref(i8*) #2

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i8* @xstrfmt(i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
