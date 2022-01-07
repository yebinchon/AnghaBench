; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_loadbootcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_loadbootcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_data = type { i64, i32, i32 }
%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"loadbootcfg: incorrect number of arguments.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@CHELSIO_T4_LOAD_BOOTCFG = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @loadbootcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadbootcfg(i32 %0, i8** %1) #0 {
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
  %19 = call i32 @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %78

21:                                               ; preds = %2
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @CHELSIO_T4_LOAD_BOOTCFG, align 4
  %27 = call i32 @doit(i32 %26, %struct.t4_data* %8)
  store i32 %27, i32* %3, align 4
  br label %78

28:                                               ; preds = %21
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* @O_RDONLY, align 4
  %31 = call i32 @open(i8* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @errno, align 4
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @fstat(i32 %39, %struct.stat* %10)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i32, i32* @errno, align 4
  store i32 %46, i32* %3, align 4
  br label %78

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PROT_READ, align 4
  %54 = load i32, i32* @MAP_PRIVATE, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @mmap(i32 0, i32 %52, i32 %53, i32 %54, i32 %55, i32 0)
  %57 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MAP_FAILED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %47
  %63 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @close(i32 %64)
  %66 = load i32, i32* @errno, align 4
  store i32 %66, i32* %3, align 4
  br label %78

67:                                               ; preds = %47
  %68 = load i32, i32* @CHELSIO_T4_LOAD_BOOTCFG, align 4
  %69 = call i32 @doit(i32 %68, %struct.t4_data* %8)
  store i32 %69, i32* %6, align 4
  %70 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @munmap(i64 %71, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @close(i32 %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %67, %62, %42, %34, %25, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @warnx(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @doit(i32, %struct.t4_data*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @warn(i8*, ...) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @munmap(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
