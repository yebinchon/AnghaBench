; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_read_cim_obq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_read_cim_obq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@A_CIM_QUEUE_CONFIG_REF = common dso_local global i32 0, align 4
@F_OBQSELECT = common dso_local global i32 0, align 4
@A_CIM_QUEUE_CONFIG_CTRL = common dso_local global i32 0, align 4
@A_CIM_OBQ_DBG_CFG = common dso_local global i32 0, align 4
@F_OBQDBGEN = common dso_local global i32 0, align 4
@F_OBQDBGBUSY = common dso_local global i32 0, align 4
@A_CIM_OBQ_DBG_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_read_cim_obq(%struct.adapter* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.adapter*, %struct.adapter** %6, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %15, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp ugt i32 %21, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = and i64 %26, 3
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %96

32:                                               ; preds = %25
  %33 = load %struct.adapter*, %struct.adapter** %6, align 8
  %34 = load i32, i32* @A_CIM_QUEUE_CONFIG_REF, align 4
  %35 = load i32, i32* @F_OBQSELECT, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @V_QUENUMSELECT(i32 %36)
  %38 = or i32 %35, %37
  %39 = call i32 @t4_write_reg(%struct.adapter* %33, i32 %34, i32 %38)
  %40 = load %struct.adapter*, %struct.adapter** %6, align 8
  %41 = load i32, i32* @A_CIM_QUEUE_CONFIG_CTRL, align 4
  %42 = call i8* @t4_read_reg(%struct.adapter* %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @G_CIMQBASE(i32 %44)
  %46 = mul nsw i32 %45, 64
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @G_CIMQSIZE(i32 %47)
  %49 = mul nsw i32 %48, 64
  store i32 %49, i32* %14, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i32, i32* %14, align 4
  %52 = zext i32 %51 to i64
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %32
  %55 = load i32, i32* %14, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %54, %32
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %86, %57
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %9, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  %64 = load %struct.adapter*, %struct.adapter** %6, align 8
  %65 = load i32, i32* @A_CIM_OBQ_DBG_CFG, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @V_OBQDBGADDR(i32 %66)
  %68 = load i32, i32* @F_OBQDBGEN, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @t4_write_reg(%struct.adapter* %64, i32 %65, i32 %69)
  %71 = load %struct.adapter*, %struct.adapter** %6, align 8
  %72 = load i32, i32* @A_CIM_OBQ_DBG_CFG, align 4
  %73 = load i32, i32* @F_OBQDBGBUSY, align 4
  %74 = call i32 @t4_wait_op_done(%struct.adapter* %71, i32 %72, i32 %73, i32 0, i32 2, i32 1)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %96

79:                                               ; preds = %63
  %80 = load %struct.adapter*, %struct.adapter** %6, align 8
  %81 = load i32, i32* @A_CIM_OBQ_DBG_DATA, align 4
  %82 = call i8* @t4_read_reg(%struct.adapter* %80, i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %58

91:                                               ; preds = %58
  %92 = load %struct.adapter*, %struct.adapter** %6, align 8
  %93 = load i32, i32* @A_CIM_OBQ_DBG_CFG, align 4
  %94 = call i32 @t4_write_reg(%struct.adapter* %92, i32 %93, i32 0)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %91, %77, %29
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_QUENUMSELECT(i32) #1

declare dso_local i8* @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @G_CIMQBASE(i32) #1

declare dso_local i32 @G_CIMQSIZE(i32) #1

declare dso_local i32 @V_OBQDBGADDR(i32) #1

declare dso_local i32 @t4_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
