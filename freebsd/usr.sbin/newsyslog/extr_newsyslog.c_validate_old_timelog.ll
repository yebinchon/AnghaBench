; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_validate_old_timelog.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_validate_old_timelog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dirent = type { i64, i8*, i64 }
%struct.tm = type { i32 }
%struct.stat = type { i32 }

@DT_REG = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i64 0, align 8
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Ignoring %s which has unexpected extension '%s'\0A\00", align 1
@timefnamefmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Ignoring %s which does not match time format\0A\00", align 1
@COMPRESS_TYPES = common dso_local global i32 0, align 4
@compress_type = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dirent*, i8*, %struct.tm*)* @validate_old_timelog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_old_timelog(i32 %0, %struct.dirent* %1, i8* %2, %struct.tm* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.dirent* %1, %struct.dirent** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.tm* %3, %struct.tm** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %11, align 8
  %16 = load %struct.dirent*, %struct.dirent** %7, align 8
  %17 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DT_REG, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %4
  %22 = load %struct.dirent*, %struct.dirent** %7, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DT_UNKNOWN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %40, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.dirent*, %struct.dirent** %7, align 8
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %33 = call i64 @fstatat(i32 %28, i8* %31, %struct.stat* %10, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @S_ISREG(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %27, %21
  store i32 0, i32* %5, align 4
  br label %133

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %4
  %43 = load %struct.dirent*, %struct.dirent** %7, align 8
  %44 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @strncmp(i8* %45, i8* %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %133

51:                                               ; preds = %42
  %52 = load %struct.dirent*, %struct.dirent** %7, align 8
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %133

58:                                               ; preds = %51
  %59 = load %struct.dirent*, %struct.dirent** %7, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 46
  br i1 %66, label %67, label %81

67:                                               ; preds = %58
  %68 = load i64, i64* @verbose, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load %struct.dirent*, %struct.dirent** %7, align 8
  %72 = getelementptr inbounds %struct.dirent, %struct.dirent* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.dirent*, %struct.dirent** %7, align 8
  %75 = getelementptr inbounds %struct.dirent, %struct.dirent* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %73, i8* %78)
  br label %80

80:                                               ; preds = %70, %67
  store i32 0, i32* %5, align 4
  br label %133

81:                                               ; preds = %58
  %82 = load %struct.tm*, %struct.tm** %9, align 8
  %83 = call i32 @memset(%struct.tm* %82, i32 0, i32 4)
  %84 = load %struct.dirent*, %struct.dirent** %7, align 8
  %85 = getelementptr inbounds %struct.dirent, %struct.dirent* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i32, i32* @timefnamefmt, align 4
  %91 = load %struct.tm*, %struct.tm** %9, align 8
  %92 = call i8* @strptime(i8* %89, i32 %90, %struct.tm* %91)
  store i8* %92, i8** %12, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %81
  %95 = load i64, i64* @verbose, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.dirent*, %struct.dirent** %7, align 8
  %99 = getelementptr inbounds %struct.dirent, %struct.dirent* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %97, %94
  store i32 0, i32* %5, align 4
  br label %133

103:                                              ; preds = %81
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %120, %103
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @COMPRESS_TYPES, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %104
  %109 = load i8*, i8** %12, align 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @compress_type, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @strcmp(i8* %109, i32 %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  store i32 1, i32* %5, align 4
  br label %133

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %104

123:                                              ; preds = %104
  %124 = load i64, i64* @verbose, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load %struct.dirent*, %struct.dirent** %7, align 8
  %128 = getelementptr inbounds %struct.dirent, %struct.dirent* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %129, i8* %130)
  br label %132

132:                                              ; preds = %126, %123
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %118, %102, %80, %57, %50, %40
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @fstatat(i32, i8*, %struct.stat*, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i8* @strptime(i8*, i32, %struct.tm*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
