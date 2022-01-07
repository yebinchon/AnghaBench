; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_loadboot.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_loadboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_bootrom = type { i32, i64, i64, i32, i32 }
%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"pf\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"loadboot: incorrect number of arguments.\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@CHELSIO_T4_LOAD_BOOT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @loadboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadboot(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.t4_bootrom, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.stat, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = bitcast %struct.t4_bootrom* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %11, align 8
  %17 = bitcast %struct.stat* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %10, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %10, i32 0, i32 1
  store i64 0, i64* %22, align 8
  br label %62

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %10, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %45

34:                                               ; preds = %26
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %10, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %3, align 4
  br label %119

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @str_to_number(i8* %48, i64* %8, i32* null)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %3, align 4
  br label %119

55:                                               ; preds = %45
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %10, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  br label %61

58:                                               ; preds = %23
  %59 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %3, align 4
  br label %119

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %20
  %63 = load i8*, i8** %11, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @CHELSIO_T4_LOAD_BOOT, align 4
  %68 = call i32 @doit(i32 %67, %struct.t4_bootrom* %10)
  store i32 %68, i32* %3, align 4
  br label %119

69:                                               ; preds = %62
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* @O_RDONLY, align 4
  %72 = call i32 @open(i8* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* @errno, align 4
  store i32 %78, i32* %3, align 4
  br label %119

79:                                               ; preds = %69
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @fstat(i32 %80, %struct.stat* %12)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @close(i32 %85)
  %87 = load i32, i32* @errno, align 4
  store i32 %87, i32* %3, align 4
  br label %119

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %10, i32 0, i32 3
  store i32 %90, i32* %91, align 8
  %92 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %10, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PROT_READ, align 4
  %95 = load i32, i32* @MAP_PRIVATE, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @mmap(i32 0, i32 %93, i32 %94, i32 %95, i32 %96, i32 0)
  %98 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %10, i32 0, i32 2
  store i64 %97, i64* %98, align 8
  %99 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %10, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MAP_FAILED, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %88
  %104 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @close(i32 %105)
  %107 = load i32, i32* @errno, align 4
  store i32 %107, i32* %3, align 4
  br label %119

108:                                              ; preds = %88
  %109 = load i32, i32* @CHELSIO_T4_LOAD_BOOT, align 4
  %110 = call i32 @doit(i32 %109, %struct.t4_bootrom* %10)
  store i32 %110, i32* %6, align 4
  %111 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %10, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %10, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @munmap(i64 %112, i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @close(i32 %116)
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %108, %103, %83, %75, %66, %58, %53, %42
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @str_to_number(i8*, i64*, i32*) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @doit(i32, %struct.t4_bootrom*) #2

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
