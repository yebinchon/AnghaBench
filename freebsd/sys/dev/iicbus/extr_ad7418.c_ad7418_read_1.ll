; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7418.c_ad7418_read_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7418.c_ad7418_read_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32*, i32, i32 }

@AD7418_ADDR = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ad7418_read_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7418_read_1(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca [2 x %struct.iic_msg], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %5, align 4
  %9 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %7, i64 0, i64 0
  %10 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 0
  %11 = load i32, i32* @AD7418_ADDR, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 1
  %13 = load i32, i32* @IIC_M_WR, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 2
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 3
  %18 = ptrtoint i32* %5 to i32
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i64 1
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 0
  %21 = load i32, i32* @AD7418_ADDR, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 1
  %23 = load i32, i32* @IIC_M_RD, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 2
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 3
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %29 = ptrtoint i32* %28 to i32
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %3, align 4
  %31 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %7, i64 0, i64 0
  %32 = call i64 @iicbus_transfer(i32 %30, %struct.iic_msg* %31, i32 2)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %38

35:                                               ; preds = %2
  %36 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = phi i32 [ -1, %34 ], [ %37, %35 ]
  ret i32 %39
}

declare dso_local i64 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
