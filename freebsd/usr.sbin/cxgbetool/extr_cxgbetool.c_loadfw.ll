; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_loadfw.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_loadfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_data = type { i64, i32, i32 }
%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"loadfw: incorrect number of arguments.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@CHELSIO_T4_LOAD_FW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @loadfw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadfw(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.t4_data, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast %struct.t4_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  %15 = bitcast %struct.stat* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %71

21:                                               ; preds = %2
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %3, align 4
  br label %71

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @fstat(i32 %32, %struct.stat* %10)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i32, i32* @errno, align 4
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PROT_READ, align 4
  %47 = load i32, i32* @MAP_PRIVATE, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @mmap(i32 0, i32 %45, i32 %46, i32 %47, i32 %48, i32 0)
  %50 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MAP_FAILED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @close(i32 %57)
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %3, align 4
  br label %71

60:                                               ; preds = %40
  %61 = load i32, i32* @CHELSIO_T4_LOAD_FW, align 4
  %62 = call i32 @doit(i32 %61, %struct.t4_data* %8)
  store i32 %62, i32* %6, align 4
  %63 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @munmap(i64 %64, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @close(i32 %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %60, %55, %35, %27, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @warn(i8*, ...) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @doit(i32, %struct.t4_data*) #2

declare dso_local i32 @munmap(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
