; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isl/extr_isl.c_isl_read_sensor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isl/extr_isl.c_isl_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_CMD1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Couldn't read first byte before issuing command %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Couldn't write command %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"islconv\00", align 1
@hz = common dso_local global i32 0, align 4
@REG_DATA1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Couldn't read first byte after command %d\0A\00", align 1
@REG_DATA2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Couldn't read second byte after command %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @isl_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl_read_sensor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @REG_CMD1, align 4
  %11 = call i64 @isl_read_byte(i32 %9, i32 %10, i32* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 31
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @REG_CMD1, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @isl_write_byte(i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %3, align 4
  br label %59

31:                                               ; preds = %17
  %32 = load i32, i32* @hz, align 4
  %33 = sdiv i32 %32, 10
  %34 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @REG_DATA1, align 4
  %37 = call i64 @isl_read_byte(i32 %35, i32 %36, i32* %6)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  store i32 -1, i32* %3, align 4
  br label %59

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @REG_DATA2, align 4
  %47 = call i64 @isl_read_byte(i32 %45, i32 %46, i32* %6)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  store i32 -1, i32* %3, align 4
  br label %59

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %49, %39, %27, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @isl_read_byte(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i64 @isl_write_byte(i32, i32, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
