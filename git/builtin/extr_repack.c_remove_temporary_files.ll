; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_repack.c_remove_temporary_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_repack.c_remove_temporary_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }
%struct.dirent = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@packdir = common dso_local global i32 0, align 4
@packtmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remove_temporary_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_temporary_files() #0 {
  %1 = alloca %struct.strbuf, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %7 = load i32, i32* @packdir, align 4
  %8 = call i32* @opendir(i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %53

12:                                               ; preds = %0
  %13 = load i32, i32* @packdir, align 4
  %14 = call i32 @strlen(i32 %13)
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %2, align 8
  %17 = load i32, i32* @packtmp, align 4
  %18 = call i32 @strbuf_addstr(%struct.strbuf* %1, i32 %17)
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %2, align 8
  %22 = sub i64 %20, %21
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %39, %38, %12
  %24 = load i32*, i32** %4, align 8
  %25 = call %struct.dirent* @readdir(i32* %24)
  store %struct.dirent* %25, %struct.dirent** %5, align 8
  %26 = icmp ne %struct.dirent* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load %struct.dirent*, %struct.dirent** %5, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %2, align 8
  %34 = add i64 %32, %33
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @strncmp(i32 %30, i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %23

39:                                               ; preds = %27
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @strbuf_setlen(%struct.strbuf* %1, i64 %40)
  %42 = load %struct.dirent*, %struct.dirent** %5, align 8
  %43 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strbuf_addstr(%struct.strbuf* %1, i32 %44)
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @unlink(i64 %47)
  br label %23

49:                                               ; preds = %23
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @closedir(i32* %50)
  %52 = call i32 @strbuf_release(%struct.strbuf* %1)
  br label %53

53:                                               ; preds = %49, %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @opendir(i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strncmp(i32, i64, i64) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i32 @unlink(i64) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
