; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_read_remote_branches.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_read_remote_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }
%struct.rename_info = type { i32, i32 }
%struct.string_list_item = type { i32* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"refs/remotes/%s/\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@REF_ISSYMREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @read_remote_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_remote_branches(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rename_info*, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca %struct.string_list_item*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.rename_info*
  store %struct.rename_info* %15, %struct.rename_info** %9, align 8
  %16 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %17 = load %struct.rename_info*, %struct.rename_info** %9, align 8
  %18 = getelementptr inbounds %struct.rename_info, %struct.rename_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @starts_with(i8* %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %4
  %27 = load %struct.rename_info*, %struct.rename_info** %9, align 8
  %28 = getelementptr inbounds %struct.rename_info, %struct.rename_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call %struct.string_list_item* @string_list_append(i32 %29, i8* %30)
  store %struct.string_list_item* %31, %struct.string_list_item** %11, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @RESOLVE_REF_READING, align 4
  %34 = call i8* @resolve_ref_unsafe(i8* %32, i32 %33, i32* null, i32* %12)
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @REF_ISSYMREF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %13, align 8
  %44 = call i32* @xstrdup(i8* %43)
  %45 = load %struct.string_list_item*, %struct.string_list_item** %11, align 8
  %46 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %45, i32 0, i32 0
  store i32* %44, i32** %46, align 8
  br label %50

47:                                               ; preds = %37, %26
  %48 = load %struct.string_list_item*, %struct.string_list_item** %11, align 8
  %49 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %4
  %52 = call i32 @strbuf_release(%struct.strbuf* %10)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i64 @starts_with(i8*, i32) #2

declare dso_local %struct.string_list_item* @string_list_append(i32, i8*) #2

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, i32*, i32*) #2

declare dso_local i32* @xstrdup(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
