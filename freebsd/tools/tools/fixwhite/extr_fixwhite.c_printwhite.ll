; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/fixwhite/extr_fixwhite.c_printwhite.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/fixwhite/extr_fixwhite.c_printwhite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@column = common dso_local global i32 0, align 4
@queuelen = common dso_local global i64 0, align 8
@queue = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @printwhite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printwhite() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @column, align 4
  %3 = srem i32 %2, 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %43

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %17, %5
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @column, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @peekbyte(i32 %12, i8 signext 32)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %20

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %6

20:                                               ; preds = %15, %6
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @column, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i32, i32* @column, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @queuelen, align 8
  %28 = sub nsw i64 %27, %26
  store i64 %28, i64* @queuelen, align 8
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %38, %24
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @column, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i8*, i8** @queue, align 8
  %35 = load i64, i64* @queuelen, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @queuelen, align 8
  %37 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 9, i8* %37, align 1
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 8
  store i32 %40, i32* %1, align 4
  br label %29

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %20
  br label %43

43:                                               ; preds = %42, %0
  %44 = load i8*, i8** @queue, align 8
  %45 = load i64, i64* @queuelen, align 8
  %46 = load i32, i32* @stdout, align 4
  %47 = call i64 @fwrite(i8* %44, i32 1, i64 %45, i32 %46)
  %48 = load i64, i64* @queuelen, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @exit(i32 1) #3
  unreachable

53:                                               ; preds = %43
  store i64 0, i64* @queuelen, align 8
  ret void
}

declare dso_local i32 @peekbyte(i32, i8 signext) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
