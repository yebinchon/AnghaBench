; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pull.c_get_merge_heads.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pull.c_get_merge_heads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.oid_array = type { i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"\09not-for-merge\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oid_array*)* @get_merge_heads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_merge_heads(%struct.oid_array* %0) #0 {
  %2 = alloca %struct.oid_array*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca %struct.object_id, align 4
  %7 = alloca i8*, align 8
  store %struct.oid_array* %0, %struct.oid_array** %2, align 8
  %8 = load i32, i32* @the_repository, align 4
  %9 = call i8* @git_path_fetch_head(i32 %8)
  store i8* %9, i8** %3, align 8
  %10 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load i8*, i8** %3, align 8
  %12 = call i32* @xfopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %4, align 8
  br label %13

13:                                               ; preds = %29, %28, %23, %1
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @strbuf_getline_lf(%struct.strbuf* %5, i32* %14)
  %16 = load i64, i64* @EOF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @parse_oid_hex(i32 %20, %struct.object_id* %6, i8** %7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %13

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @starts_with(i8* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %13

29:                                               ; preds = %24
  %30 = load %struct.oid_array*, %struct.oid_array** %2, align 8
  %31 = call i32 @oid_array_append(%struct.oid_array* %30, %struct.object_id* %6)
  br label %13

32:                                               ; preds = %13
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @fclose(i32* %33)
  %35 = call i32 @strbuf_release(%struct.strbuf* %5)
  ret void
}

declare dso_local i8* @git_path_fetch_head(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @xfopen(i8*, i8*) #1

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32*) #1

declare dso_local i64 @parse_oid_hex(i32, %struct.object_id*, i8**) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, %struct.object_id*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
