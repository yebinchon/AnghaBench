; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_grp_set_passwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_grp_set_passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.group = type { i8*, i8* }
%struct.termios = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ECHO = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%sassword for group %s:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"New p\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@stdout = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"-h file descriptor\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"empty password read on file descriptor %d\00", align 1
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"wrong encrypted passwrd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.group*, i32, i32, i32)* @grp_set_passwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grp_set_passwd(%struct.group* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.termios, align 4
  %12 = alloca %struct.termios, align 4
  %13 = alloca i8*, align 8
  %14 = alloca [256 x i8], align 16
  store %struct.group* %0, %struct.group** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %105

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.group*, %struct.group** %5, align 8
  %23 = getelementptr inbounds %struct.group, %struct.group* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  br label %105

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @isatty(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = bitcast %struct.termios* %12 to i8*
  %30 = bitcast %struct.termios* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load i32, i32* @ECHO, align 4
  %32 = xor i32 %31, -1
  %33 = getelementptr inbounds %struct.termios, %struct.termios* %12, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TCSANOW, align 4
  %38 = call i32 @tcsetattr(i32 %36, i32 %37, %struct.termios* %12)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %43 = load %struct.group*, %struct.group** %5, align 8
  %44 = getelementptr inbounds %struct.group, %struct.group* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %45)
  %47 = load i32, i32* @stdout, align 4
  %48 = call i32 @fflush(i32 %47)
  br label %49

49:                                               ; preds = %28, %24
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %52 = call i32 @read(i32 %50, i8* %51, i32 255)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @TCSANOW, align 4
  %58 = call i32 @tcsetattr(i32 %56, i32 %57, %struct.termios* %11)
  %59 = load i32, i32* @stdout, align 4
  %60 = call i32 @fputc(i8 signext 10, i32 %59)
  %61 = load i32, i32* @stdout, align 4
  %62 = call i32 @fflush(i32 %61)
  br label %63

63:                                               ; preds = %55, %49
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @EX_OSERR, align 4
  %68 = call i32 @err(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %71
  store i8 0, i8* %72, align 1
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %74 = call i8* @strpbrk(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %74, i8** %13, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i8*, i8** %13, align 8
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %76, %69
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %80 = load i8, i8* %79, align 16
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @EX_DATAERR, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  %85 = call i32 (i32, i8*, ...) @errx(i32 %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %91 = call i64 @strchr(i8* %90, i8 signext 58)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @EX_DATAERR, align 4
  %95 = call i32 (i32, i8*, ...) @errx(i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %89
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %98 = load %struct.group*, %struct.group** %5, align 8
  %99 = getelementptr inbounds %struct.group, %struct.group* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %105

100:                                              ; preds = %86
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %102 = call i8* @pw_pwcrypt(i8* %101)
  %103 = load %struct.group*, %struct.group** %5, align 8
  %104 = getelementptr inbounds %struct.group, %struct.group* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %17, %21, %100, %96
  ret void
}

declare dso_local i32 @isatty(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @pw_pwcrypt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
