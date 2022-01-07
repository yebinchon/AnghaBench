; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_reset_kbd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_reset_kbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@KBD_MAXRETRY = common dso_local global i32 0, align 4
@KBD_MAXWAIT = common dso_local global i32 0, align 4
@KBD_RESEND = common dso_local global i32 0, align 4
@KBDC_RESET_KBD = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"kbdc: RESET_KBD return code:%04x\0A\00", align 1
@KBD_ACK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KBD_RESETDELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"kbdc: RESET_KBD status:%04x\0A\00", align 1
@KBD_RESET_DONE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_kbd(i32 %0) #0 {
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
  %9 = load i32, i32* @KBD_RESEND, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %43, %21, %1
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @empty_both_buffers(i32 %15, i32 10)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @KBDC_RESET_KBD, align 4
  %19 = call i32 @write_kbd_command(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %10

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.TYPE_2__* @kbdcp(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @emptyq(i32* %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @read_controller_data(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i64, i64* @verbose, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i64, i64* @bootverbose, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %22
  %35 = load i32, i32* @LOG_DEBUG, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @log(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @KBD_ACK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %44

43:                                               ; preds = %38
  br label %10

44:                                               ; preds = %42, %10
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %2, align 4
  br label %82

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %63, %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  %53 = icmp sgt i32 %51, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* @KBD_RESETDELAY, align 4
  %56 = mul nsw i32 %55, 1000
  %57 = call i32 @DELAY(i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @read_controller_data(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %64

63:                                               ; preds = %54
  br label %50

64:                                               ; preds = %62, %50
  %65 = load i64, i64* @verbose, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @bootverbose, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67, %64
  %71 = load i32, i32* @LOG_DEBUG, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @log(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @KBD_RESET_DONE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %2, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %78, %47
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @empty_both_buffers(i32, i32) #1

declare dso_local i32 @write_kbd_command(i32, i32) #1

declare dso_local i32 @emptyq(i32*) #1

declare dso_local %struct.TYPE_2__* @kbdcp(i32) #1

declare dso_local i32 @read_controller_data(i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
