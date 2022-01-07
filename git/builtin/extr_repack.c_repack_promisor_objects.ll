; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_repack.c_repack_promisor_objects.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_repack.c_repack_promisor_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32 }
%struct.strbuf = type { i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.pack_objects_args = type { i32 }
%struct.string_list = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@write_oid = common dso_local global i32 0, align 4
@FOR_EACH_OBJECT_PROMISOR_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i64 0, align 8
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"repack: Expecting full hex object ID lines only from pack-objects.\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s-%s.promisor\00", align 1
@packtmp = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"unable to create '%s'\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"could not finish pack-objects to repack promisor objects\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pack_objects_args*, %struct.string_list*)* @repack_promisor_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repack_promisor_objects(%struct.pack_objects_args* %0, %struct.string_list* %1) #0 {
  %3 = alloca %struct.pack_objects_args*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.child_process, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.pack_objects_args* %0, %struct.pack_objects_args** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  %10 = bitcast %struct.child_process* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %12 = load %struct.pack_objects_args*, %struct.pack_objects_args** %3, align 8
  %13 = call i32 @prepare_pack_objects(%struct.child_process* %5, %struct.pack_objects_args* %12)
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 0
  store i32 -1, i32* %14, align 4
  %15 = load i32, i32* @write_oid, align 4
  %16 = load i32, i32* @FOR_EACH_OBJECT_PROMISOR_ONLY, align 4
  %17 = call i32 @for_each_packed_object(i32 %15, %struct.child_process* %5, i32 %16)
  %18 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %79

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @close(i32 %24)
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @xfdopen(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %6, align 8
  br label %29

29:                                               ; preds = %66, %22
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @strbuf_getline_lf(%struct.strbuf* %7, i32* %30)
  %32 = load i64, i64* @EOF, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @die(i32 %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.string_list*, %struct.string_list** %4, align 8
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @string_list_append(%struct.string_list* %45, i32 %47)
  %49 = load i32, i32* @packtmp, align 4
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @mkpathdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %51)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @O_CREAT, align 4
  %55 = load i32, i32* @O_EXCL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @O_WRONLY, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @open(i8* %53, i32 %58, i32 384)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %44
  %63 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @die_errno(i32 %63, i8* %64)
  br label %66

66:                                               ; preds = %62, %44
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @close(i32 %67)
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @free(i8* %69)
  br label %29

71:                                               ; preds = %29
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @fclose(i32* %72)
  %74 = call i64 @finish_command(%struct.child_process* %5)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %78 = call i32 @die(i32 %77)
  br label %79

79:                                               ; preds = %21, %76, %71
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @prepare_pack_objects(%struct.child_process*, %struct.pack_objects_args*) #2

declare dso_local i32 @for_each_packed_object(i32, %struct.child_process*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32* @xfdopen(i32, i8*) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #2

declare dso_local i8* @mkpathdup(i8*, i32, i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @die_errno(i32, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
