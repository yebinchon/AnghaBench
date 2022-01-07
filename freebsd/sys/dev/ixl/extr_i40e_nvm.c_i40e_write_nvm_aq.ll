; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_write_nvm_aq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_write_nvm_aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.i40e_asq_cmd_details = type { i32* }

@I40E_ERR_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"i40e_write_nvm_aq\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"NVM write error: offset beyond Shadow RAM limit.\0A\00", align 1
@I40E_SR_SECTOR_SIZE_IN_WORDS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"NVM write fail error: cannot write more than 4KB in a single write.\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"NVM write error: cannot spread over two sectors in a single write.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_write_nvm_aq(%struct.i40e_hw* %0, i32 %1, i64 %2, i64 %3, i8* %4, i32 %5) #0 {
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
  %16 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
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
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %64

31:                                               ; preds = %6
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  br label %63

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = sub nsw i64 %39, 1
  %41 = add nsw i64 %38, %40
  %42 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %43 = sdiv i64 %41, %42
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %46 = sdiv i64 %44, %45
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  br label %62

50:                                               ; preds = %37
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i64, i64* %9, align 8
  %54 = mul nsw i64 2, %53
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %10, align 8
  %57 = mul nsw i64 2, %56
  %58 = trunc i64 %57 to i32
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @i40e_aq_update_nvm(%struct.i40e_hw* %51, i32 %52, i32 %55, i32 %58, i8* %59, i32 %60, i32 0, %struct.i40e_asq_cmd_details* %14)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %50, %48
  br label %63

63:                                               ; preds = %62, %35
  br label %64

64:                                               ; preds = %63, %29
  %65 = load i32, i32* %13, align 4
  ret i32 %65
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @memset(%struct.i40e_asq_cmd_details*, i32, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @i40e_aq_update_nvm(%struct.i40e_hw*, i32, i32, i32, i8*, i32, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
