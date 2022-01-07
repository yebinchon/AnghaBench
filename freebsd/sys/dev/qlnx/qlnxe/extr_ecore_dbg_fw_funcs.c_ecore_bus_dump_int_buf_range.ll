; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_int_buf_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_int_buf_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@INT_BUF_LINE_SIZE_IN_DWORDS = common dso_local global i32 0, align 4
@DBG_REG_INTR_BUFFER = common dso_local global i32 0, align 4
@BYTES_IN_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32, i32)* @ecore_bus_dump_int_buf_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_bus_dump_int_buf_range(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_ptt*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %8, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %12, align 4
  %23 = sub nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @INT_BUF_LINE_SIZE_IN_DWORDS, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %7, align 4
  br label %73

27:                                               ; preds = %6
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* @DBG_REG_INTR_BUFFER, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @INT_BUF_LINE_SIZE_IN_DWORDS, align 4
  %32 = mul nsw i32 %30, %31
  %33 = call i32 @DWORDS_TO_BYTES(i32 %32)
  %34 = add nsw i32 %29, %33
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %65, %27
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %58, %39
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @INT_BUF_LINE_SIZE_IN_DWORDS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %46 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @ecore_rd(%struct.ecore_hwfn* %45, %struct.ecore_ptt* %46, i32 %47)
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* @INT_BUF_LINE_SIZE_IN_DWORDS, align 4
  %52 = add nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %16, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %49, i64 %56
  store i32 %48, i32* %57, align 4
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* @BYTES_IN_DWORD, align 4
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %15, align 4
  br label %40

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* @INT_BUF_LINE_SIZE_IN_DWORDS, align 4
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %17, align 4
  br label %35

71:                                               ; preds = %35
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %20
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @DWORDS_TO_BYTES(i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
