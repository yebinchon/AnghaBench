; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adm1030.c_adm1030_write_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adm1030.c_adm1030_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i8*, i32, i32, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"iicbus write failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"adm1030_write_byte\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i8)* @adm1030_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1030_write_byte(i32 %0, i32 %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [4 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.iic_msg], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i32 0, i32* %11, align 4
  %13 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %12, i64 0, i64 0
  %14 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %14, align 8
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 1
  %19 = load i32, i32* @IIC_M_WR, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 3
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 4
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %12, i64 0, i64 0
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 1
  store i32 2, i32* %26, align 8
  %27 = load i8, i8* %8, align 1
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 %27, i8* %28, align 1
  %29 = load i8, i8* %9, align 1
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  store i8 %29, i8* %30, align 1
  br label %31

31:                                               ; preds = %44, %4
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %12, i64 0, i64 0
  %34 = call i64 @iicbus_transfer(i32 %32, %struct.iic_msg* %33, i32 1)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %47

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  %40 = icmp sgt i32 %39, 5
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @hz, align 4
  %46 = call i32 @pause(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %31

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
