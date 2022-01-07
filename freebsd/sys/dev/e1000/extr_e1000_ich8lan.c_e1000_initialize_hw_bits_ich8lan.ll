; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_initialize_hw_bits_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_initialize_hw_bits_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"e1000_initialize_hw_bits_ich8lan\00", align 1
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@e1000_pchlan = common dso_local global i64 0, align 8
@E1000_CTRL_EXT_PHYPDEN = common dso_local global i32 0, align 4
@e1000_ich8lan = common dso_local global i64 0, align 8
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_MULR = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_RFCTL = common dso_local global i32 0, align 4
@E1000_RFCTL_NFSW_DIS = common dso_local global i32 0, align 4
@E1000_RFCTL_NFSR_DIS = common dso_local global i32 0, align 4
@E1000_RFCTL_IPV6_EX_DIS = common dso_local global i32 0, align 4
@E1000_RFCTL_NEW_IPV6_EXT_DIS = common dso_local global i32 0, align 4
@e1000_pch_lpt = common dso_local global i64 0, align 8
@E1000_PBECCSTS = common dso_local global i32 0, align 4
@E1000_PBECCSTS_ECC_ENABLE = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_MEHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_initialize_hw_bits_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_initialize_hw_bits_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = load i32, i32* @E1000_CTRL_EXT, align 4
  %7 = call i32 @E1000_READ_REG(%struct.e1000_hw* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, 4194304
  store i32 %9, i32* %3, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_pchlan, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @E1000_CTRL_EXT_PHYPDEN, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = load i32, i32* @E1000_CTRL_EXT, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %21, i32 %22, i32 %23)
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = call i32 @E1000_TXDCTL(i32 0)
  %27 = call i32 @E1000_READ_REG(%struct.e1000_hw* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, 4194304
  store i32 %29, i32* %3, align 4
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = call i32 @E1000_TXDCTL(i32 0)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %30, i32 %31, i32 %32)
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = call i32 @E1000_TXDCTL(i32 1)
  %36 = call i32 @E1000_READ_REG(%struct.e1000_hw* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, 4194304
  store i32 %38, i32* %3, align 4
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = call i32 @E1000_TXDCTL(i32 1)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %39, i32 %40, i32 %41)
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = call i32 @E1000_TARC(i32 0)
  %45 = call i32 @E1000_READ_REG(%struct.e1000_hw* %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @e1000_ich8lan, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %20
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, 805306368
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %20
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, 226492416
  store i32 %57, i32* %3, align 4
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = call i32 @E1000_TARC(i32 0)
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %58, i32 %59, i32 %60)
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = call i32 @E1000_TARC(i32 1)
  %64 = call i32 @E1000_READ_REG(%struct.e1000_hw* %62, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %66 = load i32, i32* @E1000_TCTL, align 4
  %67 = call i32 @E1000_READ_REG(%struct.e1000_hw* %65, i32 %66)
  %68 = load i32, i32* @E1000_TCTL_MULR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %55
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, -268435457
  store i32 %73, i32* %3, align 4
  br label %77

74:                                               ; preds = %55
  %75 = load i32, i32* %3, align 4
  %76 = or i32 %75, 268435456
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, 1157627904
  store i32 %79, i32* %3, align 4
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %81 = call i32 @E1000_TARC(i32 1)
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %80, i32 %81, i32 %82)
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @e1000_ich8lan, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %77
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %92 = load i32, i32* @E1000_STATUS, align 4
  %93 = call i32 @E1000_READ_REG(%struct.e1000_hw* %91, i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = and i32 %94, 2147483647
  store i32 %95, i32* %3, align 4
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %97 = load i32, i32* @E1000_STATUS, align 4
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %90, %77
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %102 = load i32, i32* @E1000_RFCTL, align 4
  %103 = call i32 @E1000_READ_REG(%struct.e1000_hw* %101, i32 %102)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* @E1000_RFCTL_NFSW_DIS, align 4
  %105 = load i32, i32* @E1000_RFCTL_NFSR_DIS, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %3, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %3, align 4
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %110 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @e1000_ich8lan, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %100
  %116 = load i32, i32* @E1000_RFCTL_IPV6_EX_DIS, align 4
  %117 = load i32, i32* @E1000_RFCTL_NEW_IPV6_EXT_DIS, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %3, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %115, %100
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %123 = load i32, i32* @E1000_RFCTL, align 4
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %122, i32 %123, i32 %124)
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %127 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @e1000_pch_lpt, align 8
  %131 = icmp sge i64 %129, %130
  br i1 %131, label %132, label %153

132:                                              ; preds = %121
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %134 = load i32, i32* @E1000_PBECCSTS, align 4
  %135 = call i32 @E1000_READ_REG(%struct.e1000_hw* %133, i32 %134)
  store i32 %135, i32* %3, align 4
  %136 = load i32, i32* @E1000_PBECCSTS_ECC_ENABLE, align 4
  %137 = load i32, i32* %3, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %3, align 4
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %140 = load i32, i32* @E1000_PBECCSTS, align 4
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %139, i32 %140, i32 %141)
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %144 = load i32, i32* @E1000_CTRL, align 4
  %145 = call i32 @E1000_READ_REG(%struct.e1000_hw* %143, i32 %144)
  store i32 %145, i32* %3, align 4
  %146 = load i32, i32* @E1000_CTRL_MEHE, align 4
  %147 = load i32, i32* %3, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %3, align 4
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %150 = load i32, i32* @E1000_CTRL, align 4
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %132, %121
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_TXDCTL(i32) #1

declare dso_local i32 @E1000_TARC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
