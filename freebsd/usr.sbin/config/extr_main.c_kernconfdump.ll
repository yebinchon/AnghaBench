; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_kernconfdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_kernconfdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Couldn't open file '%s'\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"fstat() failed\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"'%s' is a directory\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fdopen() failed\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Couldn't allocate memory\00", align 1
@.str.6 = private unnamed_addr constant [90 x i8] c"/usr/bin/elfdump -c %s | grep -A 8 kern_conf| tail -5 | cut -d ' ' -f 2 | paste - - - - -\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"asprintf() failed\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"popen() failed\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"%d%d%d%d%d\00", align 1
@.str.10 = private unnamed_addr constant [105 x i8] c"File %s doesn't contain configuration file. Either unsupported, or not compiled with INCLUDE_CONFIG_FILE\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"fseek() failed\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"\\0 found in the middle of a file\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @kernconfdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernconfdump(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @EXIT_FAILURE, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 (i32, i8*, ...) @err(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @fstat(i32 %27, %struct.stat* %3)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  %33 = call i32 (i32, i8*, ...) @err(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @S_ISDIR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @EXIT_FAILURE, align 4
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 (i32, i8*, ...) @errx(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %8, align 4
  %45 = call i32* @fdopen(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %45, i32** %4, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EXIT_FAILURE, align 4
  %50 = call i32 (i32, i8*, ...) @err(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  store i32 1024, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @calloc(i32 1, i32 %52)
  store i8* %53, i8** %16, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  %58 = call i32 (i32, i8*, ...) @err(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i8*, i8** %2, align 8
  %61 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i64 0, i64 0), i8* %60)
  %62 = load i8*, i8** %15, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EXIT_FAILURE, align 4
  %66 = call i32 (i32, i8*, ...) @errx(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i8*, i8** %15, align 8
  %69 = call i32* @popen(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %69, i32** %5, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EXIT_FAILURE, align 4
  %74 = call i32 (i32, i8*, ...) @errx(i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i8*, i8** %16, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @fread(i8* %78, i32 %79, i32 1, i32* %80)
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @pclose(i32* %82)
  %84 = load i8*, i8** %16, align 8
  %85 = call i32 @sscanf(i8* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  store i32 %85, i32* %8, align 4
  %86 = load i8*, i8** %16, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 5
  br i1 %89, label %90, label %94

90:                                               ; preds = %75
  %91 = load i32, i32* @EXIT_FAILURE, align 4
  %92 = load i8*, i8** %2, align 8
  %93 = call i32 (i32, i8*, ...) @errx(i32 %91, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.10, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %90, %75
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @SEEK_CUR, align 4
  %98 = call i32 @fseek(i32* %95, i32 %96, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* @EXIT_FAILURE, align 4
  %103 = call i32 (i32, i8*, ...) @err(i32 %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %94
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %133, %104
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @fgetc(i32* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @EOF, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %136

116:                                              ; preds = %109
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %11, align 4
  %122 = sub i32 %121, 1
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %119
  %126 = phi i1 [ false, %119 ], [ true, %124 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  br label %136

129:                                              ; preds = %116
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @stdout, align 4
  %132 = call i32 @fputc(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %9, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %105

136:                                              ; preds = %125, %115, %105
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @fclose(i32* %137)
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fputc(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
