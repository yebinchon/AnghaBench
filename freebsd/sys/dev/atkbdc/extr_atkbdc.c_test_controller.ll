; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_test_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_test_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@KBD_MAXRETRY = common dso_local global i32 0, align 4
@KBD_MAXWAIT = common dso_local global i32 0, align 4
@KBD_DIAG_FAIL = common dso_local global i32 0, align 4
@KBDC_DIAGNOSE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KBD_RESETDELAY = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"kbdc: DIAGNOSE status:%04x\0A\00", align 1
@KBD_DIAG_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_controller(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @KBD_MAXRETRY, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @KBD_MAXWAIT, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @KBD_DIAG_FAIL, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @empty_both_buffers(i32 %15, i32 10)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @KBDC_DIAGNOSE, align 4
  %19 = call i64 @write_controller_command(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %23

22:                                               ; preds = %14
  br label %10

23:                                               ; preds = %21, %10
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %62

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.TYPE_2__* @kbdcp(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @emptyq(i32* %31)
  br label %33

33:                                               ; preds = %46, %28
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = icmp sgt i32 %34, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* @KBD_RESETDELAY, align 4
  %39 = mul nsw i32 %38, 1000
  %40 = call i32 @DELAY(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @read_controller_data(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %47

46:                                               ; preds = %37
  br label %33

47:                                               ; preds = %45, %33
  %48 = load i64, i64* @verbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* @bootverbose, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @LOG_DEBUG, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @log(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @KBD_DIAG_DONE, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %26
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @empty_both_buffers(i32, i32) #1

declare dso_local i64 @write_controller_command(i32, i32) #1

declare dso_local i32 @emptyq(i32*) #1

declare dso_local %struct.TYPE_2__* @kbdcp(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @read_controller_data(i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
