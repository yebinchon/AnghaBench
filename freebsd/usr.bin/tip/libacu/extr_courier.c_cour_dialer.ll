; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_courier.c_cour_dialer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_courier.c_cour_dialer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Using \22%s\22\0A\00", align 1
@FD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't synchronize with courier\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"AT E0\0D\00", align 1
@TCIOFLUSH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"AT C1 E0 H0 Q0 X6 V1\0D\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\0D\0AOK\0D\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"AT D\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@connected = common dso_local global i32 0, align 4
@dialtimeout = common dso_local global i64 0, align 8
@DIALTIMEOUT = common dso_local global i32 0, align 4
@HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cour_dialer(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.termios, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @VERBOSE, align 4
  %9 = call i32 @value(i32 %8)
  %10 = call i64 @boolean(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @FD, align 4
  %17 = call i32 @tcgetattr(i32 %16, %struct.termios* %7)
  %18 = load i32, i32* @HUPCL, align 4
  %19 = getelementptr inbounds %struct.termios, %struct.termios* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @FD, align 4
  %23 = load i32, i32* @TCSAFLUSH, align 4
  %24 = call i32 @tcsetattr(i32 %22, i32 %23, %struct.termios* %7)
  %25 = call i32 (...) @coursync()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %41, %27
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %78

30:                                               ; preds = %15
  %31 = load i32, i32* @FD, align 4
  %32 = call i32 @cour_write(i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %33 = call i32 @sleep(i32 1)
  %34 = load i32, i32* @FD, align 4
  %35 = load i32, i32* @TCIOFLUSH, align 4
  %36 = call i32 @tcflush(i32 %34, i32 %35)
  %37 = load i32, i32* @FD, align 4
  %38 = call i32 @cour_write(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 21)
  %39 = call i32 @cour_swallow(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %28

42:                                               ; preds = %30
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @fflush(i32 %43)
  %45 = load i32, i32* @FD, align 4
  %46 = call i32 @cour_write(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %47 = load i8*, i8** %4, align 8
  store i8* %47, i8** %6, align 8
  br label %48

48:                                               ; preds = %60, %42
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 61
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  store i8 44, i8* %58, align 1
  br label %59

59:                                               ; preds = %57, %52
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  br label %48

63:                                               ; preds = %48
  %64 = load i32, i32* @FD, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = call i32 @cour_write(i32 %64, i8* %65, i32 %67)
  %69 = load i32, i32* @FD, align 4
  %70 = call i32 @cour_write(i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %71 = call i32 (...) @cour_connect()
  store i32 %71, i32* @connected, align 4
  %72 = load i64, i64* @dialtimeout, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = call i32 (...) @cour_disconnect()
  br label %76

76:                                               ; preds = %74, %63
  %77 = load i32, i32* @connected, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %28
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @coursync(...) #1

declare dso_local i32 @cour_write(i32, i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @tcflush(i32, i32) #1

declare dso_local i32 @cour_swallow(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cour_connect(...) #1

declare dso_local i32 @cour_disconnect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
