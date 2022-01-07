; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_fcu.c_fcu_read_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_fcu.c_fcu_read_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i32*, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"iicbus read failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fcu_read_1\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @fcu_read_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcu_read_1(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
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
  %19 = load i32, i32* @IIC_M_NOSTOP, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %21, align 8
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i32 0, i32 3
  %23 = ptrtoint i32* %8 to i32
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i64 1
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 1
  %28 = load i32, i32* @IIC_M_RD, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %29, align 8
  %30 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 3
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %32 = ptrtoint i32* %31 to i32
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %51, %4
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 0
  %36 = call i32 @iicbus_transfer(i32 %34, %struct.iic_msg* %35, i32 2)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %44

40:                                               ; preds = %33
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %5, align 4
  br label %54

44:                                               ; preds = %39
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  %47 = icmp sgt i32 %46, 5
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @hz, align 4
  %53 = call i32 @pause(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %33

54:                                               ; preds = %48, %40
  %55 = load i32, i32* %5, align 4
  ret i32 %55
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
