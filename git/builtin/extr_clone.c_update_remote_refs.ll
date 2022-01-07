; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_update_remote_refs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_update_remote_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check_connected_options = type { i32, i32, %struct.transport* }
%struct.transport = type { i32 }
%struct.strbuf = type { i32 }
%struct.ref = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CHECK_CONNECTED_INIT = common dso_local global %struct.check_connected_options zeroinitializer, align 8
@iterate_ref_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"remote did not send all necessary objects\00", align 1
@option_single_branch = common dso_local global i64 0, align 8
@option_no_tags = common dso_local global i32 0, align 4
@option_bare = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unable to update %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*, %struct.ref*, %struct.ref*, i8*, i8*, %struct.transport*, i32, i32)* @update_remote_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_remote_refs(%struct.ref* %0, %struct.ref* %1, %struct.ref* %2, i8* %3, i8* %4, %struct.transport* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ref*, align 8
  %10 = alloca %struct.ref*, align 8
  %11 = alloca %struct.ref*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.transport*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ref*, align 8
  %18 = alloca %struct.check_connected_options, align 8
  %19 = alloca %struct.strbuf, align 4
  store %struct.ref* %0, %struct.ref** %9, align 8
  store %struct.ref* %1, %struct.ref** %10, align 8
  store %struct.ref* %2, %struct.ref** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.transport* %5, %struct.transport** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load %struct.ref*, %struct.ref** %10, align 8
  store %struct.ref* %20, %struct.ref** %17, align 8
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %8
  %24 = bitcast %struct.check_connected_options* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.check_connected_options* @CHECK_CONNECTED_INIT to i8*), i64 16, i1 false)
  %25 = load %struct.transport*, %struct.transport** %14, align 8
  %26 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %18, i32 0, i32 2
  store %struct.transport* %25, %struct.transport** %26, align 8
  %27 = load %struct.transport*, %struct.transport** %14, align 8
  %28 = getelementptr inbounds %struct.transport, %struct.transport* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %18, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %18, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @iterate_ref_map, align 4
  %38 = call i64 @check_connected(i32 %37, %struct.ref** %17, %struct.check_connected_options* %18)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 (i32, ...) @die(i32 %41)
  br label %43

43:                                               ; preds = %40, %23
  br label %44

44:                                               ; preds = %43, %8
  %45 = load %struct.ref*, %struct.ref** %9, align 8
  %46 = icmp ne %struct.ref* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load %struct.ref*, %struct.ref** %10, align 8
  %49 = call i32 @write_remote_refs(%struct.ref* %48)
  %50 = load i64, i64* @option_single_branch, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @option_no_tags, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load %struct.ref*, %struct.ref** %9, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @write_followtags(%struct.ref* %56, i8* %57)
  br label %59

59:                                               ; preds = %55, %52, %47
  br label %60

60:                                               ; preds = %59, %44
  %61 = load %struct.ref*, %struct.ref** %11, align 8
  %62 = icmp ne %struct.ref* %61, null
  br i1 %62, label %63, label %88

63:                                               ; preds = %60
  %64 = load i32, i32* @option_bare, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %63
  %67 = bitcast %struct.strbuf* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @strbuf_addstr(%struct.strbuf* %19, i8* %68)
  %70 = call i32 @strbuf_addstr(%struct.strbuf* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ref*, %struct.ref** %11, align 8
  %74 = getelementptr inbounds %struct.ref, %struct.ref* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = call i64 @create_symref(i32 %72, i32 %77, i8* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %66
  %82 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %83 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, ...) @die(i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %81, %66
  %87 = call i32 @strbuf_release(%struct.strbuf* %19)
  br label %88

88:                                               ; preds = %86, %63, %60
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @check_connected(i32, %struct.ref**, %struct.check_connected_options*) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @write_remote_refs(%struct.ref*) #2

declare dso_local i32 @write_followtags(%struct.ref*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i64 @create_symref(i32, i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
