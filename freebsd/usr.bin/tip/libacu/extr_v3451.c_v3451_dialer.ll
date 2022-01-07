; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_v3451.c_v3451_dialer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_v3451.c_v3451_dialer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.termios = type { i32 }

@BAUDRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"I\0D\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\05\0D\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"READY\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"can't synchronize with vadic 3451\0A\00", align 1
@FD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@term = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TCSANOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"D\0D\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"NUMBER?\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Vadic will not accept dial command\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0D\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Vadic will not accept phone number\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"DIALING:\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Vadic failed to dial\0A\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"\0Adialing...\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ON LINE\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"call failed\0A\00", align 1
@TCIOFLUSH = common dso_local global i32 0, align 4
@HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v3451_dialer(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [50 x i8], align 16
  %10 = alloca %struct.termios, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @BAUDRATE, align 4
  %12 = call i32 @value(i32 %11)
  %13 = call i32 @number(i32 %12)
  %14 = icmp slt i32 %13, 1200
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 1, %16
  %18 = call i32 @vawrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 1, %19
  %21 = call i32 @vawrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 1, %22
  %24 = call i32 @vawrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 2, %25
  %27 = call i32 @vawrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 @expect(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

32:                                               ; preds = %2
  %33 = load i32, i32* @FD, align 4
  %34 = call i32 @tcgetattr(i32 %33, %struct.termios* %10)
  %35 = load i32, i32* @HUPCL, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @term, i32 0, i32 0), align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @term, i32 0, i32 0), align 4
  %38 = load i32, i32* @FD, align 4
  %39 = load i32, i32* @TCSANOW, align 4
  %40 = call i32 @tcsetattr(i32 %38, i32 %39, %struct.termios* %10)
  %41 = call i32 @sleep(i32 1)
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 2, %42
  %44 = call i32 @vawrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = call i32 @expect(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %32
  %48 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

49:                                               ; preds = %32
  %50 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @snprintf(i8* %50, i32 50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %51)
  %53 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 1, %54
  %56 = call i32 @vawrite(i8* %53, i32 %55)
  %57 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %58 = call i32 @expect(i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  %61 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

62:                                               ; preds = %49
  %63 = load i32, i32* @SIGINT, align 4
  %64 = load i32, i32* @SIG_IGN, align 4
  %65 = call i32 @signal(i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 1, %66
  %68 = call i32 @vawrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 1, %69
  %71 = call i32 @vawrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %70)
  %72 = call i32 @expect(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %62
  %75 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

76:                                               ; preds = %62
  %77 = load i32, i32* @VERBOSE, align 4
  %78 = call i32 @value(i32 %77)
  %79 = call i64 @boolean(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %76
  %84 = call i32 @expect(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @SIGINT, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @signal(i32 %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %83
  %91 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

92:                                               ; preds = %83
  %93 = load i32, i32* @FD, align 4
  %94 = load i32, i32* @TCIOFLUSH, align 4
  %95 = call i32 @tcflush(i32 %93, i32 %94)
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %90, %74, %60, %47, %30
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @number(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @vawrite(i8*, i32) #1

declare dso_local i32 @expect(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @tcflush(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
