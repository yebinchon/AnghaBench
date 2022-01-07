; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_rtc8583.c_rtc8583_writeto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_rtc8583.c_rtc8583_writeto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32*, i64, i32, i32 }

@MAX_TRANSFER = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i32)* @rtc8583_writeto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc8583_writeto(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iic_msg, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* @MAX_TRANSFER, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %13, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %14, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @iicbus_get_addr(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %21, i32* %22, align 16
  %23 = getelementptr inbounds i32, i32* %18, i64 1
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @memcpy(i32* %23, i8* %24, i32 %25)
  %27 = load i32, i32* %12, align 4
  %28 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @IIC_M_WR, align 4
  %30 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 1
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 0
  store i32* %18, i32** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @iicbus_transfer_excl(i32 %36, %struct.iic_msg* %11, i32 1, i32 %37)
  %39 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %39)
  ret i32 %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @iicbus_get_addr(i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @iicbus_transfer_excl(i32, %struct.iic_msg*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
