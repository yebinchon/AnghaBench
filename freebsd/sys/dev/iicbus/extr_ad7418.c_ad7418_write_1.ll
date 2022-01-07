; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7418.c_ad7418_write_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7418.c_ad7418_write_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32*, i32, i32 }

@AD7418_ADDR = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ad7418_write_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7418_write_1(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [1 x %struct.iic_msg], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %8, i64 0, i64 0
  %10 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 0
  %11 = load i32, i32* @AD7418_ADDR, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 1
  %13 = load i32, i32* @IIC_M_WR, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 2
  store i32 2, i32* %16, align 8
  %17 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 3
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %19 = ptrtoint i32* %18 to i32
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 255
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %8, i64 0, i64 0
  %27 = call i32 @iicbus_transfer(i32 %25, %struct.iic_msg* %26, i32 1)
  ret i32 %27
}

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
