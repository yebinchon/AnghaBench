; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_hw_ep_find_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_hw_ep_find_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hw_ep_scratch = type { i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.usb_hw_ep_profile**, i32)* }
%struct.usb_hw_ep_profile = type { i32, i64, i64 }
%struct.usb_hw_ep_scratch_sub = type { i64, i32, i32, i64, i64, %struct.usb_hw_ep_profile*, i32 }

@UE_CONTROL = common dso_local global i32 0, align 4
@USB_EP_MAX = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@UE_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch_sub*, i32)* @usb_hw_ep_find_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hw_ep_find_match(%struct.usb_hw_ep_scratch* %0, %struct.usb_hw_ep_scratch_sub* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hw_ep_scratch*, align 8
  %6 = alloca %struct.usb_hw_ep_scratch_sub*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hw_ep_profile*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usb_hw_ep_scratch* %0, %struct.usb_hw_ep_scratch** %5, align 8
  store %struct.usb_hw_ep_scratch_sub* %1, %struct.usb_hw_ep_scratch_sub** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 65535, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %17 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %22 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %216

26:                                               ; preds = %20, %3
  %27 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %28 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @UE_CONTROL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %41

33:                                               ; preds = %26
  %34 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %35 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %40

40:                                               ; preds = %39, %38
  br label %41

41:                                               ; preds = %40, %32
  store i32 1, i32* %12, align 4
  br label %42

42:                                               ; preds = %159, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @USB_EP_MAX, align 4
  %45 = sdiv i32 %44, 2
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %162

47:                                               ; preds = %42
  %48 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %49 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i32, %struct.usb_hw_ep_profile**, i32)*, i32 (i32, %struct.usb_hw_ep_profile**, i32)** %51, align 8
  %53 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %54 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 %52(i32 %55, %struct.usb_hw_ep_profile** %8, i32 %56)
  %58 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %59 = icmp eq %struct.usb_hw_ep_profile* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %162

61:                                               ; preds = %47
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %66 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %64, %61
  %70 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %71 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sdiv i32 %73, 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = srem i32 %78, 8
  %80 = shl i32 1, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %159

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %64
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %90 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %88, %85
  %94 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %95 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sdiv i32 %97, 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %12, align 4
  %103 = srem i32 %102, 8
  %104 = shl i32 1, %103
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %159

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %88
  %110 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %111 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %159

116:                                              ; preds = %109
  %117 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %118 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %119 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @usb_hw_ep_match(%struct.usb_hw_ep_profile* %117, i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  br label %159

125:                                              ; preds = %116
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %130 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %11, align 8
  br label %136

132:                                              ; preds = %125
  %133 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %134 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %11, align 8
  br label %136

136:                                              ; preds = %132, %128
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %139 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sge i64 %137, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %136
  %143 = load i64, i64* %11, align 8
  %144 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %145 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %143, %146
  store i64 %147, i64* %10, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i64, i64* %10, align 8
  %150 = icmp sgt i64 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %142
  %152 = load i64, i64* %10, align 8
  store i64 %152, i64* %9, align 8
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %13, align 4
  %154 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %155 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %156 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %155, i32 0, i32 5
  store %struct.usb_hw_ep_profile* %154, %struct.usb_hw_ep_profile** %156, align 8
  br label %157

157:                                              ; preds = %151, %142
  br label %158

158:                                              ; preds = %157, %136
  br label %159

159:                                              ; preds = %158, %124, %115, %107, %83
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %42

162:                                              ; preds = %60, %42
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %215

165:                                              ; preds = %162
  %166 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %167 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %166, i32 0, i32 5
  %168 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %167, align 8
  store %struct.usb_hw_ep_profile* %168, %struct.usb_hw_ep_profile** %8, align 8
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %191

171:                                              ; preds = %165
  %172 = load i32, i32* %13, align 4
  %173 = srem i32 %172, 8
  %174 = shl i32 1, %173
  %175 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %176 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sdiv i32 %178, 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %174
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @UE_DIR_IN, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %188 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 8
  %189 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %190 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %189, i32 0, i32 4
  store i64 0, i64* %190, align 8
  br label %191

191:                                              ; preds = %171, %165
  %192 = load i32, i32* %15, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %214

194:                                              ; preds = %191
  %195 = load i32, i32* %13, align 4
  %196 = srem i32 %195, 8
  %197 = shl i32 1, %196
  %198 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %199 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sdiv i32 %201, 8
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %197
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* @UE_DIR_OUT, align 4
  %209 = or i32 %207, %208
  %210 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %211 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 4
  %212 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %6, align 8
  %213 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %212, i32 0, i32 3
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %194, %191
  store i32 0, i32* %4, align 4
  br label %216

215:                                              ; preds = %162
  store i32 1, i32* %4, align 4
  br label %216

216:                                              ; preds = %215, %214, %25
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @usb_hw_ep_match(%struct.usb_hw_ep_profile*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
