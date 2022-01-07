; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_describe.c_describe.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_describe.c_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"describe %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Not a valid object name %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@OBJ_BLOB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"%s is neither a commit nor blob\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @describe(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load i64, i64* @debug, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @fprintf(i32 %12, i8* %13, i8* %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @get_oid(i8* %17, %struct.object_id* %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @die(i8* %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @the_repository, align 4
  %26 = call %struct.commit* @lookup_commit_reference_gently(i32 %25, %struct.object_id* %5, i32 1)
  store %struct.commit* %26, %struct.commit** %6, align 8
  %27 = load %struct.commit*, %struct.commit** %6, align 8
  %28 = icmp ne %struct.commit* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @describe_commit(%struct.object_id* %5, %struct.strbuf* %7)
  br label %45

31:                                               ; preds = %24
  %32 = load i32, i32* @the_repository, align 4
  %33 = call i64 @oid_object_info(i32 %32, %struct.object_id* %5, i32* null)
  %34 = load i64, i64* @OBJ_BLOB, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.object_id, %struct.object_id* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @describe_blob(i32 %38, %struct.strbuf* %7)
  br label %44

40:                                               ; preds = %31
  %41 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @die(i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %29
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @puts(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load %struct.commit*, %struct.commit** %6, align 8
  %53 = call i32 @clear_commit_marks(%struct.commit* %52, i32 -1)
  br label %54

54:                                               ; preds = %51, %45
  %55 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #2

declare dso_local i32 @describe_commit(%struct.object_id*, %struct.strbuf*) #2

declare dso_local i64 @oid_object_info(i32, %struct.object_id*, i32*) #2

declare dso_local i32 @describe_blob(i32, %struct.strbuf*) #2

declare dso_local i32 @puts(i32) #2

declare dso_local i32 @clear_commit_marks(%struct.commit*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
