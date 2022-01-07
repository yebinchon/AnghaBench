; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_read_nvm_aq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_read_nvm_aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.i40e_asq_cmd_details = type { i32* }

@I40E_ERR_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"i40e_read_nvm_aq\00", align 1
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"NVM write error: offset %d beyond Shadow RAM limit %d\0A\00", align 1
@I40E_SR_SECTOR_SIZE_IN_WORDS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"NVM write fail error: tried to write %d words, limit is %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [86 x i8] c"NVM write error: cannot spread over two sectors in a single write offset=%d words=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, i32, i64, i64, i8*, i32)* @i40e_read_nvm_aq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_read_nvm_aq(%struct.i40e_hw* %0, i32 %1, i64 %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i40e_asq_cmd_details, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @I40E_ERR_NVM, align 4
  store i32 %15, i32* %13, align 4
  %16 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @memset(%struct.i40e_asq_cmd_details* %14, i32 0, i32 8)
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %19 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.i40e_asq_cmd_details, %struct.i40e_asq_cmd_details* %14, i32 0, i32 0
  store i32* %19, i32** %20, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %23, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %6
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %31 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %36 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @i40e_debug(%struct.i40e_hw* %30, i32 %31, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %34, i64 %38)
  br label %81

40:                                               ; preds = %6
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %46 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %49 = call i32 @i40e_debug(%struct.i40e_hw* %45, i32 %46, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %47, i64 %48)
  br label %80

50:                                               ; preds = %40
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub nsw i64 %52, 1
  %54 = add nsw i64 %51, %53
  %55 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %56 = sdiv i64 %54, %55
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %59 = sdiv i64 %57, %58
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %63 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @i40e_debug(%struct.i40e_hw* %62, i32 %63, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0), i64 %64, i64 %65)
  br label %79

67:                                               ; preds = %50
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i64, i64* %9, align 8
  %71 = mul nsw i64 2, %70
  %72 = trunc i64 %71 to i32
  %73 = load i64, i64* %10, align 8
  %74 = mul nsw i64 2, %73
  %75 = trunc i64 %74 to i32
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @i40e_aq_read_nvm(%struct.i40e_hw* %68, i32 %69, i32 %72, i32 %75, i8* %76, i32 %77, %struct.i40e_asq_cmd_details* %14)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %67, %61
  br label %80

80:                                               ; preds = %79, %44
  br label %81

81:                                               ; preds = %80, %29
  %82 = load i32, i32* %13, align 4
  ret i32 %82
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @memset(%struct.i40e_asq_cmd_details*, i32, i32) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i64, i64) #1

declare dso_local i32 @i40e_aq_read_nvm(%struct.i40e_hw*, i32, i32, i32, i8*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
