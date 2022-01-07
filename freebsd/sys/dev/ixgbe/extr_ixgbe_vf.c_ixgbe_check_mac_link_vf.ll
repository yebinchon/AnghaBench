; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_check_mac_link_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_check_mac_link_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mac_info, %struct.ixgbe_mbx_info }
%struct.ixgbe_mac_info = type { i64, i64 }
%struct.ixgbe_mbx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.ixgbe_hw.0*, i32*, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@IXGBE_VFLINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_UP = common dso_local global i32 0, align 4
@ixgbe_mac_82599_vf = common dso_local global i64 0, align 8
@IXGBE_LINKS_SPEED_82599 = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@IXGBE_LINKS_SPEED_NON_STD = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_2_5GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_5GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10_FULL = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_check_mac_link_vf(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_mbx_info*, align 8
  %10 = alloca %struct.ixgbe_mac_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 1
  store %struct.ixgbe_mbx_info* %16, %struct.ixgbe_mbx_info** %9, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  store %struct.ixgbe_mac_info* %18, %struct.ixgbe_mac_info** %10, align 8
  %19 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @UNREFERENCED_1PARAMETER(i32 %20)
  %22 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %23 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %24, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = bitcast %struct.ixgbe_hw* %26 to %struct.ixgbe_hw.1*
  %28 = call i32 %25(%struct.ixgbe_hw.1* %27, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %32 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30, %4
  %36 = load i64, i64* @TRUE, align 8
  %37 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %38 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %41 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %172

45:                                               ; preds = %39
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %47 = load i32, i32* @IXGBE_VFLINKS, align 4
  %48 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @IXGBE_LINKS_UP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %172

54:                                               ; preds = %45
  %55 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %56 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ixgbe_mac_82599_vf, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %54
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %75, %60
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 5
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = call i32 @usec_delay(i32 100)
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %67 = load i32, i32* @IXGBE_VFLINKS, align 4
  %68 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @IXGBE_LINKS_UP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %172

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %61

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @IXGBE_LINKS_SPEED_82599, align 4
  %82 = and i32 %80, %81
  switch i32 %82, label %137 [
    i32 130, label %83
    i32 128, label %102
    i32 131, label %105
    i32 129, label %124
  ]

83:                                               ; preds = %79
  %84 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ixgbe_mac_X550, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %83
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @IXGBE_LINKS_SPEED_NON_STD, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @IXGBE_LINK_SPEED_2_5GB_FULL, align 4
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %92
  br label %101

101:                                              ; preds = %100, %83
  br label %140

102:                                              ; preds = %79
  %103 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %104 = load i32*, i32** %6, align 8
  store i32 %103, i32* %104, align 4
  br label %140

105:                                              ; preds = %79
  %106 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %107 = load i32*, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %109 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ixgbe_mac_X550, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %105
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @IXGBE_LINKS_SPEED_NON_STD, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* @IXGBE_LINK_SPEED_5GB_FULL, align 4
  %121 = load i32*, i32** %6, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %114
  br label %123

123:                                              ; preds = %122, %105
  br label %140

124:                                              ; preds = %79
  %125 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %126 = load i32*, i32** %6, align 8
  store i32 %125, i32* %126, align 4
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %128 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ixgbe_mac_X550, align 8
  %132 = icmp sge i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load i32, i32* @IXGBE_LINK_SPEED_10_FULL, align 4
  %135 = load i32*, i32** %6, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %124
  br label %140

137:                                              ; preds = %79
  %138 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %139 = load i32*, i32** %6, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %136, %123, %102, %101
  %141 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %142 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64 (%struct.ixgbe_hw.0*, i32*, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32*, i32, i32)** %143, align 8
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %146 = bitcast %struct.ixgbe_hw* %145 to %struct.ixgbe_hw.0*
  %147 = call i64 %144(%struct.ixgbe_hw.0* %146, i32* %13, i32 1, i32 0)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  br label %172

150:                                              ; preds = %140
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i32 -1, i32* %11, align 4
  br label %161

161:                                              ; preds = %160, %155
  br label %172

162:                                              ; preds = %150
  %163 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %164 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %162
  store i32 -1, i32* %11, align 4
  br label %172

168:                                              ; preds = %162
  %169 = load i64, i64* @FALSE, align 8
  %170 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %171 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %168, %167, %161, %149, %73, %53, %44
  %173 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %174 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = load i32*, i32** %7, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* %11, align 4
  ret i32 %180
}

declare dso_local i32 @UNREFERENCED_1PARAMETER(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
