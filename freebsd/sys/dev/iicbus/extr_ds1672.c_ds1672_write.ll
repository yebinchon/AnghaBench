; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1672.c_ds1672_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1672.c_ds1672_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32*, i32, i32, i32 }

@MAX_IIC_DATA_SIZE = common dso_local global i32 0, align 4
@DS1672_ADDR = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @ds1672_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1672_write(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [1 x %struct.iic_msg], align 16
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @MAX_IIC_DATA_SIZE, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %12, i64 0, i64 0
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 0
  %21 = load i32, i32* @DS1672_ADDR, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 1
  %25 = load i32, i32* @IIC_M_WR, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 2
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 3
  %30 = ptrtoint i32* %18 to i32
  store i32 %30, i32* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MAX_IIC_DATA_SIZE, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %46

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %37, i32* %38, align 16
  %39 = getelementptr inbounds i32, i32* %18, i64 1
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @memcpy(i32* %39, i32* %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %12, i64 0, i64 0
  %45 = call i32 @iicbus_transfer(i32 %43, %struct.iic_msg* %44, i32 1)
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %46

46:                                               ; preds = %36, %34
  %47 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
