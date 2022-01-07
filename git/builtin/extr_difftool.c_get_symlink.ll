; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_difftool.c_get_symlink.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_difftool.c_get_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@has_symlinks = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"could not read symlink %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"could not read symlink file %s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"could not read object %s for symlink %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.object_id*, i8*)* @get_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_symlink(%struct.object_id* %0, i8* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.object_id*, %struct.object_id** %3, align 8
  %10 = call i64 @is_null_oid(%struct.object_id* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = load i64, i64* @has_symlinks, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = call i64 @strbuf_readlink(%struct.strbuf* %6, i8* %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 (i32, i8*, ...) @die(i32 %23, i8* %24)
  br label %26

26:                                               ; preds = %22, %16
  br label %36

27:                                               ; preds = %12
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strbuf_read_file(%struct.strbuf* %6, i8* %28, i32 128)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i32, i8*, ...) @die(i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %26
  %37 = call i8* @strbuf_detach(%struct.strbuf* %6, i32* null)
  store i8* %37, i8** %5, align 8
  br label %52

38:                                               ; preds = %2
  %39 = load %struct.object_id*, %struct.object_id** %3, align 8
  %40 = call i8* @read_object_file(%struct.object_id* %39, i32* %7, i64* %8)
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.object_id*, %struct.object_id** %3, align 8
  %46 = call i32 @oid_to_hex(%struct.object_id* %45)
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 (i32, i8*, ...) @die(i32 %44, i8* %48, i8* %49)
  br label %51

51:                                               ; preds = %43, %38
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i8*, i8** %5, align 8
  ret i8* %53
}

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strbuf_readlink(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @die(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
