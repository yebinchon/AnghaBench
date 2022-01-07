; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_ventel.c_vensync.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_ventel.c_vensync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FD = common dso_local global i32 0, align 4
@TIOCCDTR = common dso_local global i32 0, align 4
@TIOCSDTR = common dso_local global i32 0, align 4
@MAXRETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@FIONREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"tip: ioctl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vensync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vensync(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [60 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @FD, align 4
  %8 = load i32, i32* @TIOCCDTR, align 4
  %9 = call i64 @ioctl(i32 %7, i32 %8, i32 0)
  %10 = call i32 @sleep(i32 1)
  %11 = load i32, i32* @FD, align 4
  %12 = load i32, i32* @TIOCSDTR, align 4
  %13 = call i64 @ioctl(i32 %11, i32 %12, i32 0)
  br label %14

14:                                               ; preds = %58, %30, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MAXRETRY, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @write(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %21 = call i32 @delay(i32 1, i32 10)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @write(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %24 = call i32 @sleep(i32 2)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @FIONREAD, align 4
  %27 = ptrtoint i32* %5 to i32
  %28 = call i64 @ioctl(i32 %25, i32 %26, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %14

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = getelementptr inbounds [60 x i8], [60 x i8]* %6, i64 0, i64 0
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @min(i32 %39, i32 60)
  %41 = call i32 @read(i32 %37, i8* %38, i64 %40)
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [60 x i8], [60 x i8]* %6, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = and i32 %47, 127
  %49 = icmp eq i32 %48, 36
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %63

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @min(i32 %52, i32 60)
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %33

58:                                               ; preds = %33
  %59 = call i32 @sleep(i32 1)
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %14

62:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @delay(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
