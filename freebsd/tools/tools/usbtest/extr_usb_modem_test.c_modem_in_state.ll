; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_modem_test.c_modem_in_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_modem_test.c_modem_in_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32, i32, i32 }

@modem = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"Got sync\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Lost sync @ %d, 0x%02x != 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32)* @modem_in_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modem_in_state(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 79
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 75
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 3), align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 3), align 4
  %15 = load i8, i8* %3, align 1
  store i8 %15, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  br label %66

16:                                               ; preds = %8, %2
  %17 = load i8, i8* %3, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 3), align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 3), align 4
  %25 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  %26 = add i8 %25, 1
  store i8 %26, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  %27 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  %28 = sext i8 %27 to i32
  %29 = srem i32 %28, 255
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 1), align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 2), align 4
  %35 = icmp slt i32 %34, 64
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 1), align 4
  br label %39

39:                                               ; preds = %38, %22
  br label %65

40:                                               ; preds = %16
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 1), align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 2), align 4
  %45 = icmp slt i32 %44, 64
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = srem i32 %47, 512
  %49 = load i8, i8* %3, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  %52 = sext i8 %51 to i32
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %46, %43
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 1), align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 2), align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 2), align 4
  br label %57

57:                                               ; preds = %54, %40
  %58 = load i8, i8* %3, align 1
  store i8 %58, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  %59 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  %60 = add i8 %59, 1
  store i8 %60, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  %61 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  %62 = sext i8 %61 to i32
  %63 = srem i32 %62, 255
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 4
  br label %65

65:                                               ; preds = %57, %39
  br label %66

66:                                               ; preds = %65, %12
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
