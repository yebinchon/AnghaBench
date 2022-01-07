; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_vf.c_e1000_reset_hw_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_vf.c_e1000_reset_hw_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_mbx_info }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_mbx_info = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*, i32*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32*, i32, i32)*, i32 (%struct.e1000_hw.2*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@E1000_VF_INIT_TIMEOUT = common dso_local global i32 0, align 4
@E1000_ERR_MAC_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"e1000_reset_hw_vf\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Issuing a function level reset to MAC\0A\00", align 1
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@E1000_VF_MBX_INIT_TIMEOUT = common dso_local global i32 0, align 4
@E1000_VF_RESET = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_reset_hw_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_reset_hw_vf(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mbx_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  store %struct.e1000_mbx_info* %10, %struct.e1000_mbx_info** %3, align 8
  %11 = load i32, i32* @E1000_VF_INIT_TIMEOUT, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @E1000_ERR_MAC_INIT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32* %14, i32** %8, align 8
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = load i32, i32* @E1000_CTRL, align 4
  %19 = call i32 @E1000_READ_REG(%struct.e1000_hw* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = load i32, i32* @E1000_CTRL, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @E1000_CTRL_RST, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %20, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %40, %1
  %27 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32 (%struct.e1000_hw.2*, i32)*, i32 (%struct.e1000_hw.2*, i32)** %29, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = bitcast %struct.e1000_hw* %31 to %struct.e1000_hw.2*
  %33 = call i32 %30(%struct.e1000_hw.2* %32, i32 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %35, %26
  %39 = phi i1 [ false, %26 ], [ %37, %35 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  %43 = call i32 @usec_delay(i32 5)
  br label %26

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %91

47:                                               ; preds = %44
  %48 = load i32, i32* @E1000_VF_MBX_INIT_TIMEOUT, align 4
  %49 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @E1000_VF_RESET, align 4
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32 (%struct.e1000_hw.1*, i32*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32*, i32, i32)** %55, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %58 = bitcast %struct.e1000_hw* %57 to %struct.e1000_hw.1*
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %60 = call i32 %56(%struct.e1000_hw.1* %58, i32* %59, i32 1, i32 0)
  %61 = call i32 @msec_delay(i32 10)
  %62 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%struct.e1000_hw.0*, i32*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32*, i32, i32)** %64, align 8
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = bitcast %struct.e1000_hw* %66 to %struct.e1000_hw.0*
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %69 = call i32 %65(%struct.e1000_hw.0* %67, i32* %68, i32 3, i32 0)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %47
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @E1000_VF_RESET, align 4
  %76 = load i32, i32* @E1000_VT_MSGTYPE_ACK, align 4
  %77 = or i32 %75, %76
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @memcpy(i32 %83, i32* %84, i32 6)
  br label %89

86:                                               ; preds = %72
  %87 = load i32, i32* @E1000_ERR_MAC_INIT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %79
  br label %90

90:                                               ; preds = %89, %47
  br label %91

91:                                               ; preds = %90, %44
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
