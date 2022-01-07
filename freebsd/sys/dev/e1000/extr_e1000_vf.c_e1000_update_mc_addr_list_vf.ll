; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_vf.c_e1000_update_mc_addr_list_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_vf.c_e1000_update_mc_addr_list_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"e1000_update_mc_addr_list_vf\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"MC Addr Count = %d\0A\00", align 1
@E1000_VF_SET_MULTICAST_OVERFLOW = common dso_local global i32 0, align 4
@E1000_VF_SET_MULTICAST = common dso_local global i32 0, align 4
@E1000_VT_MSGINFO_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Hash value = 0x%03X\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_update_mc_addr_list_vf(%struct.e1000_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32* %16, i32** %9, align 8
  %17 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 30
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* @E1000_VF_SET_MULTICAST_OVERFLOW, align 4
  %24 = getelementptr inbounds i32, i32* %15, i64 0
  %25 = load i32, i32* %24, align 16
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 16
  store i32 30, i32* %6, align 4
  br label %27

27:                                               ; preds = %22, %3
  %28 = load i32, i32* @E1000_VF_SET_MULTICAST, align 4
  %29 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @E1000_VT_MSGINFO_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = getelementptr inbounds i32, i32* %15, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 16
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %56, %27
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @e1000_hash_mc_addr_vf(%struct.e1000_hw* %41, i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 4095
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %5, align 8
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %36

59:                                               ; preds = %36
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %61 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %62 = call i32 @e1000_write_msg_read_ack(%struct.e1000_hw* %60, i32* %15, i32 %61)
  %63 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEBUGFUNC(i8*) #2

declare dso_local i32 @DEBUGOUT1(i8*, i32) #2

declare dso_local i32 @e1000_hash_mc_addr_vf(%struct.e1000_hw*, i32*) #2

declare dso_local i32 @e1000_write_msg_read_ack(%struct.e1000_hw*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
