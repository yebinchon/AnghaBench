; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapa_read_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapa_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i32*, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @cyapa_read_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_read_bytes(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.iic_msg], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @iicbus_get_addr(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %14 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 1
  %17 = load i32, i32* @IIC_M_WR, align 4
  %18 = load i32, i32* @IIC_M_NOSTOP, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %20, align 8
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 3
  %22 = ptrtoint i32* %6 to i32
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i64 1
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 1
  %27 = load i32, i32* @IIC_M_RD, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 2
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %28, align 8
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 3
  %33 = load i32*, i32** %7, align 8
  %34 = ptrtoint i32* %33 to i32
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %37 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %38 = call i32 @nitems(%struct.iic_msg* %37)
  %39 = call i32 @iicbus_transfer(i32 %35, %struct.iic_msg* %36, i32 %38)
  ret i32 %39
}

declare dso_local i32 @iicbus_get_addr(i32) #1

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @nitems(%struct.iic_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
