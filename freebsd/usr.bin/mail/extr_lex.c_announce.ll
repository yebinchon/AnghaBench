; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_lex.c_announce.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_lex.c_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@message = common dso_local global i32* null, align 8
@dot = common dso_local global i32* null, align 8
@msgCount = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"noheader\00", align 1
@inithdr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @announce() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca i32, align 4
  %3 = call i32 @newfileinfo(i32 0)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** @message, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  store i32* %11, i32** @dot, align 8
  %12 = load i64, i64* @msgCount, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %0
  %15 = call i32* @value(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i64, i64* @inithdr, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @inithdr, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %21 = call i32 @headers(i32* %20)
  store i64 0, i64* @inithdr, align 8
  br label %22

22:                                               ; preds = %17, %14, %0
  ret void
}

declare dso_local i32 @newfileinfo(i32) #1

declare dso_local i32* @value(i8*) #1

declare dso_local i32 @headers(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
