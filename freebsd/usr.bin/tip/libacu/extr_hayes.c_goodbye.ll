; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_hayes.c_goodbye.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_hayes.c_goodbye.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FD = common dso_local global i32 0, align 4
@TCIOFLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ATH0\0D\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"03\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot hang up modem\0A\0D\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"please use 'tip dialer' to make sure the line is hung up\0A\0D\00", align 1
@FIONREAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"ATv1\0D\00", align 1
@TIOCCDTR = common dso_local global i32 0, align 4
@DUMBUFLEN = common dso_local global i32 0, align 4
@dumbuf = common dso_local global i8* null, align 8
@rlen = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @goodbye to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodbye() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = load i32, i32* @FD, align 4
  %4 = load i32, i32* @TCIOFLUSH, align 4
  %5 = call i32 @tcflush(i32 %3, i32 %4)
  %6 = call i64 (...) @hay_sync()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %0
  %9 = call i32 @sleep(i32 1)
  %10 = load i32, i32* @FD, align 4
  %11 = load i32, i32* @TCIOFLUSH, align 4
  %12 = call i32 @tcflush(i32 %10, i32 %11)
  %13 = load i32, i32* @FD, align 4
  %14 = call i32 @write(i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %15 = call signext i8 @gobble(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8 %15, i8* %2, align 1
  %16 = load i8, i8* %2, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 48
  br i1 %18, label %19, label %26

19:                                               ; preds = %8
  %20 = load i8, i8* %2, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 51
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %19, %8
  %27 = call i32 @sleep(i32 1)
  %28 = load i32, i32* @FD, align 4
  %29 = load i32, i32* @FIONREAD, align 4
  %30 = call i32 @ioctl(i32 %28, i32 %29, i32* %1)
  %31 = load i32, i32* @FD, align 4
  %32 = call i32 @write(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %33 = call i32 @sleep(i32 1)
  br label %34

34:                                               ; preds = %26, %0
  %35 = load i32, i32* @FD, align 4
  %36 = load i32, i32* @TCIOFLUSH, align 4
  %37 = call i32 @tcflush(i32 %35, i32 %36)
  %38 = load i32, i32* @FD, align 4
  %39 = load i32, i32* @TIOCCDTR, align 4
  %40 = call i32 @ioctl(i32 %38, i32 %39, i32* null)
  %41 = load i32, i32* @FD, align 4
  %42 = call i32 @close(i32 %41)
  ret void
}

declare dso_local i32 @tcflush(i32, i32) #1

declare dso_local i64 @hay_sync(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local signext i8 @gobble(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
