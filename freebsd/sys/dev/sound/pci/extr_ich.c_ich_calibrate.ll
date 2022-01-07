; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_calibrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, %struct.TYPE_2__, %struct.sc_chinfo* }
%struct.TYPE_2__ = type { i32* }
%struct.sc_chinfo = type { i64, i32, i64, i64, i32 }
%struct.timeval = type { i32, i32 }

@ICH_REG_PI_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"wrong direction\00", align 1
@ICH_CALIBRATE_DONE = common dso_local global i32 0, align 4
@ICH_REG_X_CIV = common dso_local global i64 0, align 8
@ICH_REG_X_BDBAR = common dso_local global i64 0, align 8
@ICH_REG_X_CR = common dso_local global i64 0, align 8
@ICH_X_CR_RPBM = common dso_local global i32 0, align 4
@ICH_X_CR_RR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"ac97 link rate calibration timed out after %d us\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"measured ac97 link rate at %d Hz\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c", will use %d Hz\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ich_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ich_calibrate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca %struct.sc_chinfo*, align 8
  %5 = alloca %struct.timeval, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.sc_info*
  store %struct.sc_info* %13, %struct.sc_info** %3, align 8
  %14 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %15 = call i32 @ICH_LOCK(%struct.sc_info* %14)
  %16 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %17 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %16, i32 0, i32 4
  %18 = load %struct.sc_chinfo*, %struct.sc_chinfo** %17, align 8
  %19 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %18, i64 1
  store %struct.sc_chinfo* %19, %struct.sc_chinfo** %4, align 8
  %20 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %21 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %27 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %26, i32 0, i32 3
  %28 = call i32 @config_intrhook_disestablish(%struct.TYPE_2__* %27)
  %29 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %34 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ICH_REG_PI_BASE, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %41 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %11, align 4
  %43 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %44 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %43, i32 0, i32 1
  store i32 2, i32* %44, align 8
  %45 = load i32, i32* @ICH_CALIBRATE_DONE, align 4
  %46 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %47 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %51 = call i32 @ICH_UNLOCK(%struct.sc_info* %50)
  %52 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %53 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %54 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @sndbuf_getmaxsize(i32 %55)
  %57 = ashr i32 %56, 1
  %58 = call i32 @ichchan_setblocksize(i32 0, %struct.sc_chinfo* %52, i32 %57)
  %59 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %60 = call i32 @ICH_LOCK(%struct.sc_info* %59)
  %61 = load i32, i32* @ICH_CALIBRATE_DONE, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %64 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %68 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %69 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ICH_REG_X_CIV, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i64 @ich_rd(%struct.sc_info* %67, i64 %72, i32 1)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  store i64 %74, i64* %8, align 8
  %75 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %76 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %77 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ICH_REG_X_BDBAR, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %82 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @ich_wr(%struct.sc_info* %75, i64 %80, i32 %84, i32 4)
  %86 = call i32 @microtime(%struct.timeval* %5)
  %87 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %88 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %89 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ICH_REG_X_CR, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i32, i32* @ICH_X_CR_RPBM, align 4
  %94 = call i32 @ich_wr(%struct.sc_info* %87, i64 %92, i32 %93, i32 1)
  br label %95

95:                                               ; preds = %112, %32
  %96 = call i32 @microtime(%struct.timeval* %6)
  %97 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %98, %100
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %116

104:                                              ; preds = %95
  %105 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %106 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %107 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ICH_REG_X_CIV, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i64 @ich_rd(%struct.sc_info* %105, i64 %110, i32 1)
  store i64 %111, i64* %8, align 8
  br label %112

112:                                              ; preds = %104
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %7, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %95, label %116

116:                                              ; preds = %112, %103
  %117 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %118 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %119 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ICH_REG_X_CR, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @ich_wr(%struct.sc_info* %117, i64 %122, i32 0, i32 1)
  %124 = call i32 @DELAY(i32 100)
  %125 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %126 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %127 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ICH_REG_X_CR, align 8
  %130 = add nsw i64 %128, %129
  %131 = load i32, i32* @ICH_X_CR_RR, align 4
  %132 = call i32 @ich_wr(%struct.sc_info* %125, i64 %130, i32 %131, i32 1)
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %135 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %137, %139
  %141 = mul nsw i32 %140, 1000000
  %142 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %141, %143
  %145 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %144, %146
  store i32 %147, i32* %9, align 4
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %7, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %116
  %152 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %153 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @device_printf(i32 %154, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @ICH_CALIBRATE_DONE, align 4
  %158 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %159 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %163 = call i32 @ICH_UNLOCK(%struct.sc_info* %162)
  %164 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %165 = call i32 @ich_setstatus(%struct.sc_info* %164)
  br label %227

166:                                              ; preds = %116
  %167 = load i32, i32* %9, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %171 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = mul nsw i32 %173, 250000
  %175 = load i32, i32* %9, align 4
  %176 = sdiv i32 %174, %175
  store i32 %176, i32* %10, align 4
  br label %178

177:                                              ; preds = %166
  store i32 48000, i32* %10, align 4
  br label %178

178:                                              ; preds = %177, %169
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %179, 47500
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %10, align 4
  %183 = icmp sgt i32 %182, 48500
  br i1 %183, label %184, label %188

184:                                              ; preds = %181, %178
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %187 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  br label %191

188:                                              ; preds = %181
  %189 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %190 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %189, i32 0, i32 0
  store i32 48000, i32* %190, align 8
  br label %191

191:                                              ; preds = %188, %184
  %192 = load i64, i64* @bootverbose, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %196 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 48000
  br i1 %198, label %199, label %217

199:                                              ; preds = %194, %191
  %200 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %201 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @device_printf(i32 %202, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %203)
  %205 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %206 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %199
  %211 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %212 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %210, %199
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %194
  %218 = load i32, i32* @ICH_CALIBRATE_DONE, align 4
  %219 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %220 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  %223 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %224 = call i32 @ICH_UNLOCK(%struct.sc_info* %223)
  %225 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %226 = call i32 @ich_setstatus(%struct.sc_info* %225)
  br label %227

227:                                              ; preds = %217, %151
  ret void
}

declare dso_local i32 @ICH_LOCK(%struct.sc_info*) #1

declare dso_local i32 @config_intrhook_disestablish(%struct.TYPE_2__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ICH_UNLOCK(%struct.sc_info*) #1

declare dso_local i32 @ichchan_setblocksize(i32, %struct.sc_chinfo*, i32) #1

declare dso_local i32 @sndbuf_getmaxsize(i32) #1

declare dso_local i64 @ich_rd(%struct.sc_info*, i64, i32) #1

declare dso_local i32 @ich_wr(%struct.sc_info*, i64, i32, i32) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ich_setstatus(%struct.sc_info*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
