; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_df.c_df_dialer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_df.c_df_dialer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@FD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@Sjbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"connection timed out\0D\0A\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"\0Adialing...\00", align 1
@stdout = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@alrm_timeout = common dso_local global i32 0, align 4
@TCIOFLUSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\02\00", align 1
@B1200 = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@TIOCMBIC = common dso_local global i32 0, align 4
@TIOCMBIS = common dso_local global i32 0, align 4
@TIOCM_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @df_dialer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @df_dialer(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.termios, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @FD, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i8 0, i8* %11, align 1
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @tcgetattr(i32 %13, %struct.termios* %9)
  %15 = load i32, i32* @HUPCL, align 4
  %16 = getelementptr inbounds %struct.termios, %struct.termios* %9, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @TCSANOW, align 4
  %21 = call i32 @tcsetattr(i32 %19, i32 %20, %struct.termios* %9)
  %22 = load i32, i32* @Sjbuf, align 4
  %23 = call i64 @setjmp(i32 %22) #3
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (...) @df_disconnect()
  store i32 0, i32* %4, align 4
  br label %65

28:                                               ; preds = %3
  %29 = load i32, i32* @VERBOSE, align 4
  %30 = call i32 @value(i32 %29)
  %31 = call i64 @boolean(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @fflush(i32 %36)
  %38 = load i32, i32* @SIGALRM, align 4
  %39 = load i32, i32* @alrm_timeout, align 4
  %40 = call i32 @signal(i32 %38, i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = mul nsw i32 5, %42
  %44 = add nsw i32 %43, 10
  %45 = call i32 @alarm(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @TCIOFLUSH, align 4
  %48 = call i32 @tcflush(i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @write(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %51 = call i32 @sleep(i32 1)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @write(i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @write(i32 %54, i8* %55, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @read(i32 %59, i8* %11, i32 1)
  %61 = load i8, i8* %11, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 65
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %35, %25
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @df_disconnect(...) #1

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tcflush(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
