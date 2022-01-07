; ModuleID = '/home/carl/AnghaBench/git/extr_archive-tar.c_write_global_extended_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive-tar.c_write_global_extended_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, %struct.ustar_header* }
%struct.ustar_header = type { i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.archiver_args = type { i32, %struct.object_id* }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@USTAR_MAX_MTIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@TYPEFLAG_GLOBAL_HEADER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"pax_global_header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archiver_args*)* @write_global_extended_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_global_extended_header(%struct.archiver_args* %0) #0 {
  %2 = alloca %struct.archiver_args*, align 8
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.strbuf, align 8
  %5 = alloca %struct.ustar_header, align 8
  %6 = alloca i32, align 4
  store %struct.archiver_args* %0, %struct.archiver_args** %2, align 8
  %7 = load %struct.archiver_args*, %struct.archiver_args** %2, align 8
  %8 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %7, i32 0, i32 1
  %9 = load %struct.object_id*, %struct.object_id** %8, align 8
  store %struct.object_id* %9, %struct.object_id** %3, align 8
  %10 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %11 = load %struct.object_id*, %struct.object_id** %3, align 8
  %12 = icmp ne %struct.object_id* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.object_id*, %struct.object_id** %3, align 8
  %15 = call i32 @oid_to_hex(%struct.object_id* %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strbuf_append_ext_header(%struct.strbuf* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.archiver_args*, %struct.archiver_args** %2, align 8
  %22 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @USTAR_MAX_MTIME, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.archiver_args*, %struct.archiver_args** %2, align 8
  %28 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strbuf_append_ext_header_uint(%struct.strbuf* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @USTAR_MAX_MTIME, align 4
  %32 = load %struct.archiver_args*, %struct.archiver_args** %2, align 8
  %33 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %26, %20
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %59

39:                                               ; preds = %34
  %40 = call i32 @memset(%struct.ustar_header* %5, i32 0, i32 16)
  %41 = load i32, i32* @TYPEFLAG_GLOBAL_HEADER, align 4
  %42 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %5, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32 %41, i32* %43, align 4
  store i32 33206, i32* %6, align 4
  %44 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @xsnprintf(i32 %45, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.archiver_args*, %struct.archiver_args** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @prepare_header(%struct.archiver_args* %47, %struct.ustar_header* %5, i32 %48, i32 %50)
  %52 = call i32 @write_blocked(%struct.ustar_header* %5, i32 16)
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %54 = load %struct.ustar_header*, %struct.ustar_header** %53, align 8
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @write_blocked(%struct.ustar_header* %54, i32 %56)
  %58 = call i32 @strbuf_release(%struct.strbuf* %4)
  br label %59

59:                                               ; preds = %39, %38
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_append_ext_header(%struct.strbuf*, i8*, i32, i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @strbuf_append_ext_header_uint(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @memset(%struct.ustar_header*, i32, i32) #2

declare dso_local i32 @xsnprintf(i32, i32, i8*) #2

declare dso_local i32 @prepare_header(%struct.archiver_args*, %struct.ustar_header*, i32, i32) #2

declare dso_local i32 @write_blocked(%struct.ustar_header*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
