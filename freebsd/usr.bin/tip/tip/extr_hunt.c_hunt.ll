; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_hunt.c_hunt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_hunt.c_hunt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@SIGALRM = common dso_local global i32 0, align 4
@dead = common dso_local global i32 0, align 4
@deadfl = common dso_local global i32 0, align 4
@uucplock = common dso_local global i8* null, align 8
@HW = common dso_local global i32 0, align 4
@deadline = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@DC = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@FD = common dso_local global i64 0, align 8
@HUPCL = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@TIOCEXCL = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hunt(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.termios, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @SIGALRM, align 4
  %8 = load i32, i32* @dead, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %86, %28, %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @getremote(i8* %11)
  store i8* %12, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %89

14:                                               ; preds = %10
  store i32 0, i32* @deadfl, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strrchr(i8* %15, i8 signext 47)
  store i8* %16, i8** @uucplock, align 8
  %17 = load i8*, i8** @uucplock, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** @uucplock, align 8
  br label %24

21:                                               ; preds = %14
  %22 = load i8*, i8** @uucplock, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** @uucplock, align 8
  br label %24

24:                                               ; preds = %21, %19
  %25 = load i8*, i8** @uucplock, align 8
  %26 = call i64 @uu_lock(i8* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %10

29:                                               ; preds = %24
  %30 = load i32, i32* @HW, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %89

33:                                               ; preds = %29
  %34 = load i32, i32* @deadline, align 4
  %35 = call i64 @setjmp(i32 %34) #3
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = call i32 @alarm(i32 10)
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @O_RDWR, align 4
  %41 = load i32, i32* @DC, align 4
  %42 = call i32 @value(i32 %41)
  %43 = call i64 @boolean(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @O_NONBLOCK, align 4
  br label %48

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = or i32 %40, %49
  %51 = call i64 @open(i8* %39, i32 %50)
  store i64 %51, i64* @FD, align 8
  br label %52

52:                                               ; preds = %48, %33
  %53 = call i32 @alarm(i32 0)
  %54 = load i64, i64* @FD, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @perror(i8* %57)
  store i32 1, i32* @deadfl, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* @deadfl, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* @FD, align 8
  %64 = call i32 @tcgetattr(i64 %63, %struct.termios* %6)
  %65 = load i32, i32* @DC, align 4
  %66 = call i32 @value(i32 %65)
  %67 = call i64 @boolean(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @HUPCL, align 4
  %71 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %62
  %75 = load i64, i64* @FD, align 8
  %76 = load i32, i32* @TCSAFLUSH, align 4
  %77 = call i32 @tcsetattr(i64 %75, i32 %76, %struct.termios* %6)
  %78 = load i64, i64* @FD, align 8
  %79 = load i32, i32* @TIOCEXCL, align 4
  %80 = call i32 @ioctl(i64 %78, i32 %79, i32 0)
  %81 = load i32, i32* @SIGALRM, align 4
  %82 = load i32, i32* @SIG_DFL, align 4
  %83 = call i32 @signal(i32 %81, i32 %82)
  %84 = load i8*, i8** %4, align 8
  %85 = ptrtoint i8* %84 to i64
  store i64 %85, i64* %2, align 8
  br label %101

86:                                               ; preds = %59
  %87 = load i8*, i8** @uucplock, align 8
  %88 = call i32 @uu_unlock(i8* %87)
  br label %10

89:                                               ; preds = %32, %10
  %90 = load i32, i32* @SIGALRM, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @signal(i32 %90, i32 %91)
  %93 = load i32, i32* @deadfl, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %99

96:                                               ; preds = %89
  %97 = load i8*, i8** %4, align 8
  %98 = ptrtoint i8* %97 to i64
  br label %99

99:                                               ; preds = %96, %95
  %100 = phi i64 [ -1, %95 ], [ %98, %96 ]
  store i64 %100, i64* %2, align 8
  br label %101

101:                                              ; preds = %99, %74
  %102 = load i64, i64* %2, align 8
  ret i64 %102
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i8* @getremote(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @uu_lock(i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @alarm(i32) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @tcgetattr(i64, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i64, i32, %struct.termios*) #1

declare dso_local i32 @ioctl(i64, i32, i32) #1

declare dso_local i32 @uu_unlock(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
