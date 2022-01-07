; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_bread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i32, i8*, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@IIC_M_NOSTART = common dso_local global i32 0, align 4
@IIC_WAIT = common dso_local global i32 0, align 4
@SMB_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@SMB_EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i32*, i8*)* @iicsmb_bread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicsmb_bread(i32 %0, i32 %1, i8 signext %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x %struct.iic_msg], align 16
  %12 = alloca [1 x %struct.iic_msg], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 0
  %16 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %16, align 16
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 1
  %19 = load i32, i32* @IIC_M_WR, align 4
  %20 = load i32, i32* @IIC_M_NOSTOP, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 2
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 3
  store i8* %8, i8** %23, align 16
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i32 0, i32 4
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %15, i64 1
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %26, align 16
  %28 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 1
  %29 = load i32, i32* @IIC_M_RD, align 4
  %30 = load i32, i32* @IIC_M_NOSTOP, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 2
  store i32 1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 3
  %34 = load i32*, i32** %9, align 8
  %35 = bitcast i32* %34 to i8*
  store i8* %35, i8** %33, align 16
  %36 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 4
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %12, i64 0, i64 0
  %38 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %38, align 16
  %40 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %37, i32 0, i32 1
  %41 = load i32, i32* @IIC_M_RD, align 4
  %42 = load i32, i32* @IIC_M_NOSTART, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %37, i32 0, i32 2
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %37, i32 0, i32 3
  %46 = load i8*, i8** %10, align 8
  store i8* %46, i8** %45, align 16
  %47 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %37, i32 0, i32 4
  store i32 0, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @device_get_parent(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @IIC_WAIT, align 4
  %53 = call i32 @iicbus_request_bus(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %5
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %11, i64 0, i64 0
  %59 = call i32 @TRANSFER_MSGS(i32 %57, %struct.iic_msg* %58)
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %56, %5
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SMB_MAXBLOCKSIZE, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %63
  %73 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %12, i64 0, i64 0
  %74 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %73, i32 0, i32 4
  store i32 1, i32* %74, align 8
  br label %80

75:                                               ; preds = %68
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %12, i64 0, i64 0
  %79 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i32, i32* %6, align 4
  %82 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %12, i64 0, i64 0
  %83 = call i32 @TRANSFER_MSGS(i32 %81, %struct.iic_msg* %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SMB_MAXBLOCKSIZE, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88, %80
  %93 = load i32, i32* @SMB_EINVAL, align 4
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %92, %88
  br label %95

95:                                               ; preds = %94, %60
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @iicbus_release_bus(i32 %96, i32 %97)
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @iic2smb_error(i32 %99)
  ret i32 %100
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @iicbus_request_bus(i32, i32, i32) #1

declare dso_local i32 @TRANSFER_MSGS(i32, %struct.iic_msg*) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

declare dso_local i32 @iic2smb_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
