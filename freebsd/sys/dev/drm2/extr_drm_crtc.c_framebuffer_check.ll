; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_framebuffer_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_framebuffer_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_fb_cmd2 = type { i32, i32, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"bad framebuffer format 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"bad framebuffer width %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"bad framebuffer height %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"no buffer object handle for plane %d\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"bad pitch %u for plane %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_mode_fb_cmd2*)* @framebuffer_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @framebuffer_check(%struct.drm_mode_fb_cmd2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_mode_fb_cmd2* %0, %struct.drm_mode_fb_cmd2** %3, align 8
  %12 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %13 = call i32 @format_check(%struct.drm_mode_fb_cmd2* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %18 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %179

22:                                               ; preds = %1
  %23 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %24 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @drm_format_horz_chroma_subsampling(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %28 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @drm_format_vert_chroma_subsampling(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %32 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @drm_format_num_planes(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %36 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %22
  %40 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %41 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = srem i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39, %22
  %47 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %48 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %179

53:                                               ; preds = %39
  %54 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %55 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %60 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = srem i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58, %53
  %66 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %67 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %179

72:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %175, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %178

77:                                               ; preds = %73
  %78 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %79 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4
  br label %86

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 1, %85 ]
  %88 = sdiv i32 %80, %87
  store i32 %88, i32* %9, align 4
  %89 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %90 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %6, align 4
  br label %97

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 1, %96 ]
  %99 = sdiv i32 %91, %98
  store i32 %99, i32* %10, align 4
  %100 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %101 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @drm_format_plane_cpp(i32 %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %106 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %97
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %179

118:                                              ; preds = %97
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %11, align 4
  %121 = mul i32 %119, %120
  %122 = load i32, i32* @UINT_MAX, align 4
  %123 = icmp ugt i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* @ERANGE, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %179

127:                                              ; preds = %118
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %130 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = mul i32 %128, %135
  %137 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %138 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = add i32 %136, %143
  %145 = load i32, i32* @UINT_MAX, align 4
  %146 = icmp ugt i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %127
  %148 = load i32, i32* @ERANGE, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %179

150:                                              ; preds = %127
  %151 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %152 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %11, align 4
  %160 = mul i32 %158, %159
  %161 = icmp ult i32 %157, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %150
  %163 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %3, align 8
  %164 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %179

174:                                              ; preds = %150
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %73

178:                                              ; preds = %73
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %162, %147, %124, %113, %65, %46, %16
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @format_check(%struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @drm_format_horz_chroma_subsampling(i32) #1

declare dso_local i32 @drm_format_vert_chroma_subsampling(i32) #1

declare dso_local i32 @drm_format_num_planes(i32) #1

declare dso_local i32 @drm_format_plane_cpp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
