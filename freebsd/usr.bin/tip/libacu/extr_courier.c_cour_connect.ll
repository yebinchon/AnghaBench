; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_courier.c_cour_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_courier.c_cour_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baud_msg = type { i8*, i32 }
%struct.termios = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@sigALRM = common dso_local global i32 0, align 4
@dialtimeout = common dso_local global i64 0, align 8
@timeoutbuf = common dso_local global i32 0, align 4
@DIALTIMEOUT = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RINGING\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@baud_msg = common dso_local global %struct.baud_msg* null, align 8
@TCSAFLUSH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cour_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cour_connect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca %struct.baud_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.termios, align 4
  %10 = call i64 @cour_swallow(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %125

13:                                               ; preds = %0
  %14 = load i32, i32* @SIGALRM, align 4
  %15 = load i32, i32* @sigALRM, align 4
  %16 = call i32 @signal(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %65, %55, %13
  store i32 0, i32* %3, align 4
  store i32 63, i32* %4, align 4
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %19 = call i32 @bzero(i8* %18, i32 64)
  store i64 0, i64* @dialtimeout, align 8
  store i32 0, i32* %3, align 4
  store i32 63, i32* %4, align 4
  br label %20

20:                                               ; preds = %114, %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %119

23:                                               ; preds = %20
  %24 = load i32, i32* @timeoutbuf, align 4
  %25 = call i64 @setjmp(i32 %24) #3
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %119

28:                                               ; preds = %23
  %29 = load i32, i32* @DIALTIMEOUT, align 4
  %30 = call i32 @value(i32 %29)
  %31 = call i32 @number(i32 %30)
  %32 = call i32 @alarm(i32 %31)
  %33 = load i32, i32* @FD, align 4
  %34 = call i32 @read(i32 %33, i8* %2, i32 1)
  store i32 %34, i32* %5, align 4
  %35 = call i32 @alarm(i32 0)
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %119

39:                                               ; preds = %28
  %40 = load i8, i8* %2, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, 127
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %2, align 1
  %44 = load i8, i8* %2, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 13
  br i1 %46, label %47, label %109

47:                                               ; preds = %39
  %48 = call i64 @cour_swallow(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %119

51:                                               ; preds = %47
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %53 = load i8, i8* %52, align 16
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %17

56:                                               ; preds = %51
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @VERBOSE, align 4
  %62 = call i32 @value(i32 %61)
  %63 = call i64 @boolean(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %17

66:                                               ; preds = %60, %56
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %68 = call i64 @strncmp(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %119

71:                                               ; preds = %66
  %72 = load %struct.baud_msg*, %struct.baud_msg** @baud_msg, align 8
  store %struct.baud_msg* %72, %struct.baud_msg** %7, align 8
  br label %73

73:                                               ; preds = %105, %71
  %74 = load %struct.baud_msg*, %struct.baud_msg** %7, align 8
  %75 = getelementptr inbounds %struct.baud_msg, %struct.baud_msg* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %108

78:                                               ; preds = %73
  %79 = load %struct.baud_msg*, %struct.baud_msg** %7, align 8
  %80 = getelementptr inbounds %struct.baud_msg, %struct.baud_msg* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %83 = getelementptr inbounds i8, i8* %82, i64 8
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  %85 = call i64 @strcmp(i8* %81, i8* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %78
  %88 = load i32, i32* @FD, align 4
  %89 = call i32 @tcgetattr(i32 %88, %struct.termios* %9)
  %90 = load %struct.baud_msg*, %struct.baud_msg** %7, align 8
  %91 = getelementptr inbounds %struct.baud_msg, %struct.baud_msg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @cfsetospeed(%struct.termios* %9, i32 %92)
  %94 = load %struct.baud_msg*, %struct.baud_msg** %7, align 8
  %95 = getelementptr inbounds %struct.baud_msg, %struct.baud_msg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @cfsetispeed(%struct.termios* %9, i32 %96)
  %98 = load i32, i32* @FD, align 4
  %99 = load i32, i32* @TCSAFLUSH, align 4
  %100 = call i32 @tcsetattr(i32 %98, i32 %99, %struct.termios* %9)
  %101 = load i32, i32* @SIGALRM, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @signal(i32 %101, i32 %102)
  store i32 1, i32* %1, align 4
  br label %125

104:                                              ; preds = %78
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.baud_msg*, %struct.baud_msg** %7, align 8
  %107 = getelementptr inbounds %struct.baud_msg, %struct.baud_msg* %106, i32 1
  store %struct.baud_msg* %107, %struct.baud_msg** %7, align 8
  br label %73

108:                                              ; preds = %73
  br label %119

109:                                              ; preds = %39
  %110 = load i8, i8* %2, align 1
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %112
  store i8 %110, i8* %113, align 1
  br label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %4, align 4
  br label %20

119:                                              ; preds = %108, %70, %50, %38, %27, %20
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %121 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %120)
  %122 = load i32, i32* @SIGALRM, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @signal(i32 %122, i32 %123)
  store i32 0, i32* %1, align 4
  br label %125

125:                                              ; preds = %119, %87, %12
  %126 = load i32, i32* %1, align 4
  ret i32 %126
}

declare dso_local i64 @cour_swallow(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @number(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @boolean(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @cfsetospeed(%struct.termios*, i32) #1

declare dso_local i32 @cfsetispeed(%struct.termios*, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
