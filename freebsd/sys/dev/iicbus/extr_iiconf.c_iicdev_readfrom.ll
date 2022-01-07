; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iicdev_readfrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iicdev_readfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i8**, i8* }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iicdev_readfrom(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.iic_msg], align 16
  %12 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i8* @iicbus_get_addr(i32 %13)
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 0
  %17 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 16
  %18 = load i32, i32* @IIC_M_WR, align 4
  %19 = load i32, i32* @IIC_M_NOSTOP, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 0
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 16
  %23 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 0
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 0
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 2
  store i8** %7, i8*** %26, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 1
  %29 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @IIC_M_RD, align 4
  %31 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 1
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 1
  %35 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = bitcast i8* %36 to i8**
  %38 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 1
  %39 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %38, i32 0, i32 2
  store i8** %37, i8*** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 0
  %42 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 0
  %43 = call i32 @nitems(%struct.iic_msg* %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @iicbus_transfer_excl(i32 %40, %struct.iic_msg* %41, i32 %43, i32 %44)
  ret i32 %45
}

declare dso_local i8* @iicbus_get_addr(i32) #1

declare dso_local i32 @iicbus_transfer_excl(i32, %struct.iic_msg*, i32, i32) #1

declare dso_local i32 @nitems(%struct.iic_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
