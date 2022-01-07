; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_main.c_urihandling.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_main.c_urihandling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32* }

@ARG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"octet\00", align 1
@MAXLINE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid URI: Couldn't find / after hostname\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"mode=\00", align 1
@modes = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Invalid mode: '%s'\0A\00", align 1
@mode = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"get %s\00", align 1
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @urihandling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urihandling(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i32, i32* @ARG_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %16 = load i32, i32* @MAXLINE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* @ARG_MAX, align 4
  %21 = call i32 @strlcpy(i8* %15, i8* %19, i32 %20)
  %22 = getelementptr inbounds i8, i8* %15, i64 7
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 47)
  store i8* %24, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #4
  unreachable

30:                                               ; preds = %1
  %31 = load i8*, i8** %9, align 8
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 59)
  store i8* %35, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %93

37:                                               ; preds = %30
  %38 = load i8*, i8** %9, align 8
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %92

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 5
  store i8* %47, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %68, %44
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @modes, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %48
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @modes, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i64 @strcmp(i32* %62, i8* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %71

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %48

71:                                               ; preds = %66, %48
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @modes, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load i32, i32* @stderr, align 4
  %81 = load i8*, i8** @mode, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  %83 = call i32 @exit(i32 1) #4
  unreachable

84:                                               ; preds = %71
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @modes, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @settftpmode(i8* %90)
  br label %92

92:                                               ; preds = %84, %37
  br label %95

93:                                               ; preds = %30
  %94 = call i32 @settftpmode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %92
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @setpeer0(i8* %96, i32* null)
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  %100 = call i32 @makeargv(i8* %18)
  %101 = load i32, i32* @margc, align 4
  %102 = load i32, i32* @margv, align 4
  %103 = call i32 @get(i32 %101, i32 %102)
  %104 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %104)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i32*, i8*) #2

declare dso_local i32 @settftpmode(i8*) #2

declare dso_local i32 @setpeer0(i8*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @makeargv(i8*) #2

declare dso_local i32 @get(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
