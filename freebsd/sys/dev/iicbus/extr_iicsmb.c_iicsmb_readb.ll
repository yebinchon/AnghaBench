; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_readb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_readb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i8*, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i8*)* @iicsmb_readb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicsmb_readb(i32 %0, i32 %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca [2 x %struct.iic_msg], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  %11 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %9, i64 0, i64 0
  %12 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 1
  %15 = load i32, i32* @IIC_M_WR, align 4
  %16 = load i32, i32* @IIC_M_NOSTOP, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %18, align 8
  %19 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 3
  %20 = ptrtoint i8* %7 to i32
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i64 1
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 1
  %25 = load i32, i32* @IIC_M_RD, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %26, align 8
  %27 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 3
  %28 = load i8*, i8** %8, align 8
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %9, i64 0, i64 0
  %32 = call i32 @TRANSFER_MSGS(i32 %30, %struct.iic_msg* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @iic2smb_error(i32 %33)
  ret i32 %34
}

declare dso_local i32 @TRANSFER_MSGS(i32, %struct.iic_msg*) #1

declare dso_local i32 @iic2smb_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
