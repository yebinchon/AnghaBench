; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_loadcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_loadcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_data = type { i32, i64, i32 }
%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"loadcfg: incorrect number of arguments.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@CHELSIO_T4_LOAD_CFG = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @loadcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadcfg(i32 %0, i8** %1) #0 {
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
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
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
  %19 = call i32 @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %81

21:                                               ; preds = %2
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @CHELSIO_T4_LOAD_CFG, align 4
  %27 = call i32 @doit(i32 %26, %struct.t4_data* %8)
  store i32 %27, i32* %3, align 4
  br label %81

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
  br label %81

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
  br label %81

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, -4
  store i32 %53, i32* %51, align 8
  %54 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PROT_READ, align 4
  %57 = load i32, i32* @MAP_PRIVATE, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @mmap(i32 0, i32 %55, i32 %56, i32 %57, i32 %58, i32 0)
  %60 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MAP_FAILED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %47
  %66 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @close(i32 %67)
  %69 = load i32, i32* @errno, align 4
  store i32 %69, i32* %3, align 4
  br label %81

70:                                               ; preds = %47
  %71 = load i32, i32* @CHELSIO_T4_LOAD_CFG, align 4
  %72 = call i32 @doit(i32 %71, %struct.t4_data* %8)
  store i32 %72, i32* %6, align 4
  %73 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @munmap(i64 %74, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @close(i32 %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %70, %65, %42, %34, %25, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
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
