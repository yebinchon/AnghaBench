; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_get_speed_and_duplex_copper_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_get_speed_and_duplex_copper_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"e1000_get_speed_and_duplex_copper_generic\00", align 1
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"1000 Mbs, \00", align 1
@E1000_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"100 Mbs, \00", align 1
@SPEED_10 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"10 Mbs, \00", align 1
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Full Duplex\0A\00", align 1
@HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"Half Duplex\0A\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_get_speed_and_duplex_copper_generic(%struct.e1000_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = load i32, i32* @E1000_STATUS, align 4
  %11 = call i32 @E1000_READ_REG(%struct.e1000_hw* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @E1000_STATUS_SPEED_1000, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @SPEED_1000, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  %19 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %34

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @E1000_STATUS_SPEED_100, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @SPEED_100, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %33

29:                                               ; preds = %20
  %30 = load i32, i32* @SPEED_10, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @E1000_STATUS_FD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @FULL_DUPLEX, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  %42 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @HALF_DUPLEX, align 4
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %48
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
