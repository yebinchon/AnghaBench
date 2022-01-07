; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_is_phy_mask_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_is_phy_mask_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_sds_port_is_phy_mask_valid(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %18, %14, %10
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %3, align 4
  br label %82

27:                                               ; preds = %22
  br label %80

28:                                               ; preds = %2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %33
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %3, align 4
  br label %82

42:                                               ; preds = %37
  br label %79

43:                                               ; preds = %28
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 12
  %51 = icmp eq i32 %50, 12
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %52, %48
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %3, align 4
  br label %82

61:                                               ; preds = %56
  br label %78

62:                                               ; preds = %43
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %67
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %3, align 4
  br label %82

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %62
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %42
  br label %80

80:                                               ; preds = %79, %27
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %74, %59, %40, %25
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
