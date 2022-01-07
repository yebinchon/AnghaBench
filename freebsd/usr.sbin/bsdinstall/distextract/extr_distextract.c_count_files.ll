; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/distextract/extr_distextract.c_count_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/distextract/extr_distextract.c_count_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }

@count_files.manifest = internal global i32* null, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s/MANIFEST\00", align 1
@distdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@archive = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Extract Error\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Error while extracting %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @count_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_files(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = add nsw i32 %18, 512
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %22 = load i32*, i32** @count_files.manifest, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = trunc i64 %15 to i32
  %26 = load i8*, i8** @distdir, align 8
  %27 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** @count_files.manifest, align 8
  br label %29

29:                                               ; preds = %24, %1
  %30 = load i32*, i32** @count_files.manifest, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %95

32:                                               ; preds = %29
  %33 = load i32*, i32** @count_files.manifest, align 8
  %34 = call i32 @rewind(i32* %33)
  br label %35

35:                                               ; preds = %93, %90, %52, %32
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %37 = load i32*, i32** @count_files.manifest, align 8
  %38 = call i32* @fgets(i8* %36, i32 512, i32* %37)
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %94

40:                                               ; preds = %35
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @strcspn(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %44, 1
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @strncmp(i8* %47, i8* %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40
  br label %35

53:                                               ; preds = %46
  %54 = load i64, i64* %7, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = sext i32 %60 to i64
  %62 = add i64 %54, %61
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %4, align 8
  %65 = call i64 @strcspn(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = sext i32 %72 to i64
  %74 = add i64 %66, %73
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %4, align 8
  %77 = call i64 @strcspn(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %53
  %81 = load i8*, i8** %4, align 8
  %82 = call i64 @strtol(i8* %81, i8** null, i32 10)
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i64, i64* @errno, align 8
  %88 = load i64, i64* @EINVAL, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %35

91:                                               ; preds = %86, %80
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

93:                                               ; preds = %53
  br label %35

94:                                               ; preds = %35
  br label %95

95:                                               ; preds = %94, %29
  %96 = call i32* (...) @archive_read_new()
  store i32* %96, i32** @archive, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = trunc i64 %20 to i32
  %100 = call i8* @archive_error_string(i32* null)
  %101 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %21, i32 %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* @TRUE, align 4
  %103 = call i32 @dialog_msgbox(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %21, i32 0, i32 0, i32 %102)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

104:                                              ; preds = %95
  %105 = load i32*, i32** @archive, align 8
  %106 = call i32 @archive_read_support_format_all(i32* %105)
  %107 = load i32*, i32** @archive, align 8
  %108 = call i32 @archive_read_support_filter_all(i32* %107)
  %109 = trunc i64 %15 to i32
  %110 = load i8*, i8** @distdir, align 8
  %111 = load i8*, i8** %3, align 8
  %112 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %110, i8* %111)
  %113 = load i32*, i32** @archive, align 8
  %114 = call i32 @archive_read_open_filename(i32* %113, i8* %17, i32 4096)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @ARCHIVE_OK, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %104
  %119 = trunc i64 %20 to i32
  %120 = load i8*, i8** %3, align 8
  %121 = load i32*, i32** @archive, align 8
  %122 = call i8* @archive_error_string(i32* %121)
  %123 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %21, i32 %119, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %120, i8* %122)
  %124 = load i32, i32* @TRUE, align 4
  %125 = call i32 @dialog_msgbox(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %21, i32 0, i32 0, i32 %124)
  store i32* null, i32** @archive, align 8
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

126:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %132, %126
  %128 = load i32*, i32** @archive, align 8
  %129 = call i32 @archive_read_next_header(i32* %128, %struct.archive_entry** %8)
  %130 = load i32, i32* @ARCHIVE_OK, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %127

135:                                              ; preds = %127
  %136 = load i32*, i32** @archive, align 8
  %137 = call i32 @archive_read_free(i32* %136)
  store i32* null, i32** @archive, align 8
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

139:                                              ; preds = %135, %118, %98, %91
  %140 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32* @archive_read_new(...) #2

declare dso_local i8* @archive_error_string(i32*) #2

declare dso_local i32 @dialog_msgbox(i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @archive_read_support_format_all(i32*) #2

declare dso_local i32 @archive_read_support_filter_all(i32*) #2

declare dso_local i32 @archive_read_open_filename(i32*, i8*, i32) #2

declare dso_local i32 @archive_read_next_header(i32*, %struct.archive_entry**) #2

declare dso_local i32 @archive_read_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
