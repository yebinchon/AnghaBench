; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_console.c_lio_get_uboot_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_console.c_lio_get_uboot_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32*, i32, i32, i32, %struct.lio_console* }
%struct.lio_console = type { i8*, i64 }

@.str = private unnamed_addr constant [18 x i8] c"setenv stdout pci\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@OCTEON_UBOOT_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Error reading console %u, ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%u: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"setenv stdout serial\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @lio_get_uboot_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_get_uboot_version(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.lio_console*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %11 = call i32 @lio_console_send_cmd(%struct.octeon_device* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 50)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 4
  %14 = load %struct.lio_console*, %struct.lio_console** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.lio_console, %struct.lio_console* %14, i64 %15
  store %struct.lio_console* %16, %struct.lio_console** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %17 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %18 = call i32 @lio_console_send_cmd(%struct.octeon_device* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %72, %1
  %20 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* @OCTEON_UBOOT_BUFFER_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @lio_console_read(%struct.octeon_device* %20, i64 %21, i32* %27, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %19
  %36 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.lio_console*, %struct.lio_console** %3, align 8
  %46 = getelementptr inbounds %struct.lio_console, %struct.lio_console* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @lio_console_handle_result(%struct.octeon_device* %50, i64 %51)
  br label %53

53:                                               ; preds = %49, %35
  br label %63

54:                                               ; preds = %19
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @lio_dev_err(%struct.octeon_device* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 16
  br label %72

72:                                               ; preds = %69, %66
  %73 = phi i1 [ false, %66 ], [ %71, %69 ]
  br i1 %73, label %19, label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load %struct.lio_console*, %struct.lio_console** %3, align 8
  %79 = getelementptr inbounds %struct.lio_console, %struct.lio_console* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %77
  %86 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.lio_console*, %struct.lio_console** %3, align 8
  %89 = getelementptr inbounds %struct.lio_console, %struct.lio_console* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @lio_dev_dbg(%struct.octeon_device* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %87, i8* %90)
  %92 = load %struct.lio_console*, %struct.lio_console** %3, align 8
  %93 = getelementptr inbounds %struct.lio_console, %struct.lio_console* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %85, %77, %74
  %97 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %98 = call i32 @lio_console_send_cmd(%struct.octeon_device* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 50)
  store i32 %98, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %245, %96
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @OCTEON_UBOOT_BUFFER_SIZE, align 4
  %102 = sub nsw i32 %101, 9
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %248

104:                                              ; preds = %99
  %105 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %106 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 85
  br i1 %112, label %113, label %244

113:                                              ; preds = %104
  %114 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %115 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 66
  br i1 %122, label %123, label %244

123:                                              ; preds = %113
  %124 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %125 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 3
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 111
  br i1 %132, label %133, label %244

133:                                              ; preds = %123
  %134 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %135 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 111
  br i1 %142, label %143, label %244

143:                                              ; preds = %133
  %144 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %145 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 5
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 116
  br i1 %152, label %153, label %244

153:                                              ; preds = %143
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %156 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %240, %153
  %160 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %161 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %243

168:                                              ; preds = %159
  %169 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %170 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 109
  br i1 %176, label %177, label %239

177:                                              ; preds = %168
  %178 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %179 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 105
  br i1 %186, label %187, label %239

187:                                              ; preds = %177
  %188 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %189 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 112
  br i1 %196, label %197, label %239

197:                                              ; preds = %187
  %198 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %199 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 3
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 115
  br i1 %206, label %207, label %239

207:                                              ; preds = %197
  %208 = load i32, i32* %8, align 4
  %209 = sub nsw i32 %208, 1
  %210 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %211 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 4
  %212 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %213 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 0, i32* %218, align 4
  %219 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %220 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %223 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = sub nsw i32 %221, %224
  %226 = add nsw i32 %225, 1
  %227 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %228 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 8
  %229 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %230 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %231 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %234 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %232, i64 %236
  %238 = call i32 @lio_dev_info(%struct.octeon_device* %229, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %237)
  br label %248

239:                                              ; preds = %197, %187, %177, %168
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  br label %159

243:                                              ; preds = %159
  br label %244

244:                                              ; preds = %243, %143, %133, %123, %113, %104
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %8, align 4
  br label %99

248:                                              ; preds = %207, %99
  ret void
}

declare dso_local i32 @lio_console_send_cmd(%struct.octeon_device*, i8*, i32) #1

declare dso_local i32 @lio_console_read(%struct.octeon_device*, i64, i32*, i32) #1

declare dso_local i32 @lio_console_handle_result(%struct.octeon_device*, i64) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i64, i32) #1

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i64, i8*) #1

declare dso_local i32 @lio_dev_info(%struct.octeon_device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
