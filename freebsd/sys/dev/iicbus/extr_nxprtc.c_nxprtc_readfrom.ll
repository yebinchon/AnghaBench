; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_nxprtc_readfrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_nxprtc_readfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i8**, i32, i8* }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32, i32)* @nxprtc_readfrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxprtc_readfrom(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iic_msg, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i8* @iicbus_get_addr(i32 %15)
  store i8* %16, i8** %14, align 8
  %17 = load i8*, i8** %14, align 8
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @IIC_M_WR, align 4
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 1
  store i8** %8, i8*** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @iicbus_transfer_excl(i32 %23, %struct.iic_msg* %12, i32 1, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %42

29:                                               ; preds = %5
  %30 = load i8*, i8** %14, align 8
  %31 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 3
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* @IIC_M_RD, align 4
  %33 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = bitcast i8* %36 to i8**
  %38 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %12, i32 0, i32 1
  store i8** %37, i8*** %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @iicbus_transfer_excl(i32 %39, %struct.iic_msg* %12, i32 1, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %29, %27
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i8* @iicbus_get_addr(i32) #1

declare dso_local i32 @iicbus_transfer_excl(i32, %struct.iic_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
