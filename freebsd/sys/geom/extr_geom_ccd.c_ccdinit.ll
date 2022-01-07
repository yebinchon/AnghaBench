; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_ccdinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_ccdinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.ccd_s = type { i32, i32, i32, i32, i32, i32, %struct.ccdcinfo* }
%struct.ccdcinfo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CCDF_LINUX = common dso_local global i32 0, align 4
@CCDF_MIRROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Mirror mode for Linux raids is only supported with 2 devices\00", align 1
@CCDF_NO_OFFSET = common dso_local global i32 0, align 4
@CCD_OFFSET = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Component %s has effective size zero\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Interleave to small for sector size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CCDF_UNIFORM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Mirroring requires an even number of disks\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"An interleave must be specified when mirroring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, %struct.ccd_s*)* @ccdinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdinit(%struct.gctl_req* %0, %struct.ccd_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.ccd_s*, align 8
  %6 = alloca %struct.ccdcinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.ccd_s* %1, %struct.ccd_s** %5, align 8
  %13 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %14 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %16 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CCDF_LINUX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %2
  %22 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %23 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %25 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %29 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CCDF_MIRROR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %36 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %41 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %40, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34, %21
  br label %58

43:                                               ; preds = %2
  %44 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %45 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CCDF_NO_OFFSET, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %52 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %51, i32 0, i32 2
  store i32 0, i32* %52, align 8
  br label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @CCD_OFFSET, align 4
  %55 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %56 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %42
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %137, %58
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %62 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %140

65:                                               ; preds = %59
  %66 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %67 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %66, i32 0, i32 6
  %68 = load %struct.ccdcinfo*, %struct.ccdcinfo** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %68, i64 %70
  store %struct.ccdcinfo* %71, %struct.ccdcinfo** %6, align 8
  %72 = load %struct.ccdcinfo*, %struct.ccdcinfo** %6, align 8
  %73 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  %77 = load %struct.ccdcinfo*, %struct.ccdcinfo** %6, align 8
  %78 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %65
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %65
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @DEV_BSIZE, align 4
  %90 = sdiv i32 %88, %89
  %91 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %92 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  store i32 %94, i32* %7, align 4
  %95 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %96 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %107

99:                                               ; preds = %87
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %102 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = srem i32 %100, %103
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %99, %87
  %108 = load i32, i32* %7, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %112 = load %struct.ccdcinfo*, %struct.ccdcinfo** %6, align 8
  %113 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @ENODEV, align 4
  store i32 %118, i32* %3, align 4
  br label %233

119:                                              ; preds = %107
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122, %119
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %126, %122
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.ccdcinfo*, %struct.ccdcinfo** %6, align 8
  %131 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %134 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %128
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %59

140:                                              ; preds = %59
  %141 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %142 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %147 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @DEV_BSIZE, align 4
  %151 = sdiv i32 %149, %150
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %155 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %154, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i32, i32* @EINVAL, align 4
  store i32 %156, i32* %3, align 4
  br label %233

157:                                              ; preds = %145, %140
  %158 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %159 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @CCDF_UNIFORM, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %192

164:                                              ; preds = %157
  store i32 0, i32* %8, align 4
  br label %165

165:                                              ; preds = %181, %164
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %168 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %165
  %172 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %173 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %172, i32 0, i32 6
  %174 = load %struct.ccdcinfo*, %struct.ccdcinfo** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %174, i64 %176
  store %struct.ccdcinfo* %177, %struct.ccdcinfo** %6, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.ccdcinfo*, %struct.ccdcinfo** %6, align 8
  %180 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %171
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  br label %165

184:                                              ; preds = %165
  %185 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %186 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = mul nsw i32 %187, %188
  %190 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %191 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %184, %157
  %193 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %194 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @CCDF_MIRROR, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %227

199:                                              ; preds = %192
  %200 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %201 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = srem i32 %202, 2
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %207 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %206, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %208 = load i32, i32* @EINVAL, align 4
  store i32 %208, i32* %3, align 4
  br label %233

209:                                              ; preds = %199
  %210 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %211 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %216 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %215, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %217 = load i32, i32* @EINVAL, align 4
  store i32 %217, i32* %3, align 4
  br label %233

218:                                              ; preds = %209
  %219 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %220 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = sdiv i32 %221, 2
  %223 = load i32, i32* %9, align 4
  %224 = mul nsw i32 %222, %223
  %225 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %226 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %218, %192
  %228 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %229 = call i32 @ccdinterleave(%struct.ccd_s* %228)
  %230 = load i32, i32* %10, align 4
  %231 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %232 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %231, i32 0, i32 5
  store i32 %230, i32* %232, align 4
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %227, %214, %205, %153, %110
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @ccdinterleave(%struct.ccd_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
