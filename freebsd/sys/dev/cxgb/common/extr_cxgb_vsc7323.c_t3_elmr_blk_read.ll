; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc7323.c_t3_elmr_blk_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc7323.c_t3_elmr_blk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_ops = type { i32 (i32*, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32*)* }
%struct.TYPE_2__ = type { %struct.mdio_ops* }

@ELMR_MDIO_ADDR = common dso_local global i32 0, align 4
@ELMR_ADDR = common dso_local global i32 0, align 4
@ELMR_STAT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ELMR_DATA_LO = common dso_local global i32 0, align 4
@ELMR_DATA_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_elmr_blk_read(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mdio_ops*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_2__* @adapter_info(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mdio_ops*, %struct.mdio_ops** %15, align 8
  store %struct.mdio_ops* %16, %struct.mdio_ops** %12, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @ELMR_LOCK(i32* %17)
  %19 = load %struct.mdio_ops*, %struct.mdio_ops** %12, align 8
  %20 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %19, i32 0, i32 0
  %21 = load i32 (i32*, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32)** %20, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @ELMR_MDIO_ADDR, align 4
  %24 = load i32, i32* @ELMR_ADDR, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 %21(i32* %22, i32 %23, i32 0, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %100

30:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 5
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load %struct.mdio_ops*, %struct.mdio_ops** %12, align 8
  %36 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %35, i32 0, i32 1
  %37 = load i32 (i32*, i32, i32, i32, i32*)*, i32 (i32*, i32, i32, i32, i32*)** %36, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @ELMR_MDIO_ADDR, align 4
  %40 = load i32, i32* @ELMR_STAT, align 4
  %41 = call i32 %37(i32* %38, i32 %39, i32 0, i32 %40, i32* %11)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %100

45:                                               ; preds = %34
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %54

49:                                               ; preds = %45
  %50 = call i32 @udelay(i32 5)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %31

54:                                               ; preds = %48, %31
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @ETIMEDOUT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %100

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %94, %60
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i1 [ false, %61 ], [ %66, %64 ]
  br i1 %68, label %69, label %99

69:                                               ; preds = %67
  %70 = load %struct.mdio_ops*, %struct.mdio_ops** %12, align 8
  %71 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %70, i32 0, i32 1
  %72 = load i32 (i32*, i32, i32, i32, i32*)*, i32 (i32*, i32, i32, i32, i32*)** %71, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @ELMR_MDIO_ADDR, align 4
  %75 = load i32, i32* @ELMR_DATA_LO, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 %72(i32* %73, i32 %74, i32 0, i32 %75, i32* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %69
  %81 = load %struct.mdio_ops*, %struct.mdio_ops** %12, align 8
  %82 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %81, i32 0, i32 1
  %83 = load i32 (i32*, i32, i32, i32, i32*)*, i32 (i32*, i32, i32, i32, i32*)** %82, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* @ELMR_MDIO_ADDR, align 4
  %86 = load i32, i32* @ELMR_DATA_HI, align 4
  %87 = call i32 %83(i32* %84, i32 %85, i32 0, i32 %86, i32* %11)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = shl i32 %88, 16
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %80, %69
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %8, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %7, align 8
  br label %61

99:                                               ; preds = %67
  br label %100

100:                                              ; preds = %99, %57, %44, %29
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @ELMR_UNLOCK(i32* %101)
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_2__* @adapter_info(i32*) #1

declare dso_local i32 @ELMR_LOCK(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ELMR_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
