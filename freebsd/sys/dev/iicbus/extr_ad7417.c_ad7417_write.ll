; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i8*, i32, i32, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"iicbus write failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ad7417_write\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i8*, i32)* @ad7417_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7417_write(i32 %0, i32 %1, i8 zeroext %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca [1 x %struct.iic_msg], align 16
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %14, i64 0, i64 0
  %16 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %16, align 8
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 1
  %21 = load i32, i32* @IIC_M_WR, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 3
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %23, align 8
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 4
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  %29 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %14, i64 0, i64 0
  %30 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i8, i8* %9, align 1
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @memcpy(i8* %34, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %51, %5
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %14, i64 0, i64 0
  %41 = call i64 @iicbus_transfer(i32 %39, %struct.iic_msg* %40, i32 1)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %54

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  %47 = icmp sgt i32 %46, 5
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @hz, align 4
  %53 = call i32 @pause(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %38

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
