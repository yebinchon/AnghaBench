; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_max6690.c_max6690_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_max6690.c_max6690_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i32*, i32 }

@MAX6690_RSL_STATUS = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"iicbus read failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"max6690_read\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @max6690_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6690_read(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca [1 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x %struct.iic_msg], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* @MAX6690_RSL_STATUS, align 4
  store i32 %16, i32* %12, align 4
  %17 = getelementptr inbounds [4 x %struct.iic_msg], [4 x %struct.iic_msg]* %15, i64 0, i64 0
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %17, i32 0, i32 1
  %21 = load i32, i32* @IIC_M_WR, align 4
  %22 = load i32, i32* @IIC_M_NOSTOP, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %17, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %24, align 8
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %17, i32 0, i32 3
  %26 = ptrtoint i32* %12 to i32
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %17, i64 1
  %28 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %27, i32 0, i32 1
  %31 = load i32, i32* @IIC_M_RD, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %27, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %32, align 8
  %33 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %27, i32 0, i32 3
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %35 = ptrtoint i32* %34 to i32
  store i32 %35, i32* %33, align 8
  %36 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %27, i64 1
  %37 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 1
  %40 = load i32, i32* @IIC_M_WR, align 4
  %41 = load i32, i32* @IIC_M_NOSTOP, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %39, align 4
  %43 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %43, align 8
  %44 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 3
  %45 = ptrtoint i32* %8 to i32
  store i32 %45, i32* %44, align 8
  %46 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i64 1
  %47 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %46, i32 0, i32 1
  %50 = load i32, i32* @IIC_M_RD, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %46, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %51, align 8
  %52 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %46, i32 0, i32 3
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %54 = ptrtoint i32* %53 to i32
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %84, %4
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds [4 x %struct.iic_msg], [4 x %struct.iic_msg]* %15, i64 0, i64 0
  %58 = call i32 @iicbus_transfer(i32 %56, %struct.iic_msg* %57, i32 4)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %77

62:                                               ; preds = %55
  %63 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 128
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %77

68:                                               ; preds = %62
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = icmp eq i32 %70, 255
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %77

73:                                               ; preds = %68
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %5, align 4
  br label %87

77:                                               ; preds = %72, %67, %61
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  %80 = icmp sgt i32 %79, 5
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @hz, align 4
  %86 = call i32 @pause(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %55

87:                                               ; preds = %81, %73
  %88 = load i32, i32* %5, align 4
  ret i32 %88
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
