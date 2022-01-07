; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_cim_read_la.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_cim_read_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@A_UP_UP_DBG_LA_CFG = common dso_local global i32 0, align 4
@F_UPDBGLAEN = common dso_local global i32 0, align 4
@F_UPDBGLARDEN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@A_UP_UP_DBG_LA_DATA = common dso_local global i32 0, align 4
@M_UPDBGLARDPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_cim_read_la(%struct.adapter* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.adapter*, %struct.adapter** %5, align 8
  %15 = load i32, i32* @A_UP_UP_DBG_LA_CFG, align 4
  %16 = call i32 @t4_cim_read(%struct.adapter* %14, i32 %15, i32 1, i32* %10)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %139

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @F_UPDBGLAEN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.adapter*, %struct.adapter** %5, align 8
  %28 = load i32, i32* @A_UP_UP_DBG_LA_CFG, align 4
  %29 = call i32 @t4_cim_write1(%struct.adapter* %27, i32 %28, i32 0)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %139

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = load i32, i32* @A_UP_UP_DBG_LA_CFG, align 4
  %38 = call i32 @t4_cim_read(%struct.adapter* %36, i32 %37, i32 1, i32* %11)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %119

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @G_UPDBGLAWRPTR(i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %42
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %115, %50
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.adapter*, %struct.adapter** %5, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %118

58:                                               ; preds = %51
  %59 = load %struct.adapter*, %struct.adapter** %5, align 8
  %60 = load i32, i32* @A_UP_UP_DBG_LA_CFG, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @V_UPDBGLARDPTR(i32 %61)
  %63 = load i32, i32* @F_UPDBGLARDEN, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @t4_cim_write1(%struct.adapter* %59, i32 %60, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %118

69:                                               ; preds = %58
  %70 = load %struct.adapter*, %struct.adapter** %5, align 8
  %71 = load i32, i32* @A_UP_UP_DBG_LA_CFG, align 4
  %72 = call i32 @t4_cim_read(%struct.adapter* %70, i32 %71, i32 1, i32* %11)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %118

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @F_UPDBGLARDEN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @ETIMEDOUT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  br label %118

84:                                               ; preds = %76
  %85 = load %struct.adapter*, %struct.adapter** %5, align 8
  %86 = load i32, i32* @A_UP_UP_DBG_LA_DATA, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @t4_cim_read(%struct.adapter* %85, i32 %86, i32 1, i32* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %118

95:                                               ; preds = %84
  %96 = load i32, i32* %12, align 4
  %97 = add i32 %96, 1
  %98 = load i32, i32* @M_UPDBGLARDPTR, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %12, align 4
  %100 = load %struct.adapter*, %struct.adapter** %5, align 8
  %101 = call i64 @is_t6(%struct.adapter* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %108, %103
  %105 = load i32, i32* %12, align 4
  %106 = and i32 %105, 15
  %107 = icmp ugt i32 %106, 9
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %109, 1
  %111 = load i32, i32* @M_UPDBGLARDPTR, align 4
  %112 = urem i32 %110, %111
  store i32 %112, i32* %12, align 4
  br label %104

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %95
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %51

118:                                              ; preds = %94, %81, %75, %68, %51
  br label %119

119:                                              ; preds = %118, %41
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @F_UPDBGLAEN, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %119
  %125 = load %struct.adapter*, %struct.adapter** %5, align 8
  %126 = load i32, i32* @A_UP_UP_DBG_LA_CFG, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @F_UPDBGLARDEN, align 4
  %129 = xor i32 %128, -1
  %130 = and i32 %127, %129
  %131 = call i32 @t4_cim_write1(%struct.adapter* %125, i32 %126, i32 %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %124
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %134, %124
  br label %137

137:                                              ; preds = %136, %119
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %32, %19
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @t4_cim_read(%struct.adapter*, i32, i32, i32*) #1

declare dso_local i32 @t4_cim_write1(%struct.adapter*, i32, i32) #1

declare dso_local i32 @G_UPDBGLAWRPTR(i32) #1

declare dso_local i32 @V_UPDBGLARDPTR(i32) #1

declare dso_local i64 @is_t6(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
