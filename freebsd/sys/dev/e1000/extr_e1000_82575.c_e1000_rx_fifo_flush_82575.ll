; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_rx_fifo_flush_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_rx_fifo_flush_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"e1000_rx_fifo_flush_82575\00", align 1
@E1000_RFCTL = common dso_local global i32 0, align 4
@E1000_RFCTL_IPV6_EX_DIS = common dso_local global i32 0, align 4
@e1000_82575 = common dso_local global i64 0, align 8
@E1000_MANC = common dso_local global i32 0, align 4
@E1000_MANC_RCV_TCO_EN = common dso_local global i32 0, align 4
@E1000_RXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Queue disable timed out after 10ms\0A\00", align 1
@E1000_RFCTL_LEF = common dso_local global i32 0, align 4
@E1000_RLPML = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@E1000_RCTL_LPE = common dso_local global i32 0, align 4
@E1000_ROC = common dso_local global i32 0, align 4
@E1000_RNBC = common dso_local global i32 0, align 4
@E1000_MPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_rx_fifo_flush_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = load i32, i32* @E1000_RFCTL, align 4
  %14 = call i32 @E1000_READ_REG(%struct.e1000_hw* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @E1000_RFCTL_IPV6_EX_DIS, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = load i32, i32* @E1000_RFCTL, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %18, i32 %19, i32 %20)
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @e1000_82575, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = load i32, i32* @E1000_MANC, align 4
  %31 = call i32 @E1000_READ_REG(%struct.e1000_hw* %29, i32 %30)
  %32 = load i32, i32* @E1000_MANC_RCV_TCO_EN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28, %1
  br label %174

36:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @E1000_RXDCTL(i32 %42)
  %44 = call i32 @E1000_READ_REG(%struct.e1000_hw* %41, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %46
  store i32 %44, i32* %47, align 4
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @E1000_RXDCTL(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @E1000_RXDCTL_QUEUE_ENABLE, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %48, i32 %50, i32 %57)
  br label %59

59:                                               ; preds = %40
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %37

62:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %88, %62
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 10
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  %67 = call i32 @msec_delay(i32 1)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %78, %66
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @E1000_RXDCTL(i32 %73)
  %75 = call i32 @E1000_READ_REG(%struct.e1000_hw* %72, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %68

81:                                               ; preds = %68
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @E1000_RXDCTL_QUEUE_ENABLE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %91

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %63

91:                                               ; preds = %86, %63
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 10
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %98 = load i32, i32* @E1000_RFCTL, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @E1000_RFCTL_LEF, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %97, i32 %98, i32 %102)
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %105 = load i32, i32* @E1000_RLPML, align 4
  %106 = call i32 @E1000_READ_REG(%struct.e1000_hw* %104, i32 %105)
  store i32 %106, i32* %4, align 4
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %108 = load i32, i32* @E1000_RLPML, align 4
  %109 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %107, i32 %108, i32 0)
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %111 = load i32, i32* @E1000_RCTL, align 4
  %112 = call i32 @E1000_READ_REG(%struct.e1000_hw* %110, i32 %111)
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @E1000_RCTL_EN, align 4
  %115 = load i32, i32* @E1000_RCTL_SBP, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = and i32 %113, %117
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* @E1000_RCTL_LPE, align 4
  %120 = load i32, i32* %7, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %7, align 4
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %123 = load i32, i32* @E1000_RCTL, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %122, i32 %123, i32 %124)
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %127 = load i32, i32* @E1000_RCTL, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @E1000_RCTL_EN, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %126, i32 %127, i32 %130)
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %133 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %132)
  %134 = call i32 @msec_delay(i32 2)
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %147, %96
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %136, 4
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @E1000_RXDCTL(i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %139, i32 %141, i32 %145)
  br label %147

147:                                              ; preds = %138
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %135

150:                                              ; preds = %135
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %152 = load i32, i32* @E1000_RCTL, align 4
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %151, i32 %152, i32 %153)
  %155 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %156 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %155)
  %157 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %158 = load i32, i32* @E1000_RLPML, align 4
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %157, i32 %158, i32 %159)
  %161 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %162 = load i32, i32* @E1000_RFCTL, align 4
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %161, i32 %162, i32 %163)
  %165 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %166 = load i32, i32* @E1000_ROC, align 4
  %167 = call i32 @E1000_READ_REG(%struct.e1000_hw* %165, i32 %166)
  %168 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %169 = load i32, i32* @E1000_RNBC, align 4
  %170 = call i32 @E1000_READ_REG(%struct.e1000_hw* %168, i32 %169)
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %172 = load i32, i32* @E1000_MPC, align 4
  %173 = call i32 @E1000_READ_REG(%struct.e1000_hw* %171, i32 %172)
  br label %174

174:                                              ; preds = %150, %35
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_RXDCTL(i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
