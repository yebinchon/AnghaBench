; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_port_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.port_info = type { i32, i32, i32, i32, i32, %struct.vi_info* }
%struct.vi_info = type { i32, i32, i32, i32, i32 }

@IS_VF = common dso_local global i32 0, align 4
@FW_CMD_CAP_PORT = common dso_local global i32 0, align 4
@FW_PARAMS_MNEM_DEV = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_RSSINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_port_init(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.port_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vi_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.adapter*, %struct.adapter** %7, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.port_info* @adap2pinfo(%struct.adapter* %20, i32 %21)
  store %struct.port_info* %22, %struct.port_info** %16, align 8
  %23 = load %struct.port_info*, %struct.port_info** %16, align 8
  %24 = getelementptr inbounds %struct.port_info, %struct.port_info* %23, i32 0, i32 5
  %25 = load %struct.vi_info*, %struct.vi_info** %24, align 8
  %26 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %25, i64 0
  store %struct.vi_info* %26, %struct.vi_info** %19, align 8
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  br label %27

27:                                               ; preds = %47, %5
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.port_info*, %struct.port_info** %16, align 8
  %30 = getelementptr inbounds %struct.port_info, %struct.port_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sle i32 %28, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %37, %33
  %35 = load i32, i32* %15, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load %struct.adapter*, %struct.adapter** %7, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %15, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %34, label %46

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.port_info*, %struct.port_info** %16, align 8
  %53 = getelementptr inbounds %struct.port_info, %struct.port_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.adapter*, %struct.adapter** %7, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @t4_get_mps_bg_map(%struct.adapter* %54, i32 %55)
  %57 = load %struct.port_info*, %struct.port_info** %16, align 8
  %58 = getelementptr inbounds %struct.port_info, %struct.port_info* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.adapter*, %struct.adapter** %7, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @t4_get_rx_e_chan_map(%struct.adapter* %59, i32 %60)
  %62 = load %struct.port_info*, %struct.port_info** %16, align 8
  %63 = getelementptr inbounds %struct.port_info, %struct.port_info* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.port_info*, %struct.port_info** %16, align 8
  %66 = getelementptr inbounds %struct.port_info, %struct.port_info* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.adapter*, %struct.adapter** %7, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IS_VF, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %50
  %74 = load %struct.adapter*, %struct.adapter** %7, align 8
  %75 = getelementptr inbounds %struct.adapter, %struct.adapter* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FW_CMD_CAP_PORT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73, %50
  %83 = load %struct.port_info*, %struct.port_info** %16, align 8
  %84 = call i32 @t4_update_port_info(%struct.port_info* %83)
  br label %85

85:                                               ; preds = %82, %73
  %86 = load %struct.adapter*, %struct.adapter** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %92 = load %struct.vi_info*, %struct.vi_info** %19, align 8
  %93 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %92, i32 0, i32 4
  %94 = load %struct.vi_info*, %struct.vi_info** %19, align 8
  %95 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %94, i32 0, i32 3
  %96 = load %struct.vi_info*, %struct.vi_info** %19, align 8
  %97 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %96, i32 0, i32 2
  %98 = call i32 @t4_alloc_vi(%struct.adapter* %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 1, i32* %91, i32* %93, i32* %95, i32* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %85
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %6, align 4
  br label %136

103:                                              ; preds = %85
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.vi_info*, %struct.vi_info** %19, align 8
  %106 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.port_info*, %struct.port_info** %16, align 8
  %108 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %109 = call i32 @t4_os_set_hw_addr(%struct.port_info* %107, i32* %108)
  %110 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %111 = call i32 @V_FW_PARAMS_MNEM(i32 %110)
  %112 = load i32, i32* @FW_PARAMS_PARAM_DEV_RSSINFO, align 4
  %113 = call i32 @V_FW_PARAMS_PARAM_X(i32 %112)
  %114 = or i32 %111, %113
  %115 = load %struct.vi_info*, %struct.vi_info** %19, align 8
  %116 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @V_FW_PARAMS_PARAM_YZ(i32 %117)
  %119 = or i32 %114, %118
  store i32 %119, i32* %17, align 4
  %120 = load %struct.adapter*, %struct.adapter** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @t4_query_params(%struct.adapter* %120, i32 %121, i32 %122, i32 %123, i32 1, i32* %17, i32* %18)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %103
  %128 = load %struct.vi_info*, %struct.vi_info** %19, align 8
  %129 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %128, i32 0, i32 1
  store i32 65535, i32* %129, align 4
  br label %135

130:                                              ; preds = %103
  %131 = load i32, i32* %18, align 4
  %132 = and i32 %131, 65535
  %133 = load %struct.vi_info*, %struct.vi_info** %19, align 8
  %134 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %127
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %135, %101
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local %struct.port_info* @adap2pinfo(%struct.adapter*, i32) #1

declare dso_local i32 @t4_get_mps_bg_map(%struct.adapter*, i32) #1

declare dso_local i32 @t4_get_rx_e_chan_map(%struct.adapter*, i32) #1

declare dso_local i32 @t4_update_port_info(%struct.port_info*) #1

declare dso_local i32 @t4_alloc_vi(%struct.adapter*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @t4_os_set_hw_addr(%struct.port_info*, i32*) #1

declare dso_local i32 @V_FW_PARAMS_MNEM(i32) #1

declare dso_local i32 @V_FW_PARAMS_PARAM_X(i32) #1

declare dso_local i32 @V_FW_PARAMS_PARAM_YZ(i32) #1

declare dso_local i32 @t4_query_params(%struct.adapter*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
