; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_bar2_sge_qregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_bar2_sge_qregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@T4_BAR2_QTYPE_EGRESS = common dso_local global i32 0, align 4
@SGE_UDB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_bar2_sge_qregs(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %6
  %26 = load %struct.adapter*, %struct.adapter** %8, align 8
  %27 = call i64 @is_t4(%struct.adapter* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %87

32:                                               ; preds = %25, %6
  %33 = load %struct.adapter*, %struct.adapter** %8, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = shl i32 1, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @T4_BAR2_QTYPE_EGRESS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load %struct.adapter*, %struct.adapter** %8, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %55

49:                                               ; preds = %32
  %50 = load %struct.adapter*, %struct.adapter** %8, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %49, %43
  %56 = phi i32 [ %48, %43 ], [ %54, %49 ]
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = shl i32 1, %57
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %16, align 4
  %62 = lshr i32 %60, %61
  %63 = load i32, i32* %14, align 4
  %64 = shl i32 %62, %63
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %17, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* @SGE_UDB_SIZE, align 4
  %70 = mul i32 %68, %69
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %18, align 4
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ult i32 %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %22, align 4
  %76 = load i32, i32* %22, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %55
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %19, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %82

82:                                               ; preds = %78, %55
  %83 = load i32, i32* %19, align 4
  %84 = load i32*, i32** %12, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32*, i32** %13, align 8
  store i32 %85, i32* %86, align 4
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %82, %29
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i64 @is_t4(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
