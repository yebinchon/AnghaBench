; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%struct.ixgbe_dcb_config = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_RTTDCS = common dso_local global i32 0, align 4
@IXGBE_RTTDCS_ARBDIS = common dso_local global i32 0, align 4
@IXGBE_MRQC = common dso_local global i32 0, align 4
@IXGBE_MRQC_MRQE_MASK = common dso_local global i32 0, align 4
@IXGBE_MRQC_RT8TCEN = common dso_local global i32 0, align 4
@IXGBE_MRQC_RTRSS8TCEN = common dso_local global i32 0, align 4
@IXGBE_MRQC_VMDQRT4TCEN = common dso_local global i32 0, align 4
@IXGBE_MTQC_RT_ENA = common dso_local global i32 0, align 4
@IXGBE_MTQC_8TC_8TQ = common dso_local global i32 0, align 4
@IXGBE_MTQC_4TC_4TQ = common dso_local global i32 0, align 4
@IXGBE_MTQC_VT_ENA = common dso_local global i32 0, align 4
@IXGBE_MTQC = common dso_local global i32 0, align 4
@IXGBE_QDE = common dso_local global i32 0, align 4
@IXGBE_QDE_WRITE = common dso_local global i32 0, align 4
@IXGBE_QDE_IDX_SHIFT = common dso_local global i32 0, align 4
@IXGBE_SECTXMINIFG = common dso_local global i32 0, align 4
@IXGBE_SECTX_DCB = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_82599(%struct.ixgbe_hw* %0, %struct.ixgbe_dcb_config* %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_dcb_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store %struct.ixgbe_dcb_config* %1, %struct.ixgbe_dcb_config** %4, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = load i32, i32* @IXGBE_RTTDCS, align 4
  %9 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @IXGBE_RTTDCS_ARBDIS, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = load i32, i32* @IXGBE_RTTDCS, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %13, i32 %14, i32 %15)
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = load i32, i32* @IXGBE_MRQC, align 4
  %19 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %21 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %52

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IXGBE_MRQC_MRQE_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %43 [
    i32 0, label %29
    i32 129, label %29
    i32 130, label %36
    i32 128, label %36
  ]

29:                                               ; preds = %25, %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IXGBE_MRQC_MRQE_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* @IXGBE_MRQC_RT8TCEN, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %5, align 4
  br label %51

36:                                               ; preds = %25, %25
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @IXGBE_MRQC_MRQE_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* @IXGBE_MRQC_RTRSS8TCEN, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %5, align 4
  br label %51

43:                                               ; preds = %25
  %44 = call i32 @ASSERT(i32 0)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IXGBE_MRQC_MRQE_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = load i32, i32* @IXGBE_MRQC_RT8TCEN, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %43, %36, %29
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %54 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %60 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @IXGBE_MRQC_MRQE_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load i32, i32* @IXGBE_MRQC_VMDQRT4TCEN, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %5, align 4
  br label %76

70:                                               ; preds = %58
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @IXGBE_MRQC_MRQE_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = or i32 %74, 128
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %70, %63
  br label %77

77:                                               ; preds = %76, %52
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %79 = load i32, i32* @IXGBE_MRQC, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %78, i32 %79, i32 %80)
  %82 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %83 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 8
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load i32, i32* @IXGBE_MTQC_RT_ENA, align 4
  %89 = load i32, i32* @IXGBE_MTQC_8TC_8TQ, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %5, align 4
  br label %104

91:                                               ; preds = %77
  %92 = load i32, i32* @IXGBE_MTQC_RT_ENA, align 4
  %93 = load i32, i32* @IXGBE_MTQC_4TC_4TQ, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %5, align 4
  %95 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %96 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i32, i32* @IXGBE_MTQC_VT_ENA, align 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %91
  br label %104

104:                                              ; preds = %103, %87
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = load i32, i32* @IXGBE_MTQC, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %105, i32 %106, i32 %107)
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %121, %104
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 128
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %114 = load i32, i32* @IXGBE_QDE, align 4
  %115 = load i32, i32* @IXGBE_QDE_WRITE, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @IXGBE_QDE_IDX_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = or i32 %115, %118
  %120 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %113, i32 %114, i32 %119)
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %109

124:                                              ; preds = %109
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %126 = load i32, i32* @IXGBE_RTTDCS, align 4
  %127 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %125, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @IXGBE_RTTDCS_ARBDIS, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %5, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %133 = load i32, i32* @IXGBE_RTTDCS, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %132, i32 %133, i32 %134)
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %137 = load i32, i32* @IXGBE_SECTXMINIFG, align 4
  %138 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %136, i32 %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* @IXGBE_SECTX_DCB, align 4
  %140 = load i32, i32* %5, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %5, align 4
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %143 = load i32, i32* @IXGBE_SECTXMINIFG, align 4
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %142, i32 %143, i32 %144)
  %146 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %146
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
