; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_dn11.c_dn_dialer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_dn11.c_dn_dialer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\0Astarting call...\00", align 1
@dn = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
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
@FD = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"lost carrier...\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"dialup line open failed...\00", align 1
@HUPCL = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_dialer(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.termios, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @VERBOSE, align 4
  %11 = call i32 @value(i32 %10)
  %12 = call i64 @boolean(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @open(i8* %17, i32 1)
  store i32 %18, i32* @dn, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EBUSY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %28

26:                                               ; preds = %20
  %27 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %24
  store i32 0, i32* %3, align 4
  br label %131

29:                                               ; preds = %16
  %30 = load i32, i32* @jmpbuf, align 4
  %31 = call i64 @setjmp(i32 %30) #4
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* @child, align 4
  %35 = load i32, i32* @SIGKILL, align 4
  %36 = call i32 @kill(i32 %34, i32 %35)
  %37 = load i32, i32* @dn, align 4
  %38 = call i32 @close(i32 %37)
  store i32 0, i32* %3, align 4
  br label %131

39:                                               ; preds = %29
  %40 = load i32, i32* @SIGALRM, align 4
  %41 = load i32, i32* @alarmtr, align 4
  %42 = call i32 @signal(i32 %40, i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = mul nsw i32 5, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 30
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 30, %48 ], [ %50, %49 ]
  %53 = call i32 @alarm(i32 %52)
  %54 = call i32 (...) @fork()
  store i32 %54, i32* @child, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

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
  %67 = load i32, i32* @dn, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @strlen(i8* %69)
  store i32 %70, i32* %6, align 4
  %71 = call i32 @write(i32 %67, i8* %68, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @exit(i32 %75) #5
  unreachable

77:                                               ; preds = %51
  %78 = load i8*, i8** @DV, align 8
  %79 = call i32 @open(i8* %78, i32 2)
  store i32 %79, i32* @FD, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load i64, i64* @errno, align 8
  %83 = load i64, i64* @EIO, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %89

87:                                               ; preds = %81
  %88 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %85
  %90 = call i32 @alarm(i32 0)
  %91 = load i32, i32* @child, align 4
  %92 = load i32, i32* @SIGKILL, align 4
  %93 = call i32 @kill(i32 %91, i32 %92)
  %94 = load i32, i32* @dn, align 4
  %95 = call i32 @close(i32 %94)
  store i32 0, i32* %3, align 4
  br label %131

96:                                               ; preds = %77
  %97 = call i32 @alarm(i32 0)
  %98 = load i32, i32* @dn, align 4
  %99 = call i32 @tcgetattr(i32 %98, %struct.termios* %9)
  %100 = load i32, i32* @HUPCL, align 4
  %101 = getelementptr inbounds %struct.termios, %struct.termios* %9, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @dn, align 4
  %105 = load i32, i32* @TCSANOW, align 4
  %106 = call i32 @tcsetattr(i32 %104, i32 %105, %struct.termios* %9)
  %107 = load i32, i32* @SIGALRM, align 4
  %108 = load i32, i32* @SIG_DFL, align 4
  %109 = call i32 @signal(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %119, %96
  %111 = call i32 @wait(i32* %6)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* @child, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, -1
  br label %117

117:                                              ; preds = %114, %110
  %118 = phi i1 [ false, %110 ], [ %116, %114 ]
  br i1 %118, label %119, label %120

119:                                              ; preds = %117
  br label %110

120:                                              ; preds = %117
  %121 = load i32, i32* @stdout, align 4
  %122 = call i32 @fflush(i32 %121)
  %123 = load i32, i32* @dn, align 4
  %124 = call i32 @close(i32 %123)
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32, i32* @FD, align 4
  %129 = call i32 @close(i32 %128)
  store i32 0, i32* %3, align 4
  br label %131

130:                                              ; preds = %120
  store i32 1, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %127, %89, %33, %28
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @fflush(i32) #1

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
