; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_setup_mac_link_multispeed_fiber.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_setup_mac_link_multispeed_fiber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ixgbe_setup_mac_link_multispeed_fiber\00", align 1
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unexpected media type.\0A\00", align 1
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_setup_mac_link_multispeed_fiber(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %14, align 4
  %19 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = call i64 @ixgbe_get_link_capabilities(%struct.ixgbe_hw* %20, i32* %8, i32* %13)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @IXGBE_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %4, align 8
  br label %177

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %48 [
    i32 129, label %43
    i32 130, label %43
    i32 128, label %47
  ]

43:                                               ; preds = %35, %35
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %45 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %46 = call i32 @ixgbe_set_rate_select_speed(%struct.ixgbe_hw* %44, i32 %45)
  br label %50

47:                                               ; preds = %35
  br label %50

48:                                               ; preds = %35
  %49 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %47, %43
  %51 = call i32 @msec_delay(i32 40)
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %53 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @ixgbe_setup_mac_link(%struct.ixgbe_hw* %52, i32 %53, i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @IXGBE_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i64, i64* %10, align 8
  store i64 %60, i64* %4, align 8
  br label %177

61:                                               ; preds = %50
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %63 = call i32 @ixgbe_flap_tx_laser(%struct.ixgbe_hw* %62)
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %82, %61
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 5
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = call i32 @msec_delay(i32 100)
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i64 @ixgbe_check_link(%struct.ixgbe_hw* %69, i32* %8, i32* %14, i32 %70)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @IXGBE_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %4, align 8
  br label %177

77:                                               ; preds = %67
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %148

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %64

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85, %27
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %139

91:                                               ; preds = %86
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %91
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %101 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %109 [
    i32 129, label %104
    i32 130, label %104
    i32 128, label %108
  ]

104:                                              ; preds = %99, %99
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %106 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %107 = call i32 @ixgbe_set_rate_select_speed(%struct.ixgbe_hw* %105, i32 %106)
  br label %111

108:                                              ; preds = %99
  br label %111

109:                                              ; preds = %99
  %110 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %108, %104
  %112 = call i32 @msec_delay(i32 40)
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %114 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i64 @ixgbe_setup_mac_link(%struct.ixgbe_hw* %113, i32 %114, i32 %115)
  store i64 %116, i64* %10, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @IXGBE_SUCCESS, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i64, i64* %10, align 8
  store i64 %121, i64* %4, align 8
  br label %177

122:                                              ; preds = %111
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %124 = call i32 @ixgbe_flap_tx_laser(%struct.ixgbe_hw* %123)
  %125 = call i32 @msec_delay(i32 100)
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %127 = load i32, i32* @FALSE, align 4
  %128 = call i64 @ixgbe_check_link(%struct.ixgbe_hw* %126, i32* %8, i32* %14, i32 %127)
  store i64 %128, i64* %10, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* @IXGBE_SUCCESS, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i64, i64* %10, align 8
  store i64 %133, i64* %4, align 8
  br label %177

134:                                              ; preds = %122
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %148

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138, %86
  %140 = load i32, i32* %11, align 4
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i64 @ixgbe_setup_mac_link_multispeed_fiber(%struct.ixgbe_hw* %143, i32 %144, i32 %145)
  store i64 %146, i64* %10, align 8
  br label %147

147:                                              ; preds = %142, %139
  br label %148

148:                                              ; preds = %147, %137, %80
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %150 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %148
  %157 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %158 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %159 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %157
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %156, %148
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %170 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %171 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %169
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %168, %163
  %176 = load i64, i64* %10, align 8
  store i64 %176, i64* %4, align 8
  br label %177

177:                                              ; preds = %175, %132, %120, %75, %59, %25
  %178 = load i64, i64* %4, align 8
  ret i64 %178
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_get_link_capabilities(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i32 @ixgbe_set_rate_select_speed(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @ixgbe_setup_mac_link(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_flap_tx_laser(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_check_link(%struct.ixgbe_hw*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
