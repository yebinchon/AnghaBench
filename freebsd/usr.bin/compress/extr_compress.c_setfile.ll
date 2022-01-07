; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_compress.c_setfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_compress.c_setfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.stat = type { i32, i32, i32, i32, %struct.timespec, %struct.timespec }

@setfile.tspec = internal global [2 x %struct.timespec] zeroinitializer, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"utimensat: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"chown: %s\00", align 1
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"chmod: %s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"chflags: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.stat*)* @setfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setfile(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %5 = load i32, i32* @S_ISUID, align 4
  %6 = load i32, i32* @S_ISGID, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @S_IRWXU, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @S_IRWXG, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @S_IRWXO, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.stat*, %struct.stat** %4, align 8
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.stat*, %struct.stat** %4, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 5
  %20 = bitcast %struct.timespec* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast ([2 x %struct.timespec]* @setfile.tspec to i8*), i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.stat*, %struct.stat** %4, align 8
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 4
  %23 = bitcast %struct.timespec* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @setfile.tspec, i64 0, i64 1) to i8*), i8* align 4 %23, i64 4, i1 false)
  %24 = load i32, i32* @AT_FDCWD, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @utimensat(i32 %24, i8* %25, %struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @setfile.tspec, i64 0, i64 0), i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @cwarn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.stat*, %struct.stat** %4, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.stat*, %struct.stat** %4, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @chown(i8* %32, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %31
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EPERM, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @cwarn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* @S_ISUID, align 4
  %50 = load i32, i32* @S_ISGID, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.stat*, %struct.stat** %4, align 8
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %48, %31
  %58 = load i8*, i8** %3, align 8
  %59 = load %struct.stat*, %struct.stat** %4, align 8
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @chmod(i8* %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @EOPNOTSUPP, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @cwarn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %64, %57
  %72 = load i8*, i8** %3, align 8
  %73 = load %struct.stat*, %struct.stat** %4, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @chflags(i8* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load i64, i64* @errno, align 8
  %80 = load i64, i64* @EOPNOTSUPP, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @cwarn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %78, %71
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @utimensat(i32, i8*, %struct.timespec*, i32) #2

declare dso_local i32 @cwarn(i8*, i8*) #2

declare dso_local i64 @chown(i8*, i32, i32) #2

declare dso_local i64 @chmod(i8*, i32) #2

declare dso_local i64 @chflags(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
