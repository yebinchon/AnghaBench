; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_write_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_write_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_data = type { i32, i32 }
%struct.write_data = type { i32, i32 }
%struct.iic_msg = type { i32, i32, i32*, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"iicbus write/read failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ad7417_write_read\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, %struct.read_data*)* @ad7417_write_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7417_write_read(i32 %0, i32 %1, i64 %2, %struct.read_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.write_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.read_data*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x %struct.iic_msg], align 16
  %14 = bitcast %struct.write_data* %6 to i64*
  store i64 %2, i64* %14, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.read_data* %3, %struct.read_data** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = getelementptr inbounds [3 x %struct.iic_msg], [3 x %struct.iic_msg]* %13, i64 0, i64 0
  %16 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 1
  %19 = load i32, i32* @IIC_M_WR, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 2
  store i32* inttoptr (i64 2 to i32*), i32** %20, align 8
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 3
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %23 = ptrtoint i32* %22 to i32
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i64 1
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 1
  %28 = load i32, i32* @IIC_M_WR, align 4
  %29 = load i32, i32* @IIC_M_NOSTOP, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %31, align 8
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 3
  %33 = load %struct.read_data*, %struct.read_data** %9, align 8
  %34 = getelementptr inbounds %struct.read_data, %struct.read_data* %33, i32 0, i32 0
  %35 = ptrtoint i32* %34 to i32
  store i32 %35, i32* %32, align 8
  %36 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i64 1
  %37 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 1
  %40 = load i32, i32* @IIC_M_RD, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 2
  store i32* inttoptr (i64 2 to i32*), i32** %41, align 8
  %42 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 3
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %44 = ptrtoint i32* %43 to i32
  store i32 %44, i32* %42, align 8
  %45 = getelementptr inbounds %struct.write_data, %struct.write_data* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %46, i32* %47, align 16
  %48 = getelementptr inbounds %struct.write_data, %struct.write_data* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %71, %4
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds [3 x %struct.iic_msg], [3 x %struct.iic_msg]* %13, i64 0, i64 0
  %55 = call i32 @iicbus_transfer(i32 %53, %struct.iic_msg* %54, i32 3)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %64

59:                                               ; preds = %52
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %61 = load i32, i32* %60, align 16
  %62 = load %struct.read_data*, %struct.read_data** %9, align 8
  %63 = getelementptr inbounds %struct.read_data, %struct.read_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %74

64:                                               ; preds = %58
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = icmp sgt i32 %66, 5
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @hz, align 4
  %73 = call i32 @pause(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %52

74:                                               ; preds = %68, %59
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
