; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_readw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_readw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i8*, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i16*)* @iicsmb_readw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicsmb_readw(i32 %0, i32 %1, i8 signext %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i16*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x %struct.iic_msg], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i16* %3, i16** %8, align 8
  %12 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %13 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 1
  %16 = load i32, i32* @IIC_M_WR, align 4
  %17 = load i32, i32* @IIC_M_NOSTOP, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %19, align 8
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 3
  %21 = ptrtoint i8* %7 to i32
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i64 1
  %23 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 1
  %26 = load i32, i32* @IIC_M_RD, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 2
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %29 = call i32 @nitems(i32* %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %27, align 8
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 3
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %34 = ptrtoint i32* %33 to i32
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %37 = call i32 @TRANSFER_MSGS(i32 %35, %struct.iic_msg* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %43, %45
  %47 = trunc i32 %46 to i16
  %48 = load i16*, i16** %8, align 8
  store i16 %47, i16* %48, align 2
  br label %49

49:                                               ; preds = %40, %4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @iic2smb_error(i32 %50)
  ret i32 %51
}

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @TRANSFER_MSGS(i32, %struct.iic_msg*) #1

declare dso_local i32 @iic2smb_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
