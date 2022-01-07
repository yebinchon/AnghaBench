; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_blank.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.fb_info* }
%struct.fb_info = type { i32*, i32, i64, i32, i32 }

@FB_FLAG_NOWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unmapped framebuffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vt_fb_blank(%struct.vt_device* %0, i64 %1) #0 {
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %10 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %9, i32 0, i32 0
  %11 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  store %struct.fb_info* %11, %struct.fb_info** %5, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FB_FLAG_NOWRITE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %194

25:                                               ; preds = %2
  %26 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %33 = call i32 @FBTYPE_GET_BYTESPP(%struct.fb_info* %32)
  switch i32 %33, label %193 [
    i32 1, label %34
    i32 2, label %67
    i32 3, label %100
    i32 4, label %160
  ]

34:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @vt_fb_mem_wr1(%struct.fb_info* %49, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %42

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %35

66:                                               ; preds = %35
  br label %194

67:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %96, %67
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %92, %74
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %83, %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @vt_fb_mem_wr2(%struct.fb_info* %82, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %7, align 4
  br label %75

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %68

99:                                               ; preds = %68
  br label %194

100:                                              ; preds = %25
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %156, %100
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %159

107:                                              ; preds = %101
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %152, %107
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %155

114:                                              ; preds = %108
  %115 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %116, %119
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %6, align 4
  %124 = ashr i32 %123, 16
  %125 = and i32 %124, 255
  %126 = call i32 @vt_fb_mem_wr1(%struct.fb_info* %115, i32 %122, i32 %125)
  %127 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %130 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %128, %131
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %132, %133
  %135 = add nsw i32 %134, 1
  %136 = load i32, i32* %6, align 4
  %137 = ashr i32 %136, 8
  %138 = and i32 %137, 255
  %139 = call i32 @vt_fb_mem_wr1(%struct.fb_info* %127, i32 %135, i32 %138)
  %140 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %143 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %141, %144
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %145, %146
  %148 = add nsw i32 %147, 2
  %149 = load i32, i32* %6, align 4
  %150 = and i32 %149, 255
  %151 = call i32 @vt_fb_mem_wr1(%struct.fb_info* %140, i32 %148, i32 %150)
  br label %152

152:                                              ; preds = %114
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 3
  store i32 %154, i32* %7, align 4
  br label %108

155:                                              ; preds = %108
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %101

159:                                              ; preds = %101
  br label %194

160:                                              ; preds = %25
  store i32 0, i32* %8, align 4
  br label %161

161:                                              ; preds = %189, %160
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %192

167:                                              ; preds = %161
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %185, %167
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %171 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %188

174:                                              ; preds = %168
  %175 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %178 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %176, %179
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @vt_fb_mem_wr4(%struct.fb_info* %175, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %174
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, 4
  store i32 %187, i32* %7, align 4
  br label %168

188:                                              ; preds = %168
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %161

192:                                              ; preds = %161
  br label %194

193:                                              ; preds = %25
  br label %194

194:                                              ; preds = %24, %193, %192, %159, %99, %66
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @FBTYPE_GET_BYTESPP(%struct.fb_info*) #1

declare dso_local i32 @vt_fb_mem_wr1(%struct.fb_info*, i32, i32) #1

declare dso_local i32 @vt_fb_mem_wr2(%struct.fb_info*, i32, i32) #1

declare dso_local i32 @vt_fb_mem_wr4(%struct.fb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
