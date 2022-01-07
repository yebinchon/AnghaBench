; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_reset_hw_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_reset_hw_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, i32, %struct.ixgbe_mbx_info }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_mbx_info = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.1*, i32*, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i32*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque

@IXGBE_VF_INIT_TIMEOUT = common dso_local global i32 0, align 4
@IXGBE_ERR_INVALID_MAC_ADDR = common dso_local global i64 0, align 8
@IXGBE_VF_PERMADDR_MSG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ixgbevf_reset_hw_vf\00", align 1
@ixgbe_mbox_api_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Issuing a function level reset to MAC\0A\00", align 1
@IXGBE_VFCTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@IXGBE_VF_MBX_INIT_TIMEOUT = common dso_local global i32 0, align 4
@IXGBE_VF_RESET = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@IXGBE_ETH_LENGTH_OF_ADDRESS = common dso_local global i32 0, align 4
@IXGBE_VF_MC_TYPE_WORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_reset_hw_vf(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_mbx_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 2
  store %struct.ixgbe_mbx_info* %12, %struct.ixgbe_mbx_info** %4, align 8
  %13 = load i32, i32* @IXGBE_VF_INIT_TIMEOUT, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* @IXGBE_ERR_INVALID_MAC_ADDR, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* @IXGBE_VF_PERMADDR_MSG_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32* %19, i32** %9, align 8
  %20 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %24, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = bitcast %struct.ixgbe_hw* %26 to %struct.ixgbe_hw.0*
  %28 = call i32 %25(%struct.ixgbe_hw.0* %27)
  %29 = load i32, i32* @ixgbe_mbox_api_10, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = load i32, i32* @IXGBE_VFCTRL, align 4
  %35 = load i32, i32* @IXGBE_CTRL_RST, align 4
  %36 = call i32 @IXGBE_VFWRITE_REG(%struct.ixgbe_hw* %33, i32 %34, i32 %35)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %37)
  %39 = call i32 @msec_delay(i32 50)
  br label %40

40:                                               ; preds = %54, %1
  %41 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32 (%struct.ixgbe_hw.3*, i32)*, i32 (%struct.ixgbe_hw.3*, i32)** %43, align 8
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %46 = bitcast %struct.ixgbe_hw* %45 to %struct.ixgbe_hw.3*
  %47 = call i32 %44(%struct.ixgbe_hw.3* %46, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %40
  %53 = phi i1 [ false, %40 ], [ %51, %49 ]
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  %57 = call i32 @usec_delay(i32 5)
  br label %40

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %62, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %130

63:                                               ; preds = %58
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = call i32 @ixgbe_virt_clr_reg(%struct.ixgbe_hw* %64)
  %66 = load i32, i32* @IXGBE_VF_MBX_INIT_TIMEOUT, align 4
  %67 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %4, align 8
  %68 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @IXGBE_VF_RESET, align 4
  %70 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %69, i32* %70, align 16
  %71 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %4, align 8
  %72 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32 (%struct.ixgbe_hw.2*, i32*, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i32*, i32, i32)** %73, align 8
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %76 = bitcast %struct.ixgbe_hw* %75 to %struct.ixgbe_hw.2*
  %77 = call i32 %74(%struct.ixgbe_hw.2* %76, i32* %18, i32 1, i32 0)
  %78 = call i32 @msec_delay(i32 10)
  %79 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %4, align 8
  %80 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64 (%struct.ixgbe_hw.1*, i32*, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32*, i32, i32)** %81, align 8
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %84 = bitcast %struct.ixgbe_hw* %83 to %struct.ixgbe_hw.1*
  %85 = load i32, i32* @IXGBE_VF_PERMADDR_MSG_LEN, align 4
  %86 = call i64 %82(%struct.ixgbe_hw.1* %84, i32* %18, i32 %85, i32 0)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %63
  %90 = load i64, i64* %6, align 8
  store i64 %90, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %130

91:                                               ; preds = %63
  %92 = getelementptr inbounds i32, i32* %18, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = load i32, i32* @IXGBE_VF_RESET, align 4
  %95 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %96 = or i32 %94, %95
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = getelementptr inbounds i32, i32* %18, i64 0
  %100 = load i32, i32* %99, align 16
  %101 = load i32, i32* @IXGBE_VF_RESET, align 4
  %102 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %103 = or i32 %101, %102
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i64, i64* @IXGBE_ERR_INVALID_MAC_ADDR, align 8
  store i64 %106, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %130

107:                                              ; preds = %98, %91
  %108 = getelementptr inbounds i32, i32* %18, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = load i32, i32* @IXGBE_VF_RESET, align 4
  %111 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %112 = or i32 %110, %111
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %107
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* @IXGBE_ETH_LENGTH_OF_ADDRESS, align 4
  %121 = call i32 @memcpy(i32 %118, i32* %119, i32 %120)
  br label %122

122:                                              ; preds = %114, %107
  %123 = load i64, i64* @IXGBE_VF_MC_TYPE_WORD, align 8
  %124 = getelementptr inbounds i32, i32* %18, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %127 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = load i64, i64* %6, align 8
  store i64 %129, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %130

130:                                              ; preds = %122, %105, %89, %61
  %131 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i64, i64* %2, align 8
  ret i64 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEBUGFUNC(i8*) #2

declare dso_local i32 @DEBUGOUT(i8*) #2

declare dso_local i32 @IXGBE_VFWRITE_REG(%struct.ixgbe_hw*, i32, i32) #2

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #2

declare dso_local i32 @msec_delay(i32) #2

declare dso_local i32 @usec_delay(i32) #2

declare dso_local i32 @ixgbe_virt_clr_reg(%struct.ixgbe_hw*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
