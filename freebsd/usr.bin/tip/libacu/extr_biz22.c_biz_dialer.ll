; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_biz22.c_biz_dialer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_biz22.c_biz_dialer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\0Astarting call...\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\02K\0D\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"can't initialize bizcomp...\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\02.\0D\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"can't set dialing mode...\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\02D%s\0D\00", align 1
@FD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"7\0D\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"can't get dial tone...\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ringing...\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"1\0D\00", align 1
@dialtimeout = common dso_local global i64 0, align 8
@DIALTIMEOUT = common dso_local global i32 0, align 4
@HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @biz_dialer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biz_dialer(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [40 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @VERBOSE, align 4
  %9 = call i32 @value(i32 %8)
  %10 = call i64 @boolean(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = call i64 @cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %58

19:                                               ; preds = %14
  %20 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %21 = call i32 @strlcpy(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 40)
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 1
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %26 = call i64 @cmd(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %58

30:                                               ; preds = %19
  %31 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @snprintf(i8* %31, i32 40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @FD, align 4
  %35 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %36 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @write(i32 %34, i8* %35, i32 %37)
  %39 = call i32 @detect(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  %42 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %58

43:                                               ; preds = %30
  %44 = load i32, i32* @VERBOSE, align 4
  %45 = call i32 @value(i32 %44)
  %46 = call i64 @boolean(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = call i32 @detect(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32 %51, i32* %6, align 4
  %52 = load i64, i64* @dialtimeout, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 (...) @biz22_disconnect()
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %41, %28, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @cmd(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @detect(i8*) #1

declare dso_local i32 @biz22_disconnect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
