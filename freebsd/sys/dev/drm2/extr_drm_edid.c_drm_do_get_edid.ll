; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_do_get_edid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_do_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@drm_debug = common dso_local global i32 0, align 4
@DRM_DEBUGBITS_KMS = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4
@DRM_MEM_KMS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Ignoring invalid EDID block %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: EDID block %d invalid.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.drm_connector*, i32)* @drm_do_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @drm_do_get_edid(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @drm_debug, align 4
  %18 = load i32, i32* @DRM_DEBUGBITS_KMS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ true, %2 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @EDID_LENGTH, align 4
  %25 = load i32, i32* @DRM_MEM_KMS, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = call i32* @malloc(i32 %24, i32 %25, i32 %26)
  store i32* %27, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32* null, i32** %3, align 8
  br label %217

30:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %61, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* @EDID_LENGTH, align 4
  %38 = call i64 @drm_do_probe_ddc_edid(i32 %35, i32* %36, i32 0, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %213

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @drm_edid_block_valid(i32* %42, i32 0, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %64

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* @EDID_LENGTH, align 4
  %53 = call i64 @drm_edid_is_zero(i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %57 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %195

60:                                               ; preds = %50, %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %31

64:                                               ; preds = %46, %31
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %195

68:                                               ; preds = %64
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 126
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32*, i32** %9, align 8
  store i32* %74, i32** %3, align 8
  br label %217

75:                                               ; preds = %68
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 126
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* @EDID_LENGTH, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* @DRM_MEM_KMS, align 4
  %84 = load i32, i32* @M_NOWAIT, align 4
  %85 = call i32* @reallocf(i32* %76, i32 %82, i32 %83, i32 %84)
  store i32* %85, i32** %10, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %75
  store i32* null, i32** %9, align 8
  br label %213

89:                                               ; preds = %75
  %90 = load i32*, i32** %10, align 8
  store i32* %90, i32** %9, align 8
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %155, %89
  %92 = load i32, i32* %7, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 126
  %95 = load i32, i32* %94, align 4
  %96 = icmp sle i32 %92, %95
  br i1 %96, label %97, label %158

97:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %131, %97
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %134

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* @EDID_LENGTH, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @EDID_LENGTH, align 4
  %112 = call i64 @drm_do_probe_ddc_edid(i32 %102, i32* %109, i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %213

115:                                              ; preds = %101
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* @EDID_LENGTH, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %116, i64 %121
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i64 @drm_edid_block_valid(i32* %122, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %115
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %134

130:                                              ; preds = %115
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %98

134:                                              ; preds = %127, %98
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 4
  br i1 %136, label %137, label %154

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %137
  %141 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %142 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %147 = call i32 @drm_get_connector_name(%struct.drm_connector* %146)
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @dev_warn(i32 %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %151 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %140, %137, %134
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %91

158:                                              ; preds = %91
  %159 = load i32, i32* %8, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 126
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %159, %162
  br i1 %163, label %164, label %193

164:                                              ; preds = %158
  %165 = load i32*, i32** %9, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 126
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %8, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load i32*, i32** %9, align 8
  %171 = load i32, i32* @EDID_LENGTH, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %169
  store i32 %176, i32* %174, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 126
  store i32 %177, i32* %179, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  %183 = load i32, i32* @EDID_LENGTH, align 4
  %184 = mul nsw i32 %182, %183
  %185 = load i32, i32* @DRM_MEM_KMS, align 4
  %186 = load i32, i32* @M_NOWAIT, align 4
  %187 = call i32* @reallocf(i32* %180, i32 %184, i32 %185, i32 %186)
  store i32* %187, i32** %10, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %164
  br label %213

191:                                              ; preds = %164
  %192 = load i32*, i32** %10, align 8
  store i32* %192, i32** %9, align 8
  br label %193

193:                                              ; preds = %191, %158
  %194 = load i32*, i32** %9, align 8
  store i32* %194, i32** %3, align 8
  br label %217

195:                                              ; preds = %67, %55
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %200 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %199, i32 0, i32 1
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %205 = call i32 @drm_get_connector_name(%struct.drm_connector* %204)
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @dev_warn(i32 %203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %198, %195
  %209 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %210 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %208, %190, %114, %88, %40
  %214 = load i32*, i32** %9, align 8
  %215 = load i32, i32* @DRM_MEM_KMS, align 4
  %216 = call i32 @free(i32* %214, i32 %215)
  store i32* null, i32** %3, align 8
  br label %217

217:                                              ; preds = %213, %193, %73, %29
  %218 = load i32*, i32** %3, align 8
  ret i32* %218
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i64 @drm_do_probe_ddc_edid(i32, i32*, i32, i32) #1

declare dso_local i64 @drm_edid_block_valid(i32*, i32, i32) #1

declare dso_local i64 @drm_edid_is_zero(i32*, i32) #1

declare dso_local i32* @reallocf(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @drm_get_connector_name(%struct.drm_connector*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
