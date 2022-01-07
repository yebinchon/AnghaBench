; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_set.c_set_conversions.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_set.c_set_conversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"UC\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"LC\00", align 1
@PARMRK = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@mode = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ICANON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"EP\00", align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"OP\00", align 1
@ICRNL = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@OXTABS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"NL\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"HD\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@ECHOE = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@IUCLC = common dso_local global i32 0, align 4
@OLCUC = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_conversions(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %1
  br label %14

9:                                                ; preds = %5
  %10 = call i64 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12, %9
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* @PARMRK, align 4
  %16 = load i32, i32* @INPCK, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 0), align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 0), align 4
  %21 = load i32, i32* @ICANON, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 1), align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 1), align 4
  %24 = call i64 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %14
  %27 = load i32, i32* @PARENB, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 3), align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 3), align 4
  %30 = load i32, i32* @PARODD, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 3), align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 3), align 4
  br label %34

34:                                               ; preds = %26, %14
  %35 = call i64 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* @PARENB, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 3), align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 3), align 4
  %41 = load i32, i32* @PARODD, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 3), align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 3), align 4
  br label %44

44:                                               ; preds = %37, %34
  %45 = load i32, i32* @ICRNL, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 0), align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 0), align 4
  %48 = load i32, i32* @ECHO, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 1), align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 1), align 4
  %51 = load i32, i32* @OXTABS, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 2), align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 2), align 4
  %54 = call i64 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load i32, i32* @ICRNL, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 0), align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 0), align 4
  br label %61

61:                                               ; preds = %56, %44
  %62 = call i64 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* @ECHO, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 1), align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 1), align 4
  br label %69

69:                                               ; preds = %64, %61
  %70 = call i64 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* @OXTABS, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 2), align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 2), align 4
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i32, i32* @ECHOE, align 4
  %79 = load i32, i32* @ECHOK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 1), align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 1), align 4
  ret void
}

declare dso_local i64 @tgetflag(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
