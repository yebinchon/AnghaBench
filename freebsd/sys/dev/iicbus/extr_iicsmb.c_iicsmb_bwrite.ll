; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_bwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i8, i32, i8, i8* }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_NOSTART = common dso_local global i32 0, align 4
@SMB_MAXBLOCKSIZE = common dso_local global i8 0, align 1
@SMB_EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8, i8, i8, i8*)* @iicsmb_bwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicsmb_bwrite(i32 %0, i8 signext %1, i8 signext %2, i8 signext %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca [2 x i8], align 1
  %13 = alloca [2 x %struct.iic_msg], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i8* %4, i8** %11, align 8
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %16 = load i8, i8* %9, align 1
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds i8, i8* %15, i64 1
  %18 = load i8, i8* %10, align 1
  store i8 %18, i8* %17, align 1
  %19 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 0
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 0
  %21 = load i8, i8* %8, align 1
  store i8 %21, i8* %20, align 8
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 1
  %23 = load i32, i32* @IIC_M_WR, align 4
  %24 = load i32, i32* @IIC_M_NOSTOP, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 2
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %28 = call signext i8 @nitems(i8* %27)
  store i8 %28, i8* %26, align 8
  %29 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 3
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8* %30, i8** %29, align 8
  %31 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i64 1
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %31, i32 0, i32 0
  %33 = load i8, i8* %8, align 1
  store i8 %33, i8* %32, align 8
  %34 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %31, i32 0, i32 1
  %35 = load i32, i32* @IIC_M_WR, align 4
  %36 = load i32, i32* @IIC_M_NOSTART, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %34, align 4
  %38 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %31, i32 0, i32 2
  %39 = load i8, i8* %10, align 1
  store i8 %39, i8* %38, align 8
  %40 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %31, i32 0, i32 3
  %41 = load i8*, i8** %11, align 8
  store i8* %41, i8** %40, align 8
  %42 = load i8, i8* %10, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @SMB_MAXBLOCKSIZE, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %5
  %48 = load i8, i8* %10, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %5
  %52 = load i32, i32* @SMB_EINVAL, align 4
  store i32 %52, i32* %6, align 4
  br label %59

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 0
  %56 = call i32 @TRANSFER_MSGS(i32 %54, %struct.iic_msg* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @iic2smb_error(i32 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %53, %51
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local signext i8 @nitems(i8*) #1

declare dso_local i32 @TRANSFER_MSGS(i32, %struct.iic_msg*) #1

declare dso_local i32 @iic2smb_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
