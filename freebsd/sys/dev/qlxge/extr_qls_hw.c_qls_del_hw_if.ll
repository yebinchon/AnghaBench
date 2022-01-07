; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_hw.c_qls_del_hw_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_hw.c_qls_del_hw_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@Q81_CTL_INTRE_IHD = common dso_local global i32 0, align 4
@Q81_CTL_INTRE_MASK_SHIFT = common dso_local global i32 0, align 4
@Q81_CTL_INTR_ENABLE = common dso_local global i32 0, align 4
@Q81_CTL_INTRE_EI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qls_del_hw_if(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = call i32 @qls_hw_reset(%struct.TYPE_8__* %10)
  br label %72

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %22, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @Q81_SET_WQ_INVALID(i32 %20)
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %13

25:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %35, %25
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @Q81_SET_CQ_INVALID(i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %26

38:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @Q81_DISABLE_INTR(%struct.TYPE_8__* %46, i32 %47)
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %39

52:                                               ; preds = %39
  %53 = load i32, i32* @Q81_CTL_INTRE_IHD, align 4
  %54 = load i32, i32* @Q81_CTL_INTRE_MASK_SHIFT, align 4
  %55 = shl i32 %53, %54
  store i32 %55, i32* %3, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = load i32, i32* @Q81_CTL_INTR_ENABLE, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @WRITE_REG32(%struct.TYPE_8__* %56, i32 %57, i32 %58)
  %60 = load i32, i32* @Q81_CTL_INTRE_EI, align 4
  %61 = load i32, i32* @Q81_CTL_INTRE_MASK_SHIFT, align 4
  %62 = shl i32 %60, %61
  store i32 %62, i32* %3, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = load i32, i32* @Q81_CTL_INTR_ENABLE, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @WRITE_REG32(%struct.TYPE_8__* %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = call i32 @qls_hw_reset(%struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %52, %9
  ret void
}

declare dso_local i32 @qls_hw_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @Q81_SET_WQ_INVALID(i32) #1

declare dso_local i32 @Q81_SET_CQ_INVALID(i32) #1

declare dso_local i32 @Q81_DISABLE_INTR(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @WRITE_REG32(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
