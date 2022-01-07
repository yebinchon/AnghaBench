; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_user_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_user_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@user_input.chan = internal global [3 x i8] zeroinitializer, align 1
@user_input.pos = internal global i32 0, align 4
@chaninfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"getch()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_input() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @getch()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  switch i32 %4, label %37 [
    i32 119, label %5
    i32 113, label %7
    i32 99, label %9
    i32 128, label %14
    i32 48, label %16
    i32 49, label %16
    i32 50, label %16
    i32 51, label %16
    i32 52, label %16
    i32 53, label %16
    i32 54, label %16
    i32 55, label %16
    i32 56, label %16
    i32 57, label %16
  ]

5:                                                ; preds = %0
  %6 = call i32 (...) @save_state()
  br label %38

7:                                                ; preds = %0
  %8 = call i32 @cleanup(i32 0)
  br label %38

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 0), align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 0), align 4
  br label %38

14:                                               ; preds = %0
  %15 = call i32 @die(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %38

16:                                               ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %17 = load i32, i32* %1, align 4
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* @user_input.pos, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @user_input.pos, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* @user_input.chan, i64 0, i64 %21
  store i8 %18, i8* %22, align 1
  %23 = load i32, i32* @user_input.pos, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = call i32 @atoi(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @user_input.chan, i64 0, i64 0))
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp sle i32 %27, 11
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  %31 = icmp sge i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = call i32 @atoi(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @user_input.chan, i64 0, i64 0))
  %34 = call i32 @set_chan(i32 %33)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 0), align 4
  br label %35

35:                                               ; preds = %32, %29, %25
  store i32 0, i32* @user_input.pos, align 4
  br label %36

36:                                               ; preds = %35, %16
  br label %38

37:                                               ; preds = %0
  store i32 0, i32* @user_input.pos, align 4
  br label %38

38:                                               ; preds = %37, %36, %14, %9, %7, %5
  ret void
}

declare dso_local i32 @getch(...) #1

declare dso_local i32 @save_state(...) #1

declare dso_local i32 @cleanup(i32) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @set_chan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
