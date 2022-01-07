; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_copymodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_copymodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64, %struct.timespec, %struct.timespec, i32, i32 }
%struct.timespec = type { i32 }

@DEFFILEMODE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"couldn't fchown: %s\00", align 1
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"couldn't fchmod: %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"couldn't futimens: %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"couldn't fchflags: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.stat*, i8*)* @copymodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copymodes(i32 %0, %struct.stat* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [2 x %struct.timespec], align 4
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.stat* %1, %struct.stat** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.stat*, %struct.stat** %5, align 8
  %11 = icmp eq %struct.stat* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = call i32 @umask(i32 18)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DEFFILEMODE, align 4
  %16 = load i32, i32* %9, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i64 @fchmod(i32 %14, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @umask(i32 %20)
  br label %98

22:                                               ; preds = %3
  %23 = load %struct.stat*, %struct.stat** %5, align 8
  %24 = bitcast %struct.stat* %8 to i8*
  %25 = bitcast %struct.stat* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 32, i1 false)
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @fchown(i32 %26, i32 %28, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %22
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EPERM, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @maybe_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* @S_ISUID, align 4
  %42 = load i32, i32* @S_ISGID, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %44
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %40, %22
  %49 = load i32, i32* @S_ISUID, align 4
  %50 = load i32, i32* @S_ISGID, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @S_IRWXU, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @S_IRWXG, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @S_IRWXO, align 4
  %57 = or i32 %55, %56
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %57
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %4, align 4
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @fchmod(i32 %61, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %48
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @maybe_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %48
  %70 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3
  %72 = bitcast %struct.timespec* %70 to i8*
  %73 = bitcast %struct.timespec* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  %76 = bitcast %struct.timespec* %74 to i8*
  %77 = bitcast %struct.timespec* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 8 %77, i64 4, i1 false)
  %78 = load i32, i32* %4, align 4
  %79 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %80 = call i64 @futimens(i32 %78, %struct.timespec* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @maybe_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %69
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32, i32* %4, align 4
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @fchflags(i32 %90, i64 %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @maybe_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %12, %95, %89, %85
  ret void
}

declare dso_local i32 @umask(i32) #1

declare dso_local i64 @fchmod(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fchown(i32, i32, i32) #1

declare dso_local i32 @maybe_warn(i8*, i8*) #1

declare dso_local i64 @futimens(i32, %struct.timespec*) #1

declare dso_local i64 @fchflags(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
