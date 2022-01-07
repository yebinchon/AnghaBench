; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, %struct.sc_rchinfo*, %struct.sc_pchinfo*, i32 }
%struct.sc_rchinfo = type { i32, i32, i32, i32, i32, i64 }
%struct.sc_pchinfo = type { i32, i32, i32, i32, i32, i64 }

@INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"m3_intr\0A\00", align 1
@HOST_INT_STATUS = common dso_local global i32 0, align 4
@HV_INT_PENDING = common dso_local global i32 0, align 4
@HW_VOL_COUNTER_MASTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown HWVOL event\0A\00", align 1
@ASSP_INT_PENDING = common dso_local global i32 0, align 4
@ASSP_CONTROL_B = common dso_local global i32 0, align 4
@STOP_ASSP_CLOCK = common dso_local global i32 0, align 4
@ASSP_HOST_INT_STATUS = common dso_local global i32 0, align 4
@DSP2HOST_REQ_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @m3_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m3_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca %struct.sc_pchinfo*, align 8
  %5 = alloca %struct.sc_rchinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.sc_info*
  store %struct.sc_info* %12, %struct.sc_info** %3, align 8
  %13 = load i32, i32* @INTR, align 4
  %14 = call i32 @M3_DEBUG(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = call i32 @M3_LOCK(%struct.sc_info* %15)
  %17 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %18 = load i32, i32* @HOST_INT_STATUS, align 4
  %19 = call i32 @m3_rd_1(%struct.sc_info* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %24 = call i32 @M3_UNLOCK(%struct.sc_info* %23)
  br label %224

25:                                               ; preds = %1
  %26 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %27 = load i32, i32* @HOST_INT_STATUS, align 4
  %28 = call i32 @m3_wr_1(%struct.sc_info* %26, i32 %27, i32 255)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @HV_INT_PENDING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %25
  %34 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %35 = load i32, i32* @HW_VOL_COUNTER_MASTER, align 4
  %36 = call i32 @m3_rd_1(%struct.sc_info* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %54 [
    i32 153, label %38
    i32 170, label %43
    i32 102, label %48
    i32 136, label %53
  ]

38:                                               ; preds = %33
  %39 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %40 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @mixer_hwvol_mute(i32 %41)
  br label %59

43:                                               ; preds = %33
  %44 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mixer_hwvol_step(i32 %46, i32 1, i32 1)
  br label %59

48:                                               ; preds = %33
  %49 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %50 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @mixer_hwvol_step(i32 %51, i32 -1, i32 -1)
  br label %59

53:                                               ; preds = %33
  br label %59

54:                                               ; preds = %33
  %55 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %53, %48, %43, %38
  %60 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %61 = load i32, i32* @HW_VOL_COUNTER_MASTER, align 4
  %62 = call i32 @m3_wr_1(%struct.sc_info* %60, i32 %61, i32 136)
  br label %63

63:                                               ; preds = %59, %25
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ASSP_INT_PENDING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %63
  %69 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %70 = load i32, i32* @ASSP_CONTROL_B, align 4
  %71 = call i32 @m3_rd_1(%struct.sc_info* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @STOP_ASSP_CLOCK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %68
  %77 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %78 = load i32, i32* @ASSP_HOST_INT_STATUS, align 4
  %79 = call i32 @m3_rd_1(%struct.sc_info* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @DSP2HOST_REQ_TIMER, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %86 = load i32, i32* @ASSP_HOST_INT_STATUS, align 4
  %87 = load i32, i32* @DSP2HOST_REQ_TIMER, align 4
  %88 = call i32 @m3_wr_1(%struct.sc_info* %85, i32 %86, i32 %87)
  br label %92

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %68
  br label %91

91:                                               ; preds = %90, %63
  br label %221

92:                                               ; preds = %84
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %153, %92
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %96 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %156

99:                                               ; preds = %93
  %100 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %101 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %100, i32 0, i32 3
  %102 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %102, i64 %104
  store %struct.sc_pchinfo* %105, %struct.sc_pchinfo** %4, align 8
  %106 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %4, align 8
  %107 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %152

110:                                              ; preds = %99
  %111 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %4, align 8
  %112 = call i32 @m3_pchan_getptr_internal(%struct.sc_pchinfo* %111)
  %113 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %4, align 8
  %114 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %4, align 8
  %116 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %4, align 8
  %119 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %117, %120
  %122 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %4, align 8
  %123 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %121, %124
  store i32 %125, i32* %9, align 4
  %126 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %4, align 8
  %127 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %9, align 4
  %130 = srem i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %4, align 8
  %133 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @sndbuf_getblksz(i32 %134)
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %110
  br label %153

138:                                              ; preds = %110
  %139 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %4, align 8
  %140 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %4, align 8
  %143 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %145 = call i32 @M3_UNLOCK(%struct.sc_info* %144)
  %146 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %4, align 8
  %147 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @chn_intr(i32 %148)
  %150 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %151 = call i32 @M3_LOCK(%struct.sc_info* %150)
  br label %152

152:                                              ; preds = %138, %99
  br label %153

153:                                              ; preds = %152, %137
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %93

156:                                              ; preds = %93
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %217, %156
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %160 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %220

163:                                              ; preds = %157
  %164 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %165 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %164, i32 0, i32 2
  %166 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %166, i64 %168
  store %struct.sc_rchinfo* %169, %struct.sc_rchinfo** %5, align 8
  %170 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %5, align 8
  %171 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %216

174:                                              ; preds = %163
  %175 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %5, align 8
  %176 = call i32 @m3_rchan_getptr_internal(%struct.sc_rchinfo* %175)
  %177 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %5, align 8
  %178 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %5, align 8
  %180 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %5, align 8
  %183 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %181, %184
  %186 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %5, align 8
  %187 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %185, %188
  store i32 %189, i32* %9, align 4
  %190 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %5, align 8
  %191 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %9, align 4
  %194 = srem i32 %193, %192
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %5, align 8
  %197 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @sndbuf_getblksz(i32 %198)
  %200 = icmp slt i32 %195, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %174
  br label %217

202:                                              ; preds = %174
  %203 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %5, align 8
  %204 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %5, align 8
  %207 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  %208 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %209 = call i32 @M3_UNLOCK(%struct.sc_info* %208)
  %210 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %5, align 8
  %211 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @chn_intr(i32 %212)
  %214 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %215 = call i32 @M3_LOCK(%struct.sc_info* %214)
  br label %216

216:                                              ; preds = %202, %163
  br label %217

217:                                              ; preds = %216, %201
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %157

220:                                              ; preds = %157
  br label %221

221:                                              ; preds = %220, %91
  %222 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %223 = call i32 @M3_UNLOCK(%struct.sc_info* %222)
  br label %224

224:                                              ; preds = %221, %22
  ret void
}

declare dso_local i32 @M3_DEBUG(i32, i8*) #1

declare dso_local i32 @M3_LOCK(%struct.sc_info*) #1

declare dso_local i32 @m3_rd_1(%struct.sc_info*, i32) #1

declare dso_local i32 @M3_UNLOCK(%struct.sc_info*) #1

declare dso_local i32 @m3_wr_1(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @mixer_hwvol_mute(i32) #1

declare dso_local i32 @mixer_hwvol_step(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @m3_pchan_getptr_internal(%struct.sc_pchinfo*) #1

declare dso_local i32 @sndbuf_getblksz(i32) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @m3_rchan_getptr_internal(%struct.sc_rchinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
