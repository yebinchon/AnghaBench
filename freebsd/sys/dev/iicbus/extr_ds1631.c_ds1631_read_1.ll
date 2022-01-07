; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1631.c_ds1631_read_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1631.c_ds1631_read_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32*, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"iicbus read failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ds1631_read_1\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @ds1631_read_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1631_read_1(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x %struct.iic_msg], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %14 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 0
  %15 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i32 0, i32 1
  %18 = load i32, i32* @IIC_M_WR, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %17, align 8
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i32 0, i32 2
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i32 0, i32 3
  %23 = ptrtoint i32* %8 to i32
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i64 1
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 1
  %28 = load i32, i32* @IIC_M_RD, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %27, align 8
  %31 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 3
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %34 = ptrtoint i32* %33 to i32
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %53, %4
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 0
  %38 = call i32 @iicbus_transfer(i32 %36, %struct.iic_msg* %37, i32 2)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %46

42:                                               ; preds = %35
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %56

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  %49 = icmp sgt i32 %48, 5
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @hz, align 4
  %55 = call i32 @pause(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %35

56:                                               ; preds = %50, %42
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
