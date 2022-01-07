; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_fixup_link_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_fixup_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { %struct.link_config }
%struct.link_config = type { i64, i32, i64, i32, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@AUTONEG_AUTO = common dso_local global i64 0, align 8
@FW_PORT_CAP32_ANEG = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@FW_PORT_CAP32_FC_TX = common dso_local global i32 0, align 4
@FW_PORT_CAP32_FC_RX = common dso_local global i32 0, align 4
@FW_PORT_CAP32_FORCE_PAUSE = common dso_local global i32 0, align 4
@FEC_RS = common dso_local global i32 0, align 4
@FW_PORT_CAP32_FEC_RS = common dso_local global i32 0, align 4
@FEC_BASER_RS = common dso_local global i32 0, align 4
@FW_PORT_CAP32_FEC_BASER_RS = common dso_local global i32 0, align 4
@FEC_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_info*)* @fixup_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_link_config(%struct.port_info* %0) #0 {
  %2 = alloca %struct.port_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.link_config*, align 8
  %5 = alloca i32, align 4
  store %struct.port_info* %0, %struct.port_info** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.port_info*, %struct.port_info** %2, align 8
  %7 = getelementptr inbounds %struct.port_info, %struct.port_info* %6, i32 0, i32 0
  store %struct.link_config* %7, %struct.link_config** %4, align 8
  %8 = load %struct.port_info*, %struct.port_info** %2, align 8
  %9 = call i32 @PORT_LOCK_ASSERT_OWNED(%struct.port_info* %8)
  %10 = load %struct.link_config*, %struct.link_config** %4, align 8
  %11 = getelementptr inbounds %struct.link_config, %struct.link_config* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.link_config*, %struct.link_config** %4, align 8
  %16 = getelementptr inbounds %struct.link_config, %struct.link_config* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @speed_to_fwcap(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.link_config*, %struct.link_config** %4, align 8
  %21 = getelementptr inbounds %struct.link_config, %struct.link_config* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  %28 = load %struct.link_config*, %struct.link_config** %4, align 8
  %29 = getelementptr inbounds %struct.link_config, %struct.link_config* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %25, %14
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.link_config*, %struct.link_config** %4, align 8
  %33 = getelementptr inbounds %struct.link_config, %struct.link_config* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AUTONEG_ENABLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load %struct.link_config*, %struct.link_config** %4, align 8
  %39 = getelementptr inbounds %struct.link_config, %struct.link_config* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AUTONEG_DISABLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.link_config*, %struct.link_config** %4, align 8
  %45 = getelementptr inbounds %struct.link_config, %struct.link_config* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AUTONEG_AUTO, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %43, %37, %31
  %50 = phi i1 [ true, %37 ], [ true, %31 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @MPASS(i32 %51)
  %53 = load %struct.link_config*, %struct.link_config** %4, align 8
  %54 = getelementptr inbounds %struct.link_config, %struct.link_config* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AUTONEG_ENABLE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %49
  %59 = load %struct.link_config*, %struct.link_config** %4, align 8
  %60 = getelementptr inbounds %struct.link_config, %struct.link_config* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  %68 = load i64, i64* @AUTONEG_AUTO, align 8
  %69 = load %struct.link_config*, %struct.link_config** %4, align 8
  %70 = getelementptr inbounds %struct.link_config, %struct.link_config* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %65, %58, %49
  %72 = load %struct.link_config*, %struct.link_config** %4, align 8
  %73 = getelementptr inbounds %struct.link_config, %struct.link_config* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PAUSE_TX, align 4
  %76 = load i32, i32* @PAUSE_RX, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @PAUSE_AUTONEG, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = and i32 %74, %80
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @MPASS(i32 %83)
  %85 = load %struct.link_config*, %struct.link_config** %4, align 8
  %86 = getelementptr inbounds %struct.link_config, %struct.link_config* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PAUSE_TX, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %71
  %92 = load %struct.link_config*, %struct.link_config** %4, align 8
  %93 = getelementptr inbounds %struct.link_config, %struct.link_config* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FW_PORT_CAP32_FC_TX, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* @PAUSE_TX, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.link_config*, %struct.link_config** %4, align 8
  %104 = getelementptr inbounds %struct.link_config, %struct.link_config* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %98, %91, %71
  %108 = load %struct.link_config*, %struct.link_config** %4, align 8
  %109 = getelementptr inbounds %struct.link_config, %struct.link_config* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @PAUSE_RX, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %107
  %115 = load %struct.link_config*, %struct.link_config** %4, align 8
  %116 = getelementptr inbounds %struct.link_config, %struct.link_config* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @FW_PORT_CAP32_FC_RX, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* @PAUSE_RX, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.link_config*, %struct.link_config** %4, align 8
  %127 = getelementptr inbounds %struct.link_config, %struct.link_config* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %121, %114, %107
  %131 = load %struct.link_config*, %struct.link_config** %4, align 8
  %132 = getelementptr inbounds %struct.link_config, %struct.link_config* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PAUSE_AUTONEG, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %152, label %137

137:                                              ; preds = %130
  %138 = load %struct.link_config*, %struct.link_config** %4, align 8
  %139 = getelementptr inbounds %struct.link_config, %struct.link_config* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @FW_PORT_CAP32_FORCE_PAUSE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %137
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  %147 = load i32, i32* @PAUSE_AUTONEG, align 4
  %148 = load %struct.link_config*, %struct.link_config** %4, align 8
  %149 = getelementptr inbounds %struct.link_config, %struct.link_config* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %144, %137, %130
  %153 = load %struct.link_config*, %struct.link_config** %4, align 8
  %154 = getelementptr inbounds %struct.link_config, %struct.link_config* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @FEC_RS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %152
  %160 = load %struct.link_config*, %struct.link_config** %4, align 8
  %161 = getelementptr inbounds %struct.link_config, %struct.link_config* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @FW_PORT_CAP32_FEC_RS, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %159, %152
  %167 = load %struct.link_config*, %struct.link_config** %4, align 8
  %168 = getelementptr inbounds %struct.link_config, %struct.link_config* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @FEC_BASER_RS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %166
  %174 = load %struct.link_config*, %struct.link_config** %4, align 8
  %175 = getelementptr inbounds %struct.link_config, %struct.link_config* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @FW_PORT_CAP32_FEC_BASER_RS, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %173, %159
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* @FEC_AUTO, align 4
  %184 = load %struct.link_config*, %struct.link_config** %4, align 8
  %185 = getelementptr inbounds %struct.link_config, %struct.link_config* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %180, %173, %166
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @PORT_LOCK_ASSERT_OWNED(%struct.port_info*) #1

declare dso_local i32 @speed_to_fwcap(i64) #1

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
