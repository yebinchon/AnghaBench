; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiotool/extr_cam_sdio.c_sdio_func_read_cis.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiotool/extr_cam_sdio.c_sdio_func_read_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.cis_info = type { i32, i32, i32 }

@SD_IO_CISTPL_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Parse error: 0-length tuple %02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"count=%d, start=%d, i=%d, Got %c (0x%02x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Card info:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"FUNCE is too short: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Skipping tuple ID %02X len %02X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_func_read_cis(%struct.cam_device* %0, i32 %1, i32 %2, %struct.cis_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cam_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cis_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i8*], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [256 x i8], align 16
  store %struct.cam_device* %0, %struct.cam_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.cis_info* %3, %struct.cis_info** %9, align 8
  store i32 0, i32* %12, align 4
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %22 = call i32 @memset(i8* %21, i32 0, i32 256)
  br label %23

23:                                               ; preds = %215, %4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %13, align 4
  %28 = call i32 @sdio_read_1(%struct.cam_device* %25, i32 0, i32 %26, i32* %19)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @SD_IO_CISTPL_END, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %218

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %215

39:                                               ; preds = %33
  %40 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  %43 = call i32 @sdio_read_1(%struct.cam_device* %40, i32 0, i32 %41, i32* %19)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 -1, i32* %5, align 4
  br label %219

52:                                               ; preds = %46, %39
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %204 [
    i32 128, label %54
    i32 129, label %128
    i32 130, label %159
    i32 131, label %160
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %102, %54
  %58 = load i32, i32* %18, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, 4
  %63 = icmp slt i32 %62, 256
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  br i1 %65, label %66, label %105

66:                                               ; preds = %64
  %67 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %68, %69
  %71 = call i32 @sdio_read_1(%struct.cam_device* %67, i32 0, i32 %70, i32* %19)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %17, align 4
  %79 = icmp eq i32 %78, 255
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %105

81:                                               ; preds = %66
  %82 = load i32, i32* %17, align 4
  %83 = trunc i32 %82 to i8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 %85
  store i8 %83, i8* %86, align 1
  %87 = load i32, i32* %17, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %81
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 %95
  store i8* %93, i8** %96, align 8
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %18, align 4
  br label %101

101:                                              ; preds = %89, %81
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %57

105:                                              ; preds = %80, %64
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %107

107:                                              ; preds = %123, %105
  %108 = load i32, i32* %16, align 4
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %116, %110
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %107

126:                                              ; preds = %107
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %208

128:                                              ; preds = %52
  %129 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  %132 = call i32 @sdio_read_1(%struct.cam_device* %129, i32 0, i32 %130, i32* %19)
  %133 = load %struct.cis_info*, %struct.cis_info** %9, align 8
  %134 = getelementptr inbounds %struct.cis_info, %struct.cis_info* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  %138 = call i32 @sdio_read_1(%struct.cam_device* %135, i32 0, i32 %136, i32* %19)
  %139 = shl i32 %138, 8
  %140 = load %struct.cis_info*, %struct.cis_info** %9, align 8
  %141 = getelementptr inbounds %struct.cis_info, %struct.cis_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  %147 = call i32 @sdio_read_1(%struct.cam_device* %144, i32 0, i32 %145, i32* %19)
  %148 = load %struct.cis_info*, %struct.cis_info** %9, align 8
  %149 = getelementptr inbounds %struct.cis_info, %struct.cis_info* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  %153 = call i32 @sdio_read_1(%struct.cam_device* %150, i32 0, i32 %151, i32* %19)
  %154 = shl i32 %153, 8
  %155 = load %struct.cis_info*, %struct.cis_info** %9, align 8
  %156 = getelementptr inbounds %struct.cis_info, %struct.cis_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %208

159:                                              ; preds = %52
  br label %208

160:                                              ; preds = %52
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %161, 4
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %11, align 4
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  br label %208

166:                                              ; preds = %160
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %166
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  %172 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  %175 = call i32 @sdio_read_1(%struct.cam_device* %172, i32 0, i32 %173, i32* %19)
  %176 = load %struct.cis_info*, %struct.cis_info** %9, align 8
  %177 = getelementptr inbounds %struct.cis_info, %struct.cis_info* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  %178 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %13, align 4
  %181 = call i32 @sdio_read_1(%struct.cam_device* %178, i32 0, i32 %179, i32* %19)
  %182 = shl i32 %181, 8
  %183 = load %struct.cis_info*, %struct.cis_info** %9, align 8
  %184 = getelementptr inbounds %struct.cis_info, %struct.cis_info* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %203

187:                                              ; preds = %166
  %188 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 12
  %191 = call i32 @sdio_read_1(%struct.cam_device* %188, i32 0, i32 %190, i32* %19)
  %192 = load %struct.cis_info*, %struct.cis_info** %9, align 8
  %193 = getelementptr inbounds %struct.cis_info, %struct.cis_info* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  %194 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 13
  %197 = call i32 @sdio_read_1(%struct.cam_device* %194, i32 0, i32 %196, i32* %19)
  %198 = shl i32 %197, 8
  %199 = load %struct.cis_info*, %struct.cis_info** %9, align 8
  %200 = getelementptr inbounds %struct.cis_info, %struct.cis_info* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %187, %169
  br label %208

204:                                              ; preds = %52
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %11, align 4
  %207 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %204, %203, %163, %159, %128, %126
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 2
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, %210
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %12, align 4
  br label %215

215:                                              ; preds = %208, %36
  %216 = load i32, i32* %12, align 4
  %217 = icmp slt i32 %216, 20
  br i1 %217, label %23, label %218

218:                                              ; preds = %215, %32
  store i32 0, i32* %5, align 4
  br label %219

219:                                              ; preds = %218, %49
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sdio_read_1(%struct.cam_device*, i32, i32, i32*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
