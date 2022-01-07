; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_tp_indirect_rw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_tp_indirect_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_TP_PIO = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_TP_TM_PIO = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_TP_MIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32, i32*, i32, i32, i32, i32)* @t4_tp_indirect_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_tp_indirect_rw(%struct.adapter* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %28 [
    i32 129, label %22
    i32 128, label %24
    i32 130, label %26
  ]

22:                                               ; preds = %8
  %23 = load i32, i32* @FW_LDST_ADDRSPC_TP_PIO, align 4
  store i32 %23, i32* %18, align 4
  br label %29

24:                                               ; preds = %8
  %25 = load i32, i32* @FW_LDST_ADDRSPC_TP_TM_PIO, align 4
  store i32 %25, i32* %18, align 4
  br label %29

26:                                               ; preds = %8
  %27 = load i32, i32* @FW_LDST_ADDRSPC_TP_MIB, align 4
  store i32 %27, i32* %18, align 4
  br label %29

28:                                               ; preds = %8
  br label %43

29:                                               ; preds = %26, %24, %22
  %30 = load %struct.adapter*, %struct.adapter** %9, align 8
  %31 = call i64 @t4_use_ldst(%struct.adapter* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.adapter*, %struct.adapter** %9, align 8
  %35 = load i32, i32* %18, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @t4_tp_fw_ldst_rw(%struct.adapter* %34, i32 %35, i32* %36, i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %33, %29
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.adapter*, %struct.adapter** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @t4_read_indirect(%struct.adapter* %50, i32 %51, i32 %52, i32* %53, i32 %54, i32 %55)
  br label %65

57:                                               ; preds = %46
  %58 = load %struct.adapter*, %struct.adapter** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @t4_write_indirect(%struct.adapter* %58, i32 %59, i32 %60, i32* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %49
  br label %66

66:                                               ; preds = %65, %43
  ret void
}

declare dso_local i64 @t4_use_ldst(%struct.adapter*) #1

declare dso_local i32 @t4_tp_fw_ldst_rw(%struct.adapter*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @t4_read_indirect(%struct.adapter*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @t4_write_indirect(%struct.adapter*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
