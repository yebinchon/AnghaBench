; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_t3000.c_t3000_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_t3000.c_t3000_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXRETRY = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@TCIOFLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\0DAT Z\0D\00", align 1
@FIONREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"+++\00", align 1
@TIOCCDTR = common dso_local global i32 0, align 4
@TIOCSDTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @t3000_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3000_sync() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [40 x i8], align 16
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %45, %0
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @MAXRETRY, align 4
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %57

10:                                               ; preds = %5
  %11 = load i32, i32* @FD, align 4
  %12 = load i32, i32* @TCIOFLUSH, align 4
  %13 = call i32 @tcflush(i32 %11, i32 %12)
  %14 = load i32, i32* @FD, align 4
  %15 = call i32 @t3000_write(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %16 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %17 = call i32 @bzero(i8* %16, i32 40)
  %18 = call i32 @sleep(i32 2)
  %19 = load i32, i32* @FD, align 4
  %20 = load i32, i32* @FIONREAD, align 4
  %21 = call i32 @ioctl(i32 %19, i32 %20, i32* %3)
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32, i32* @FD, align 4
  %30 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %31 = call i32 @read(i32 %29, i8* %30, i32 40)
  store i32 %31, i32* %3, align 4
  %32 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %33 = call i64 @strchr(i8* %32, i8 signext 48)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %37 = call i64 @strchr(i8* %36, i8 signext 79)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %41 = call i64 @strchr(i8* %40, i8 signext 75)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %28
  store i32 1, i32* %1, align 4
  br label %60

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44, %25
  %46 = call i32 @sleep(i32 1)
  %47 = load i32, i32* @FD, align 4
  %48 = call i32 @t3000_write(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %49 = call i32 @sleep(i32 1)
  %50 = load i32, i32* @FD, align 4
  %51 = load i32, i32* @TIOCCDTR, align 4
  %52 = call i32 @ioctl(i32 %50, i32 %51, i32* null)
  %53 = call i32 @sleep(i32 1)
  %54 = load i32, i32* @FD, align 4
  %55 = load i32, i32* @TIOCSDTR, align 4
  %56 = call i32 @ioctl(i32 %54, i32 %55, i32* null)
  br label %5

57:                                               ; preds = %5
  %58 = load i32, i32* @FD, align 4
  %59 = call i32 @t3000_write(i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %57, %43
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @tcflush(i32, i32) #1

declare dso_local i32 @t3000_write(i32, i8*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
