; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_set_controller_command_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_set_controller_command_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@KBD_DISABLE_KBD_PORT = common dso_local global i32 0, align 4
@KBDC_DISABLE_KBD_PORT = common dso_local global i32 0, align 4
@KBDC_SET_COMMAND_BYTE = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"kbdc: new command byte:%04x (set_controller...)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_controller_command_byte(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @get_controller_command_byte(i32 %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %4, align 4
  br label %64

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_2__* @kbdcp(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %21, %22
  %24 = or i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @KBD_DISABLE_KBD_PORT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %13
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @KBDC_DISABLE_KBD_PORT, align 4
  %32 = call i32 @write_controller_command(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  br label %64

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %13
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @KBDC_SET_COMMAND_BYTE, align 4
  %40 = call i32 @write_controller_command(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %4, align 4
  br label %64

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @write_controller_data(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %4, align 4
  br label %64

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call %struct.TYPE_2__* @kbdcp(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i64, i64* @verbose, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @LOG_DEBUG, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @log(i32 %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %51
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %49, %42, %34, %11
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @get_controller_command_byte(i32) #1

declare dso_local %struct.TYPE_2__* @kbdcp(i32) #1

declare dso_local i32 @write_controller_command(i32, i32) #1

declare dso_local i32 @write_controller_data(i32, i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
