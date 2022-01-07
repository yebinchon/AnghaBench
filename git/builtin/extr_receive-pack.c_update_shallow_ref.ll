; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_update_shallow_ref.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_update_shallow_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.oid_array = type { i32, i32* }
%struct.check_connected_options = type { i32, i32 }
%struct.command = type { i32, i32 }
%struct.shallow_info = type { i32**, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 8
@CHECK_CONNECTED_INIT = common dso_local global %struct.check_connected_options zeroinitializer, align 4
@trace_shallow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"shallow: update_shallow_ref %s\0A\00", align 1
@tmp_objdir = common dso_local global i32 0, align 4
@command_singleton_iterator = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.command*, %struct.shallow_info*)* @update_shallow_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_shallow_ref(%struct.command* %0, %struct.shallow_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.shallow_info*, align 8
  %6 = alloca %struct.lock_file, align 4
  %7 = alloca %struct.oid_array, align 8
  %8 = alloca %struct.check_connected_options, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %4, align 8
  store %struct.shallow_info* %1, %struct.shallow_info** %5, align 8
  %11 = bitcast %struct.lock_file* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %12 = bitcast %struct.oid_array* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 16, i1 false)
  %13 = bitcast %struct.check_connected_options* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.check_connected_options* @CHECK_CONNECTED_INIT to i8*), i64 8, i1 false)
  %14 = load %struct.command*, %struct.command** %4, align 8
  %15 = getelementptr inbounds %struct.command, %struct.command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = srem i32 %16, 32
  %18 = shl i32 1, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.command*, %struct.command** %4, align 8
  %20 = getelementptr inbounds %struct.command, %struct.command* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @trace_printf_key(i32* @trace_shallow, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %74, %2
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %26 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %23
  %32 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %33 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %73

40:                                               ; preds = %31
  %41 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %42 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.command*, %struct.command** %4, align 8
  %49 = getelementptr inbounds %struct.command, %struct.command* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %40
  %59 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @delayed_reachability_test(%struct.shallow_info* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %65 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @oid_array_append(%struct.oid_array* %7, i32* %71)
  br label %73

73:                                               ; preds = %63, %58, %40, %31
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %23

77:                                               ; preds = %23
  %78 = load i32, i32* @tmp_objdir, align 4
  %79 = call i32 @tmp_objdir_env(i32 %78)
  %80 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %8, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %8, i32 0, i32 0
  %82 = call i32 @setup_alternate_shallow(%struct.lock_file* %6, i32* %81, %struct.oid_array* %7)
  %83 = load i32, i32* @command_singleton_iterator, align 4
  %84 = load %struct.command*, %struct.command** %4, align 8
  %85 = call i64 @check_connected(i32 %83, %struct.command* %84, %struct.check_connected_options* %8)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = call i32 @rollback_lock_file(%struct.lock_file* %6)
  %89 = call i32 @oid_array_clear(%struct.oid_array* %7)
  store i32 -1, i32* %3, align 4
  br label %118

90:                                               ; preds = %77
  %91 = call i32 @commit_lock_file(%struct.lock_file* %6)
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %105, %90
  %93 = load i32, i32* %10, align 4
  %94 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %7, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load i32, i32* @the_repository, align 4
  %99 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %7, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @register_shallow(i32 %98, i32* %103)
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %92

108:                                              ; preds = %92
  %109 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %110 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.command*, %struct.command** %4, align 8
  %113 = getelementptr inbounds %struct.command, %struct.command* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %111, i64 %115
  store i64 0, i64* %116, align 8
  %117 = call i32 @oid_array_clear(%struct.oid_array* %7)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %108, %87
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace_printf_key(i32*, i8*, i32) #2

declare dso_local i32 @delayed_reachability_test(%struct.shallow_info*, i32) #2

declare dso_local i32 @oid_array_append(%struct.oid_array*, i32*) #2

declare dso_local i32 @tmp_objdir_env(i32) #2

declare dso_local i32 @setup_alternate_shallow(%struct.lock_file*, i32*, %struct.oid_array*) #2

declare dso_local i64 @check_connected(i32, %struct.command*, %struct.check_connected_options*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #2

declare dso_local i32 @commit_lock_file(%struct.lock_file*) #2

declare dso_local i32 @register_shallow(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
