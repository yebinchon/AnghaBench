; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/fixwhite/extr_fixwhite.c_savebyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/fixwhite/extr_fixwhite.c_savebyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@queuelen = common dso_local global i64 0, align 8
@queuesize = common dso_local global i64 0, align 8
@queue = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@column = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @savebyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savebyte(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i64, i64* @queuelen, align 8
  %4 = load i64, i64* @queuesize, align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load i64, i64* @queuesize, align 8
  %8 = add nsw i64 %7, 128
  store i64 %8, i64* @queuesize, align 8
  %9 = load i8*, i8** @queue, align 8
  %10 = load i64, i64* @queuesize, align 8
  %11 = call i8* @realloc(i8* %9, i64 %10)
  store i8* %11, i8** @queue, align 8
  %12 = load i8*, i8** @queue, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i8, i8* %2, align 1
  %20 = load i8*, i8** @queue, align 8
  %21 = load i64, i64* @queuelen, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @queuelen, align 8
  %23 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %23, align 1
  %24 = load i8, i8* %2, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %35 [
    i32 10, label %26
    i32 32, label %27
    i32 9, label %30
  ]

26:                                               ; preds = %18
  store i32 0, i32* @column, align 4
  br label %35

27:                                               ; preds = %18
  %28 = load i32, i32* @column, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @column, align 4
  br label %35

30:                                               ; preds = %18
  %31 = load i32, i32* @column, align 4
  %32 = sdiv i32 %31, 8
  %33 = add nsw i32 %32, 1
  %34 = mul nsw i32 %33, 8
  store i32 %34, i32* @column, align 4
  br label %35

35:                                               ; preds = %18, %30, %27, %26
  ret void
}

declare dso_local i8* @realloc(i8*, i64) #1

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
