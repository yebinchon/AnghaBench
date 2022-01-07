; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_initialize_hw_bits_82571.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_initialize_hw_bits_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"e1000_initialize_hw_bits_82571\00", align 1
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_MULR = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_PBA_ECC = common dso_local global i32 0, align 4
@E1000_PBA_ECC_CORR_EN = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_DMA_DYN_CLK_EN = common dso_local global i32 0, align 4
@E1000_RFCTL = common dso_local global i32 0, align 4
@E1000_RFCTL_IPV6_EX_DIS = common dso_local global i32 0, align 4
@E1000_RFCTL_NEW_IPV6_EXT_DIS = common dso_local global i32 0, align 4
@E1000_GCR = common dso_local global i32 0, align 4
@E1000_GCR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_initialize_hw_bits_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_initialize_hw_bits_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = call i32 @E1000_TXDCTL(i32 0)
  %7 = call i32 @E1000_READ_REG(%struct.e1000_hw* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, 4194304
  store i32 %9, i32* %3, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = call i32 @E1000_TXDCTL(i32 0)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %10, i32 %11, i32 %12)
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = call i32 @E1000_TXDCTL(i32 1)
  %16 = call i32 @E1000_READ_REG(%struct.e1000_hw* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 4194304
  store i32 %18, i32* %3, align 4
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = call i32 @E1000_TXDCTL(i32 1)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %19, i32 %20, i32 %21)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = call i32 @E1000_TARC(i32 0)
  %25 = call i32 @E1000_READ_REG(%struct.e1000_hw* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, -2013265921
  store i32 %27, i32* %3, align 4
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %38 [
    i32 132, label %32
    i32 131, label %32
    i32 129, label %35
    i32 128, label %35
  ]

32:                                               ; preds = %1, %1
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, 125829120
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %1, %1
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, 67108864
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %38, %35, %32
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %41 = call i32 @E1000_TARC(i32 0)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %40, i32 %41, i32 %42)
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = call i32 @E1000_TARC(i32 1)
  %46 = call i32 @E1000_READ_REG(%struct.e1000_hw* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %73 [
    i32 132, label %51
    i32 131, label %51
  ]

51:                                               ; preds = %39, %39
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, -1610612737
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, 121634816
  store i32 %55, i32* %3, align 4
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = load i32, i32* @E1000_TCTL, align 4
  %58 = call i32 @E1000_READ_REG(%struct.e1000_hw* %56, i32 %57)
  %59 = load i32, i32* @E1000_TCTL_MULR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, -268435457
  store i32 %64, i32* %3, align 4
  br label %68

65:                                               ; preds = %51
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, 268435456
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = call i32 @E1000_TARC(i32 1)
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %69, i32 %70, i32 %71)
  br label %74

73:                                               ; preds = %39
  br label %74

74:                                               ; preds = %73, %68
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %89 [
    i32 130, label %79
    i32 129, label %79
    i32 128, label %79
  ]

79:                                               ; preds = %74, %74, %74
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %81 = load i32, i32* @E1000_CTRL, align 4
  %82 = call i32 @E1000_READ_REG(%struct.e1000_hw* %80, i32 %81)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, -536870913
  store i32 %84, i32* %3, align 4
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %86 = load i32, i32* @E1000_CTRL, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %85, i32 %86, i32 %87)
  br label %90

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %79
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %92 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %107 [
    i32 130, label %95
    i32 129, label %95
    i32 128, label %95
  ]

95:                                               ; preds = %90, %90, %90
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %97 = load i32, i32* @E1000_CTRL_EXT, align 4
  %98 = call i32 @E1000_READ_REG(%struct.e1000_hw* %96, i32 %97)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = and i32 %99, -8388609
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, 4194304
  store i32 %102, i32* %3, align 4
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %104 = load i32, i32* @E1000_CTRL_EXT, align 4
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %103, i32 %104, i32 %105)
  br label %108

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %95
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %110 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 132
  br i1 %113, label %114, label %125

114:                                              ; preds = %108
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %116 = load i32, i32* @E1000_PBA_ECC, align 4
  %117 = call i32 @E1000_READ_REG(%struct.e1000_hw* %115, i32 %116)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* @E1000_PBA_ECC_CORR_EN, align 4
  %119 = load i32, i32* %3, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %3, align 4
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %122 = load i32, i32* @E1000_PBA_ECC, align 4
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %114, %108
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %127 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 132
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %133 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 131
  br i1 %136, label %137, label %149

137:                                              ; preds = %131, %125
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %139 = load i32, i32* @E1000_CTRL_EXT, align 4
  %140 = call i32 @E1000_READ_REG(%struct.e1000_hw* %138, i32 %139)
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* @E1000_CTRL_EXT_DMA_DYN_CLK_EN, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %3, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %3, align 4
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %146 = load i32, i32* @E1000_CTRL_EXT, align 4
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %137, %131
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %151 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp sle i32 %153, 130
  br i1 %154, label %155, label %168

155:                                              ; preds = %149
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %157 = load i32, i32* @E1000_RFCTL, align 4
  %158 = call i32 @E1000_READ_REG(%struct.e1000_hw* %156, i32 %157)
  store i32 %158, i32* %3, align 4
  %159 = load i32, i32* @E1000_RFCTL_IPV6_EX_DIS, align 4
  %160 = load i32, i32* @E1000_RFCTL_NEW_IPV6_EXT_DIS, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* %3, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %3, align 4
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %165 = load i32, i32* @E1000_RFCTL, align 4
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %155, %149
  %169 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %170 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  switch i32 %172, label %192 [
    i32 129, label %173
    i32 128, label %173
  ]

173:                                              ; preds = %168, %168
  %174 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %175 = load i32, i32* @E1000_GCR, align 4
  %176 = call i32 @E1000_READ_REG(%struct.e1000_hw* %174, i32 %175)
  store i32 %176, i32* %3, align 4
  %177 = load i32, i32* %3, align 4
  %178 = or i32 %177, 4194304
  store i32 %178, i32* %3, align 4
  %179 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %180 = load i32, i32* @E1000_GCR, align 4
  %181 = load i32, i32* %3, align 4
  %182 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %179, i32 %180, i32 %181)
  %183 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %184 = load i32, i32* @E1000_GCR2, align 4
  %185 = call i32 @E1000_READ_REG(%struct.e1000_hw* %183, i32 %184)
  store i32 %185, i32* %3, align 4
  %186 = load i32, i32* %3, align 4
  %187 = or i32 %186, 1
  store i32 %187, i32* %3, align 4
  %188 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %189 = load i32, i32* @E1000_GCR2, align 4
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %188, i32 %189, i32 %190)
  br label %193

192:                                              ; preds = %168
  br label %193

193:                                              ; preds = %192, %173
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_TXDCTL(i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_TARC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
