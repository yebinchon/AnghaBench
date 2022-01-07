; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_skip_until_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_skip_until_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@.str = private unnamed_addr constant [15 x i8] c"mark not found\00", align 1
@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @skip_until_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_until_mark() #0 {
  br label %1

1:                                                ; preds = %41, %0
  %2 = call signext i8 (...) @readch()
  %3 = sext i8 %2 to i32
  switch i32 %3, label %40 [
    i32 77, label %4
    i32 128, label %5
    i32 108, label %7
    i32 76, label %7
    i32 115, label %7
    i32 83, label %7
    i32 58, label %7
    i32 59, label %7
    i32 60, label %7
    i32 62, label %7
    i32 61, label %7
    i32 91, label %17
    i32 33, label %23
  ]

4:                                                ; preds = %1
  br label %42

5:                                                ; preds = %1
  %6 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %42

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %8 = call i32 (...) @readreg()
  %9 = call signext i8 (...) @readch()
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 101
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 (...) @readreg()
  br label %16

14:                                               ; preds = %7
  %15 = call i32 (...) @unreadch()
  br label %16

16:                                               ; preds = %14, %12
  br label %41

17:                                               ; preds = %1
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 1), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call i32 @read_string(i32* %20)
  %22 = call i32 @free(i32 %21)
  br label %41

23:                                               ; preds = %1
  %24 = call signext i8 (...) @readch()
  %25 = sext i8 %24 to i32
  switch i32 %25, label %36 [
    i32 60, label %26
    i32 62, label %26
    i32 61, label %26
  ]

26:                                               ; preds = %23, %23, %23
  %27 = call i32 (...) @readreg()
  %28 = call signext i8 (...) @readch()
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 101
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (...) @readreg()
  br label %35

33:                                               ; preds = %26
  %34 = call i32 (...) @unreadch()
  br label %35

35:                                               ; preds = %33, %31
  br label %39

36:                                               ; preds = %23
  %37 = call i32 (...) @readline()
  %38 = call i32 @free(i32 %37)
  br label %39

39:                                               ; preds = %36, %35
  br label %41

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40, %39, %17, %16
  br label %1

42:                                               ; preds = %5, %4
  ret void
}

declare dso_local signext i8 @readch(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @readreg(...) #1

declare dso_local i32 @unreadch(...) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @read_string(i32*) #1

declare dso_local i32 @readline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
