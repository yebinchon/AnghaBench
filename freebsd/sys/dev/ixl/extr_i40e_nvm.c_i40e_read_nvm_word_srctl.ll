; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_read_nvm_word_srctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_read_nvm_word_srctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@I40E_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"i40e_read_nvm_word_srctl\00", align 1
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"NVM read error: Offset %d beyond Shadow RAM limit %d\0A\00", align 1
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_GLNVM_SRCTL_ADDR_SHIFT = common dso_local global i32 0, align 4
@I40E_GLNVM_SRCTL_START_SHIFT = common dso_local global i32 0, align 4
@I40E_GLNVM_SRCTL = common dso_local global i32 0, align 4
@I40E_GLNVM_SRDATA = common dso_local global i32 0, align 4
@I40E_GLNVM_SRDATA_RDDATA_MASK = common dso_local global i32 0, align 4
@I40E_GLNVM_SRDATA_RDDATA_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"NVM read error: Couldn't access Shadow RAM address: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_read_nvm_word_srctl(%struct.i40e_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  store i32 %9, i32* %7, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %11, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %19 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %22 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (%struct.i40e_hw*, i32, i8*, i64, ...) @i40e_debug(%struct.i40e_hw* %18, i32 %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %20, i64 %24)
  %26 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %26, i32* %7, align 4
  br label %72

27:                                               ; preds = %3
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %29 = call i32 @i40e_poll_sr_srctl_done_bit(%struct.i40e_hw* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @I40E_SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @I40E_GLNVM_SRCTL_ADDR_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @I40E_GLNVM_SRCTL_START_SHIFT, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = or i32 %37, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %42 = load i32, i32* @I40E_GLNVM_SRCTL, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @wr32(%struct.i40e_hw* %41, i32 %42, i32 %43)
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %46 = call i32 @i40e_poll_sr_srctl_done_bit(%struct.i40e_hw* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @I40E_SUCCESS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %33
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %52 = load i32, i32* @I40E_GLNVM_SRDATA, align 4
  %53 = call i32 @rd32(%struct.i40e_hw* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @I40E_GLNVM_SRDATA_RDDATA_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @I40E_GLNVM_SRDATA_RDDATA_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = load i64*, i64** %6, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %50, %33
  br label %62

62:                                               ; preds = %61, %27
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @I40E_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %68 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %69 = load i64, i64* %5, align 8
  %70 = call i32 (%struct.i40e_hw*, i32, i8*, i64, ...) @i40e_debug(%struct.i40e_hw* %67, i32 %68, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %66, %62
  br label %72

72:                                               ; preds = %71, %17
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i64, ...) #1

declare dso_local i32 @i40e_poll_sr_srctl_done_bit(%struct.i40e_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
