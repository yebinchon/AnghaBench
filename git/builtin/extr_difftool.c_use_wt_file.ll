; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_difftool.c_use_wt_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_difftool.c_use_wt_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.object_id = type { i32 }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@the_index = common dso_local global i32 0, align 4
@OBJ_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.object_id*)* @use_wt_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_wt_file(i8* %0, i8* %1, %struct.object_id* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  %12 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %13)
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @add_path(%struct.strbuf* %7, i32 %16, i8* %17)
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @lstat(i32 %20, %struct.stat* %8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @S_ISLNK(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = call i32 @open(i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @OBJ_BLOB, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @index_fd(i32* @the_index, %struct.object_id* %10, i32 %36, %struct.stat* %8, i32 %37, i8* %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %35
  %42 = load %struct.object_id*, %struct.object_id** %6, align 8
  %43 = call i64 @is_null_oid(%struct.object_id* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.object_id*, %struct.object_id** %6, align 8
  %47 = call i32 @oidcpy(%struct.object_id* %46, %struct.object_id* %10)
  store i32 1, i32* %9, align 4
  br label %54

48:                                               ; preds = %41
  %49 = load %struct.object_id*, %struct.object_id** %6, align 8
  %50 = call i64 @oideq(%struct.object_id* %49, %struct.object_id* %10)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %48
  br label %54

54:                                               ; preds = %53, %45
  br label %55

55:                                               ; preds = %54, %35, %28
  br label %56

56:                                               ; preds = %55, %23, %3
  %57 = call i32 @strbuf_release(%struct.strbuf* %7)
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @add_path(%struct.strbuf*, i32, i8*) #2

declare dso_local i32 @lstat(i32, %struct.stat*) #2

declare dso_local i32 @S_ISLNK(i32) #2

declare dso_local i32 @open(i32, i32) #2

declare dso_local i32 @index_fd(i32*, %struct.object_id*, i32, %struct.stat*, i32, i8*, i32) #2

declare dso_local i64 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #2

declare dso_local i64 @oideq(%struct.object_id*, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
