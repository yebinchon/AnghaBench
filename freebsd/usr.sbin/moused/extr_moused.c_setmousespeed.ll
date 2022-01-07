; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_setmousespeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_setmousespeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.termios = type { i32, i32*, i64, i64, i64 }

@rodent = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"unable to get status of mouse fd\00", align 1
@IGNBRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@VTIME = common dso_local global i64 0, align 8
@VMIN = common dso_local global i64 0, align 8
@B9600 = common dso_local global i32 0, align 4
@B4800 = common dso_local global i32 0, align 4
@B2400 = common dso_local global i32 0, align 4
@B1200 = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to set status of mouse fd\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"*q\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"*p\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"*o\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"*n\00", align 1
@MOUSE_PROTO_LOGIMOUSEMAN = common dso_local global i64 0, align 8
@MOUSE_PROTO_LOGI = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"unable to write to mouse fd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @setmousespeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setmousespeed(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.termios, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 1), align 8
  %10 = call i64 @tcgetattr(i32 %9, %struct.termios* %7)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @logwarn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %108

14:                                               ; preds = %3
  %15 = load i32, i32* @IGNBRK, align 4
  %16 = load i32, i32* @IGNPAR, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.termios, %struct.termios* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.termios, %struct.termios* %7, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.termios, %struct.termios* %7, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %7, i32 0, i32 2
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.termios, %struct.termios* %7, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @VTIME, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.termios, %struct.termios* %7, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @VMIN, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %49 [
    i32 9600, label %33
    i32 4800, label %38
    i32 2400, label %43
    i32 1200, label %48
  ]

33:                                               ; preds = %14
  %34 = load i32, i32* @B9600, align 4
  %35 = call i32 @cfsetispeed(%struct.termios* %7, i32 %34)
  %36 = load i32, i32* @B9600, align 4
  %37 = call i32 @cfsetospeed(%struct.termios* %7, i32 %36)
  br label %54

38:                                               ; preds = %14
  %39 = load i32, i32* @B4800, align 4
  %40 = call i32 @cfsetispeed(%struct.termios* %7, i32 %39)
  %41 = load i32, i32* @B4800, align 4
  %42 = call i32 @cfsetospeed(%struct.termios* %7, i32 %41)
  br label %54

43:                                               ; preds = %14
  %44 = load i32, i32* @B2400, align 4
  %45 = call i32 @cfsetispeed(%struct.termios* %7, i32 %44)
  %46 = load i32, i32* @B2400, align 4
  %47 = call i32 @cfsetospeed(%struct.termios* %7, i32 %46)
  br label %54

48:                                               ; preds = %14
  br label %49

49:                                               ; preds = %14, %48
  %50 = load i32, i32* @B1200, align 4
  %51 = call i32 @cfsetispeed(%struct.termios* %7, i32 %50)
  %52 = load i32, i32* @B1200, align 4
  %53 = call i32 @cfsetospeed(%struct.termios* %7, i32 %52)
  br label %54

54:                                               ; preds = %49, %43, %38, %33
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 1), align 8
  %56 = load i32, i32* @TCSADRAIN, align 4
  %57 = call i64 @tcsetattr(i32 %55, i32 %56, %struct.termios* %7)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @logwarn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %108

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  switch i32 %62, label %79 [
    i32 9600, label %63
    i32 4800, label %68
    i32 2400, label %73
    i32 1200, label %78
  ]

63:                                               ; preds = %61
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %64 = load i32, i32* @B9600, align 4
  %65 = call i32 @cfsetispeed(%struct.termios* %7, i32 %64)
  %66 = load i32, i32* @B9600, align 4
  %67 = call i32 @cfsetospeed(%struct.termios* %7, i32 %66)
  br label %84

68:                                               ; preds = %61
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %69 = load i32, i32* @B4800, align 4
  %70 = call i32 @cfsetispeed(%struct.termios* %7, i32 %69)
  %71 = load i32, i32* @B4800, align 4
  %72 = call i32 @cfsetospeed(%struct.termios* %7, i32 %71)
  br label %84

73:                                               ; preds = %61
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  %74 = load i32, i32* @B2400, align 4
  %75 = call i32 @cfsetispeed(%struct.termios* %7, i32 %74)
  %76 = load i32, i32* @B2400, align 4
  %77 = call i32 @cfsetospeed(%struct.termios* %7, i32 %76)
  br label %84

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %61, %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  %80 = load i32, i32* @B1200, align 4
  %81 = call i32 @cfsetispeed(%struct.termios* %7, i32 %80)
  %82 = load i32, i32* @B1200, align 4
  %83 = call i32 @cfsetospeed(%struct.termios* %7, i32 %82)
  br label %84

84:                                               ; preds = %79, %73, %68, %63
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 8
  %86 = load i64, i64* @MOUSE_PROTO_LOGIMOUSEMAN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 8
  %90 = load i64, i64* @MOUSE_PROTO_LOGI, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88, %84
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 1), align 8
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @write(i32 %93, i8* %94, i32 2)
  %96 = icmp ne i32 %95, 2
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 @logwarn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %108

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %88
  %101 = call i32 @usleep(i32 100000)
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 1), align 8
  %103 = load i32, i32* @TCSADRAIN, align 4
  %104 = call i64 @tcsetattr(i32 %102, i32 %103, %struct.termios* %7)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32 @logwarn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %12, %59, %97, %106, %100
  ret void
}

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @logwarn(i8*) #1

declare dso_local i32 @cfsetispeed(%struct.termios*, i32) #1

declare dso_local i32 @cfsetospeed(%struct.termios*, i32) #1

declare dso_local i64 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
