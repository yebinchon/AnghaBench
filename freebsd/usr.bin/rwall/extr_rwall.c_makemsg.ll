; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rwall/extr_rwall.c_makemsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rwall/extr_rwall.c_makemsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32 }
%struct.passwd = type { i8* }
%struct.stat = type { i64 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s/wall.XXXXXX\00", align 1
@_PATH_TMP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"can't open temporary file\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Remote Broadcast Message from %s@%s\0A\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@notty = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"        (%s) at %d:%02d ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"can't read %s\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"can't stat temporary file\00", align 1
@mbuf = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"can't read temporary file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @makemsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makemsg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tm*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca [64 x i8], align 16
  %15 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %16 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %21 = load i8*, i8** @_PATH_TMP, align 8
  %22 = call i32 @snprintf(i8* %20, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %24 = call i32 @mkstemp(i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %8, align 4
  %28 = call i32* @fdopen(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %7, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %1
  %31 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %34 = call i32 @unlink(i8* %33)
  %35 = call i8* (...) @getlogin()
  store i8* %35, i8** %15, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = call i32 (...) @getuid()
  %40 = call %struct.passwd* @getpwuid(i32 %39)
  store %struct.passwd* %40, %struct.passwd** %4, align 8
  %41 = load %struct.passwd*, %struct.passwd** %4, align 8
  %42 = icmp ne %struct.passwd* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.passwd*, %struct.passwd** %4, align 8
  %45 = getelementptr inbounds %struct.passwd, %struct.passwd* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  br label %48

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i8* [ %46, %43 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %47 ]
  store i8* %49, i8** %15, align 8
  br label %50

50:                                               ; preds = %48, %32
  %51 = trunc i64 %17 to i32
  %52 = call i32 @gethostname(i8* %19, i32 %51)
  %53 = call i32 @time(i32* %6)
  %54 = call %struct.tm* @localtime(i32* %6)
  store %struct.tm* %54, %struct.tm** %3, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %56, i8* %19)
  %58 = load i32, i32* @STDERR_FILENO, align 4
  %59 = call i8* @ttyname(i32 %58)
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i8*, i8** @notty, align 8
  store i8* %63, i8** %10, align 8
  br label %64

64:                                               ; preds = %62, %50
  %65 = load i32*, i32** %7, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load %struct.tm*, %struct.tm** %3, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tm*, %struct.tm** %3, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %66, i32 %69, i32 %72)
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @putc(i8 signext 10, i32* %74)
  %76 = load i8*, i8** %2, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %64
  %79 = load i8*, i8** %2, align 8
  %80 = load i32, i32* @stdin, align 4
  %81 = call i32 @freopen(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %2, align 8
  %85 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %83, %78, %64
  br label %87

87:                                               ; preds = %92, %86
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %89 = load i32, i32* @stdin, align 4
  %90 = call i64 @fgets(i8* %88, i32 256, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @fputs(i8* %93, i32* %94)
  br label %87

96:                                               ; preds = %87
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @rewind(i32* %97)
  %99 = load i32, i32* %8, align 4
  %100 = call i64 @fstat(i32 %99, %struct.stat* %5)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %96
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %9, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32* @malloc(i64 %107)
  store i32* %108, i32** @mbuf, align 8
  %109 = load i32*, i32** @mbuf, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %104
  %114 = load i32*, i32** @mbuf, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i64 @fread(i32* %114, i32 4, i64 %115, i32* %116)
  %118 = load i64, i64* %9, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %113
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @close(i32 %123)
  %125 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %125)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i8* @getlogin(...) #2

declare dso_local %struct.passwd* @getpwuid(i32) #2

declare dso_local i32 @getuid(...) #2

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i32 @time(i32*) #2

declare dso_local %struct.tm* @localtime(i32*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

declare dso_local i8* @ttyname(i32) #2

declare dso_local i32 @putc(i8 signext, i32*) #2

declare dso_local i32 @freopen(i8*, i8*, i32) #2

declare dso_local i64 @fgets(i8*, i32, i32) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i64 @fread(i32*, i32, i64, i32*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
