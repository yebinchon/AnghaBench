; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_age_old_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_age_old_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }

@age_old_log.suffix_maxlen = internal global i32 0, align 4
@COMPRESS_TYPES = common dso_local global i32 0, align 4
@compress_type = common dso_local global %struct.TYPE_2__* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@archtodir = common dso_local global i64 0, align 8
@archdirname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@timefnamefmt = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@timenow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @age_old_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @age_old_log(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i32, i32* @age_old_log.suffix_maxlen, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %28, %13
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @COMPRESS_TYPES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load i32, i32* @age_old_log.suffix_maxlen, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @compress_type, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strlen(i32 %25)
  %27 = call i32 @MAX(i32 %19, i32 %26)
  store i32 %27, i32* @age_old_log.suffix_maxlen, align 4
  br label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %14

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32, i32* @MAXPATHLEN, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 3
  %36 = load i32, i32* @age_old_log.suffix_maxlen, align 4
  %37 = zext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i8* @alloca(i64 %40)
  store i8* %41, i8** %6, align 8
  %42 = load i64, i64* @archtodir, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %92

44:                                               ; preds = %32
  %45 = load i8*, i8** @archdirname, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** @archdirname, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @strlcpy(i8* %50, i8* %51, i64 %52)
  br label %73

54:                                               ; preds = %44
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @strlcpy(i8* %55, i8* %56, i64 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = call i8* @strrchr(i8* %59, i8 signext 47)
  store i8* %60, i8** %10, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 0, i8* %64, align 1
  br label %68

65:                                               ; preds = %54
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** @archdirname, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @strlcat(i8* %69, i8* %70, i64 %71)
  br label %73

73:                                               ; preds = %68, %49
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @strlcat(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load i8*, i8** %3, align 8
  %78 = call i8* @strrchr(i8* %77, i8 signext 47)
  store i8* %78, i8** %10, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i8*, i8** %6, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @strlcat(i8* %81, i8* %82, i64 %83)
  br label %91

85:                                               ; preds = %73
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @strlcat(i8* %86, i8* %88, i64 %89)
  br label %91

91:                                               ; preds = %85, %80
  br label %97

92:                                               ; preds = %32
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @strlcpy(i8* %93, i8* %94, i64 %95)
  br label %97

97:                                               ; preds = %92, %91
  %98 = load i32*, i32** @timefnamefmt, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @mtime_old_timelog(i8* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 -1, i32* %2, align 4
  br label %135

106:                                              ; preds = %100
  br label %128

107:                                              ; preds = %97
  %108 = load i8*, i8** %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @strlcat(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  %111 = load i8*, i8** %6, align 8
  %112 = call i8* @get_logfile_suffix(i8* %111)
  store i8* %112, i8** %5, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 -1, i32* %2, align 4
  br label %135

116:                                              ; preds = %107
  %117 = load i8*, i8** %6, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @strlcat(i8* %117, i8* %118, i64 %119)
  %121 = load i8*, i8** %6, align 8
  %122 = call i64 @stat(i8* %121, %struct.stat* %4)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 -1, i32* %2, align 4
  br label %135

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %125, %106
  %129 = load i32, i32* @timenow, align 4
  %130 = call i32 @ptimeget_secs(i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = sub nsw i32 %130, %131
  %133 = add nsw i32 %132, 1800
  %134 = sdiv i32 %133, 3600
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %128, %124, %115, %105
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @mtime_old_timelog(i8*) #1

declare dso_local i8* @get_logfile_suffix(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @ptimeget_secs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
