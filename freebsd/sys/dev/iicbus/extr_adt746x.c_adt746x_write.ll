; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adt746x.c_adt746x_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adt746x.c_adt746x_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32*, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"iicbus write failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"adt746x_write\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @adt746x_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt746x_write(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.iic_msg], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %12, i64 0, i64 0
  %14 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 1
  %17 = load i32, i32* @IIC_M_WR, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %16, align 8
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 2
  store i32 2, i32* %20, align 8
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 3
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %23 = ptrtoint i32* %22 to i32
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @memcpy(i32* %27, i32* %28, i32 1)
  br label %30

30:                                               ; preds = %43, %4
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %12, i64 0, i64 0
  %33 = call i64 @iicbus_transfer(i32 %31, %struct.iic_msg* %32, i32 1)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %46

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = icmp sgt i32 %38, 5
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @hz, align 4
  %45 = call i32 @pause(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %30

46:                                               ; preds = %40, %35
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
