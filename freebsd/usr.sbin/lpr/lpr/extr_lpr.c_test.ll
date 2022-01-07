; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpr/extr_lpr.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpr/extr_lpr.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.exec = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s: cannot access %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@statb = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: cannot stat %s\0A\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: %s is a directory\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: %s is an empty file\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"%s: cannot open %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: %s is an executable program\00", align 1
@rflag = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s: %s: is not removable by you\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c" and is unprintable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.exec, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @access(i8* %9, i32 4)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i8*, i8** @progname, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14)
  store i32 -1, i32* %2, align 4
  br label %118

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @stat(i8* %17, %struct.TYPE_3__* @statb)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8*, i8** @progname, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %22)
  store i32 -1, i32* %2, align 4
  br label %118

24:                                               ; preds = %16
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @statb, i32 0, i32 0), align 8
  %26 = load i32, i32* @S_IFMT, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @S_IFDIR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i8*, i8** @progname, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %32)
  store i32 -1, i32* %2, align 4
  br label %118

34:                                               ; preds = %24
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @statb, i32 0, i32 1), align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i8*, i8** @progname, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %38, i8* %39)
  store i32 -1, i32* %2, align 4
  br label %118

41:                                               ; preds = %34
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* @O_RDONLY, align 4
  %44 = call i32 @open(i8* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i8*, i8** @progname, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %47, i8* %48)
  store i32 -1, i32* %2, align 4
  br label %118

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @read(i32 %51, %struct.exec* %4, i32 4)
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %53, 4
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.exec, %struct.exec* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @N_BADMAG(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** @progname, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %61, i8* %62)
  br label %114

64:                                               ; preds = %55, %50
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i64, i64* @rflag, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %113

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = call i8* @strrchr(i8* %70, i8 signext 47)
  store i8* %71, i8** %7, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @checkwriteperm(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 1, i32* %2, align 4
  br label %118

78:                                               ; preds = %73
  br label %109

79:                                               ; preds = %69
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = icmp eq i8* %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @checkwriteperm(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 %85, i32* %6, align 4
  br label %104

86:                                               ; preds = %79
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %5, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i8* @malloc(i64 %93)
  store i8* %94, i8** %8, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %3, align 8
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @strlcpy(i8* %95, i8* %96, i64 %97)
  %99 = load i8*, i8** %3, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @checkwriteperm(i8* %99, i8* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @free(i8* %102)
  br label %104

104:                                              ; preds = %86, %83
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 1, i32* %2, align 4
  br label %118

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %108, %78
  %110 = load i8*, i8** @progname, align 8
  %111 = load i8*, i8** %3, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %109, %64
  store i32 0, i32* %2, align 4
  br label %118

114:                                              ; preds = %60
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @close(i32 %116)
  store i32 -1, i32* %2, align 4
  br label %118

118:                                              ; preds = %114, %113, %107, %77, %46, %37, %30, %20, %12
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, %struct.exec*, i32) #1

declare dso_local i32 @N_BADMAG(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @checkwriteperm(i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
