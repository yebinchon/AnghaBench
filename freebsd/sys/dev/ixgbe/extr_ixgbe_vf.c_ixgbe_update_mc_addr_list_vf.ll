; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_update_mc_addr_list_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_update_mc_addr_list_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mbx_info }
%struct.ixgbe_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ixgbe_update_mc_addr_list_vf\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"MC Addr Count = %d\0A\00", align 1
@IXGBE_VF_SET_MULTICAST = common dso_local global i32 0, align 4
@IXGBE_VT_MSGINFO_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Hash value = 0x%03X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_update_mc_addr_list_vf(%struct.ixgbe_hw* %0, i32* %1, i32 %2, i32 (%struct.ixgbe_hw*, i32**, i32*)* %3, i32 %4) #0 {
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.ixgbe_hw*, i32**, i32*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_mbx_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (%struct.ixgbe_hw*, i32**, i32*)* %3, i32 (%struct.ixgbe_hw*, i32**, i32*)** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  store %struct.ixgbe_mbx_info* %20, %struct.ixgbe_mbx_info** %11, align 8
  %21 = load i32, i32* @IXGBE_VFMAILBOX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = bitcast i32* %25 to i64*
  store i64* %26, i64** %14, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @UNREFERENCED_1PARAMETER(i32 %27)
  %29 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 30
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ 30, %34 ], [ %36, %35 ]
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* @IXGBE_VF_SET_MULTICAST, align 4
  %40 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %39, i32* %40, align 16
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @IXGBE_VT_MSGINFO_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = getelementptr inbounds i32, i32* %24, i64 0
  %45 = load i32, i32* %44, align 16
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 16
  store i32 0, i32* %17, align 4
  br label %47

47:                                               ; preds = %65, %37
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %53 = load i32 (%struct.ixgbe_hw*, i32**, i32*)*, i32 (%struct.ixgbe_hw*, i32**, i32*)** %9, align 8
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %55 = call i32 %53(%struct.ixgbe_hw* %54, i32** %7, i32* %18)
  %56 = call i32 @ixgbe_mta_vector(%struct.ixgbe_hw* %52, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** %14, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %60, i64* %64, align 8
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %17, align 4
  br label %47

68:                                               ; preds = %47
  %69 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %11, align 8
  %70 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (%struct.ixgbe_hw.0*, i32*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32, i32)** %71, align 8
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %74 = bitcast %struct.ixgbe_hw* %73 to %struct.ixgbe_hw.0*
  %75 = load i32, i32* @IXGBE_VFMAILBOX_SIZE, align 4
  %76 = call i32 %72(%struct.ixgbe_hw.0* %74, i32* %24, i32 %75, i32 0)
  %77 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %77)
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UNREFERENCED_1PARAMETER(i32) #2

declare dso_local i32 @DEBUGFUNC(i8*) #2

declare dso_local i32 @DEBUGOUT1(i8*, i32) #2

declare dso_local i32 @ixgbe_mta_vector(%struct.ixgbe_hw*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
