; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_pcall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_pcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i8*, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i16, i16*)* @iicsmb_pcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicsmb_pcall(i32 %0, i32 %1, i8 signext %2, i16 signext %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i16*, align 8
  %11 = alloca [3 x i8], align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca [2 x %struct.iic_msg], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i16 %3, i16* %9, align 2
  store i16* %4, i16** %10, align 8
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %16 = load i8, i8* %8, align 1
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds i8, i8* %15, i64 1
  %18 = load i16, i16* %9, align 2
  %19 = sext i16 %18 to i32
  %20 = and i32 %19, 255
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %17, align 1
  %22 = getelementptr inbounds i8, i8* %17, i64 1
  %23 = load i16, i16* %9, align 2
  %24 = sext i16 %23 to i32
  %25 = ashr i32 %24, 8
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %22, align 1
  %27 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 0
  %28 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %27, i32 0, i32 1
  %31 = load i32, i32* @IIC_M_WR, align 4
  %32 = load i32, i32* @IIC_M_NOSTOP, align 4
  %33 = or i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %30, align 8
  %36 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %27, i32 0, i32 2
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %38 = call i32 @nitems(i8* %37)
  store i32 %38, i32* %36, align 8
  %39 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %27, i32 0, i32 3
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %39, align 4
  %42 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %27, i64 1
  %43 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %42, i32 0, i32 1
  %46 = load i32, i32* @IIC_M_RD, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %45, align 8
  %49 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %42, i32 0, i32 2
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %51 = call i32 @nitems(i8* %50)
  store i32 %51, i32* %49, align 8
  %52 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %42, i32 0, i32 3
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 0
  %57 = call i32 @TRANSFER_MSGS(i32 %55, %struct.iic_msg* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %5
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = shl i32 %63, 8
  %65 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = or i32 %64, %67
  %69 = trunc i32 %68 to i16
  %70 = load i16*, i16** %10, align 8
  store i16 %69, i16* %70, align 2
  br label %71

71:                                               ; preds = %60, %5
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @iic2smb_error(i32 %72)
  ret i32 %73
}

declare dso_local i32 @nitems(i8*) #1

declare dso_local i32 @TRANSFER_MSGS(i32, %struct.iic_msg*) #1

declare dso_local i32 @iic2smb_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
