; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_hayes.c_hay_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_hayes.c_hay_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXRETRY = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"AT\0D\00", align 1
@FIONREAD = common dso_local global i32 0, align 4
@dumbuf = common dso_local global i8* null, align 8
@DUMBUFLEN = common dso_local global i32 0, align 4
@TIOCCDTR = common dso_local global i32 0, align 4
@TIOCSDTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot synchronize with hayes...\0A\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hay_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hay_sync() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %38, %0
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MAXRETRY, align 4
  %8 = icmp sle i32 %5, %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %4
  %10 = load i32, i32* @FD, align 4
  %11 = call i32 @write(i32 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %12 = call i32 @sleep(i32 1)
  %13 = load i32, i32* @FD, align 4
  %14 = load i32, i32* @FIONREAD, align 4
  %15 = call i32 @ioctl(i32 %13, i32 %14, i32* %2)
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %9
  %19 = load i32, i32* @FD, align 4
  %20 = load i8*, i8** @dumbuf, align 8
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @DUMBUFLEN, align 4
  %23 = call i32 @min(i32 %21, i32 %22)
  %24 = call i32 @read(i32 %19, i8* %20, i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i8*, i8** @dumbuf, align 8
  %26 = call i64 @strchr(i8* %25, i8 signext 48)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %18
  %29 = load i8*, i8** @dumbuf, align 8
  %30 = call i64 @strchr(i8* %29, i8 signext 79)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i8*, i8** @dumbuf, align 8
  %34 = call i64 @strchr(i8* %33, i8 signext 75)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %18
  store i32 1, i32* %1, align 4
  br label %47

37:                                               ; preds = %32, %28
  br label %38

38:                                               ; preds = %37, %9
  %39 = load i32, i32* @FD, align 4
  %40 = load i32, i32* @TIOCCDTR, align 4
  %41 = call i32 @ioctl(i32 %39, i32 %40, i32* null)
  %42 = load i32, i32* @FD, align 4
  %43 = load i32, i32* @TIOCSDTR, align 4
  %44 = call i32 @ioctl(i32 %42, i32 %43, i32* null)
  br label %4

45:                                               ; preds = %4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %45, %36
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
