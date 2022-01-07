; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_v831.c_v831_dialer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_v831.c_v831_dialer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\0Astarting call...\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@AC = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"line busy...\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"acu open error...\00", align 1
@jmpbuf = common dso_local global i32 0, align 4
@child = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@alarmtr = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@DV = common dso_local global i8* null, align 8
@FD = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"lost carrier...\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"dialup line open failed...\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v831_dialer(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @VERBOSE, align 4
  %10 = call i32 @value(i32 %9)
  %11 = call i64 @boolean(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = call i8* @open(i8* %16, i32 %17)
  store i8* %18, i8** @AC, align 8
  %19 = icmp ult i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32, i32* @errno, align 4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %28

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %24
  store i32 0, i32* %3, align 4
  br label %116

29:                                               ; preds = %15
  %30 = load i32, i32* @jmpbuf, align 4
  %31 = call i64 @setjmp(i32 %30) #4
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* @child, align 4
  %35 = load i32, i32* @SIGKILL, align 4
  %36 = call i32 @kill(i32 %34, i32 %35)
  %37 = load i8*, i8** @AC, align 8
  %38 = call i32 @close(i8* %37)
  store i32 0, i32* %3, align 4
  br label %116

39:                                               ; preds = %29
  %40 = load i32, i32* @SIGALRM, align 4
  %41 = load i32, i32* @alarmtr, align 4
  %42 = call i32 @signal(i32 %40, i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = mul nsw i32 5, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 30
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 30, %48 ], [ %50, %49 ]
  %53 = call i32 @alarm(i32 %52)
  %54 = call i32 (...) @fork()
  store i32 %54, i32* @child, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load i32, i32* @SIGALRM, align 4
  %58 = load i32, i32* @SIG_IGN, align 4
  %59 = call i32 @signal(i32 %57, i32 %58)
  %60 = load i32, i32* @SIGINT, align 4
  %61 = load i32, i32* @SIG_IGN, align 4
  %62 = call i32 @signal(i32 %60, i32 %61)
  %63 = load i32, i32* @SIGQUIT, align 4
  %64 = load i32, i32* @SIG_IGN, align 4
  %65 = call i32 @signal(i32 %63, i32 %64)
  %66 = call i32 @sleep(i32 2)
  %67 = load i8*, i8** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call signext i8 @dialit(i8* %67, i8* %68)
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 65
  %72 = zext i1 %71 to i32
  %73 = call i32 @exit(i32 %72) #5
  unreachable

74:                                               ; preds = %51
  %75 = load i8*, i8** @DV, align 8
  %76 = load i32, i32* @O_RDWR, align 4
  %77 = call i8* @open(i8* %75, i32 %76)
  store i8* %77, i8** @FD, align 8
  %78 = icmp ult i8* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load i32, i32* @errno, align 4
  %81 = load i32, i32* @EIO, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %87

85:                                               ; preds = %79
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %83
  %88 = call i32 @alarm(i32 0)
  %89 = load i32, i32* @child, align 4
  %90 = load i32, i32* @SIGKILL, align 4
  %91 = call i32 @kill(i32 %89, i32 %90)
  %92 = load i8*, i8** @AC, align 8
  %93 = call i32 @close(i8* %92)
  store i32 0, i32* %3, align 4
  br label %116

94:                                               ; preds = %74
  %95 = call i32 @alarm(i32 0)
  %96 = load i32, i32* @SIGALRM, align 4
  %97 = load i32, i32* @SIG_DFL, align 4
  %98 = call i32 @signal(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %108, %94
  %100 = call i32 @wait(i32* %6)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* @child, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, -1
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi i1 [ false, %99 ], [ %105, %103 ]
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  br label %99

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i8*, i8** @AC, align 8
  %114 = call i32 @close(i8* %113)
  store i32 0, i32* %3, align 4
  br label %116

115:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %112, %87, %33, %28
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @open(i8*, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @close(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local signext i8 @dialit(i8*, i8*) #1

declare dso_local i32 @wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
