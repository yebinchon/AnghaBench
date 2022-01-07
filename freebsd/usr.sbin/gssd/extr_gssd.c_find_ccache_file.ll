; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_find_ccache_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_find_ccache_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i64, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@hostbased_initiator_cred = common dso_local global i64 0, align 8
@GSSD_CREDENTIAL_CACHE_FILE = common dso_local global i32 0, align 4
@ccfile_substring = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"FILE:%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @find_ccache_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ccache_file(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = add nsw i32 %21, 5
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i32, i32* @PATH_MAX, align 4
  %28 = add nsw i32 %27, 5
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32* @opendir(i8* %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %124

37:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %12, align 8
  br label %38

38:                                               ; preds = %114, %37
  %39 = load i32*, i32** %8, align 8
  %40 = call %struct.dirent* @readdir(i32* %39)
  store %struct.dirent* %40, %struct.dirent** %9, align 8
  %41 = icmp ne %struct.dirent* %40, null
  br i1 %41, label %42, label %115

42:                                               ; preds = %38
  %43 = trunc i64 %24 to i32
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.dirent*, %struct.dirent** %9, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @snprintf(i8* %26, i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, %24
  br i1 %51, label %52, label %114

52:                                               ; preds = %42
  %53 = load i64, i64* @hostbased_initiator_cred, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @GSSD_CREDENTIAL_CACHE_FILE, align 4
  %57 = call i64 @strcmp(i8* %26, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %114

59:                                               ; preds = %55, %52
  %60 = load %struct.dirent*, %struct.dirent** %9, align 8
  %61 = getelementptr inbounds %struct.dirent, %struct.dirent* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @ccfile_substring, align 4
  %64 = call i32* @strstr(i8* %62, i32 %63)
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %114

66:                                               ; preds = %59
  %67 = call i64 @lstat(i8* %26, %struct.stat* %10)
  %68 = icmp sge i64 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %114

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @S_ISREG(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %114

79:                                               ; preds = %74
  %80 = trunc i64 %24 to i32
  %81 = load i8*, i8** %5, align 8
  %82 = load %struct.dirent*, %struct.dirent** %9, align 8
  %83 = getelementptr inbounds %struct.dirent, %struct.dirent* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @snprintf(i8* %26, i32 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %81, i8* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ult i64 %87, %24
  br i1 %88, label %89, label %113

89:                                               ; preds = %79
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @is_a_valid_tgt_cache(i8* %26, i64 %90, i32* %15, i64* %11)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %89
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104, %96, %93
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %16, align 4
  %110 = load i64, i64* %11, align 8
  store i64 %110, i64* %12, align 8
  %111 = call i32 @strcpy(i8* %31, i8* %26)
  store i32 1, i32* %13, align 4
  br label %112

112:                                              ; preds = %108, %104, %100
  br label %113

113:                                              ; preds = %112, %89, %79
  br label %114

114:                                              ; preds = %113, %74, %69, %66, %59, %55, %42
  br label %38

115:                                              ; preds = %38
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @closedir(i32* %116)
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 @strcpy(i8* %121, i8* %31)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %124

123:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %124

124:                                              ; preds = %123, %120, %36
  %125 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32* @strstr(i8*, i32) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i64 @is_a_valid_tgt_cache(i8*, i64, i32*, i64*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
