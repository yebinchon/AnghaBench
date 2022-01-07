; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_hayes.c_hay_dialer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_hayes.c_hay_dialer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"\0Adialing...\00", align 1
@stdout = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@TCIOFLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ATv0\0D\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ATTD\00", align 1
@DIALING = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"01234\00", align 1
@CONNECTED = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@dialtimeout = common dso_local global i64 0, align 8
@DIALTIMEOUT = common dso_local global i32 0, align 4
@HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hay_dialer(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.termios, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = call i64 (...) @hay_sync()
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

13:                                               ; preds = %2
  %14 = load i32, i32* @VERBOSE, align 4
  %15 = call i32 @value(i32 %14)
  %16 = call i64 @boolean(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @fflush(i32 %21)
  %23 = load i32, i32* @FD, align 4
  %24 = call i32 @tcgetattr(i32 %23, %struct.termios* %9)
  %25 = load i32, i32* @HUPCL, align 4
  %26 = getelementptr inbounds %struct.termios, %struct.termios* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @FD, align 4
  %30 = load i32, i32* @TCSANOW, align 4
  %31 = call i32 @tcsetattr(i32 %29, i32 %30, %struct.termios* %9)
  %32 = load i32, i32* @FD, align 4
  %33 = load i32, i32* @TCIOFLUSH, align 4
  %34 = call i32 @tcflush(i32 %32, i32 %33)
  %35 = load i32, i32* @FD, align 4
  %36 = call i32 @write(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %37 = call signext i8 @gobble(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %38 = call signext i8 @gobble(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @FD, align 4
  %40 = call i32 @write(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %41 = load i8*, i8** %4, align 8
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %54, %20
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 61
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  store i8 44, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %46
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  br label %42

57:                                               ; preds = %42
  %58 = load i32, i32* @FD, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = call i32 @write(i32 %58, i8* %59, i32 %61)
  %63 = load i32, i32* @DIALING, align 4
  store i32 %63, i32* @state, align 4
  %64 = load i32, i32* @FD, align 4
  %65 = call i32 @write(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 0, i32* %7, align 4
  %66 = call signext i8 @gobble(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %57
  %69 = call signext i8 @gobble(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i8 %69, i8* %8, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 49
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i8, i8* %8, align 1
  %74 = call i32 @error_rep(i8 signext %73)
  br label %76

75:                                               ; preds = %68
  store i32 1, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %72
  br label %77

77:                                               ; preds = %76, %57
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @CONNECTED, align 4
  store i32 %81, i32* @state, align 4
  br label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @FAILED, align 4
  store i32 %83, i32* @state, align 4
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %95

85:                                               ; preds = %80
  %86 = load i32, i32* @FD, align 4
  %87 = load i32, i32* @TCIOFLUSH, align 4
  %88 = call i32 @tcflush(i32 %86, i32 %87)
  %89 = load i64, i64* @dialtimeout, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 (...) @hay_disconnect()
  br label %93

93:                                               ; preds = %91, %85
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %82, %12
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @hay_sync(...) #1

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @tcflush(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local signext i8 @gobble(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @error_rep(i8 signext) #1

declare dso_local i32 @hay_disconnect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
