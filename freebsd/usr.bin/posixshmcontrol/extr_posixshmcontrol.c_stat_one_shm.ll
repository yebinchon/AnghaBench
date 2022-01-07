; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/posixshmcontrol/extr_posixshmcontrol.c_stat_one_shm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/posixshmcontrol/extr_posixshmcontrol.c_stat_one_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i64, %struct.TYPE_6__, i64, %struct.TYPE_5__, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"stat %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"path\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"inode\09%jd\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"mode\09%#o\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"nlink\09%jd\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"owner\09%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"group\09%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"uid\09%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"gid\09%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"size\09%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"size\09%jd\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"atime\09%ld.%09ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"mtime\09%ld.%09ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"ctime\09%ld.%09ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"birth\09%ld.%09ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @stat_one_shm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stat_one_shm(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @shm_open(i8* %13, i32 %14, i32 0)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 1, i32* %4, align 4
  br label %108

21:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @fstat(i32 %22, %struct.stat* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 1, i32* %12, align 4
  br label %104

29:                                               ; preds = %21
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 12
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 11
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @user_from_uid(i32 %47, i32 0)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %48)
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @group_from_gid(i32 %51, i32 0)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %52)
  br label %61

54:                                               ; preds = %29
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54, %45
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 10
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @HN_AUTOSCALE, align 4
  %69 = load i32, i32* @HN_NOSPACE, align 4
  %70 = call i32 @humanize_number(i8* %65, i32 8, i64 %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i32 %68, i32 %69)
  %71 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %71)
  br label %78

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 10
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %73, %64
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i64 %80, i64 %83)
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i64 %86, i64 %89)
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i64 %92, i64 %95)
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i64 %99, i64 %102)
  br label %104

104:                                              ; preds = %78, %26
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @close(i32 %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %18
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @shm_open(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @user_from_uid(i32, i32) #1

declare dso_local i8* @group_from_gid(i32, i32) #1

declare dso_local i32 @humanize_number(i8*, i32, i64, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
