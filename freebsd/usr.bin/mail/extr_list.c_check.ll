; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

@msgCount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%d: Invalid message number\0A\00", align 1
@message = common dso_local global %struct.message* null, align 8
@MDELETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%d: Inappropriate message\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.message*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @msgCount, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 -1, i32* %3, align 4
  br label %36

16:                                               ; preds = %9
  %17 = load %struct.message*, %struct.message** @message, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.message, %struct.message* %17, i64 %20
  store %struct.message* %21, %struct.message** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MDELETED, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load %struct.message*, %struct.message** %6, align 8
  %27 = getelementptr inbounds %struct.message, %struct.message* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MDELETED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %3, align 4
  br label %36

35:                                               ; preds = %25, %16
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %32, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
