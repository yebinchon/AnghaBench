; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_sysctl.c_oce_fill_flash_img_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_sysctl.c_oce_fill_flash_img_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_sec_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.flash_img_attri = type { i32, i32, i32, i32, i8* }
%struct.firmware = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.flash_sec_info*, %struct.flash_img_attri*, i32, %struct.firmware*, i32)* @oce_fill_flash_img_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_fill_flash_img_data(i32 %0, %struct.flash_sec_info* %1, %struct.flash_img_attri* %2, i32 %3, %struct.firmware* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.flash_sec_info*, align 8
  %9 = alloca %struct.flash_img_attri*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.firmware*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.flash_sec_info* %1, %struct.flash_sec_info** %8, align 8
  store %struct.flash_img_attri* %2, %struct.flash_img_attri** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.firmware* %4, %struct.firmware** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @IS_SH(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %6
  %17 = load %struct.flash_sec_info*, %struct.flash_sec_info** %8, align 8
  %18 = getelementptr inbounds %struct.flash_sec_info, %struct.flash_sec_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @HOST_32(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %28 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.flash_sec_info*, %struct.flash_sec_info** %8, align 8
  %30 = getelementptr inbounds %struct.flash_sec_info, %struct.flash_sec_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @HOST_32(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %40 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %16, %6
  %42 = load %struct.flash_sec_info*, %struct.flash_sec_info** %8, align 8
  %43 = getelementptr inbounds %struct.flash_sec_info, %struct.flash_sec_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @HOST_32(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %53 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** @FALSE, align 8
  %55 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %56 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %58 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %209 [
    i32 133, label %60
    i32 128, label %72
    i32 137, label %105
    i32 129, label %117
    i32 135, label %129
    i32 132, label %141
    i32 136, label %153
    i32 134, label %165
    i32 131, label %177
    i32 130, label %189
  ]

60:                                               ; preds = %41
  %61 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %62 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %61, i32 0, i32 3
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @IS_BE3(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %68 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %67, i32 0, i32 0
  store i32 2097152, i32* %68, align 8
  %69 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %70 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %69, i32 0, i32 1
  store i32 2097152, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %60
  br label %213

72:                                               ; preds = %41
  %73 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %74 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %73, i32 0, i32 3
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @IS_BE3(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %80 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %79, i32 0, i32 0
  store i32 262144, i32* %80, align 8
  %81 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %82 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %81, i32 0, i32 1
  store i32 1048576, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %72
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.firmware*, %struct.firmware** %11, align 8
  %86 = getelementptr inbounds %struct.firmware, %struct.firmware* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %89 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %92 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %95 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @oce_img_flashing_required(i32 %84, i32 %87, i32 %90, i32 %93, i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %83
  %101 = load i8*, i8** @TRUE, align 8
  %102 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %103 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %100, %83
  br label %213

105:                                              ; preds = %41
  %106 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %107 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %106, i32 0, i32 3
  store i32 2, i32* %107, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @IS_BE3(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %113 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %112, i32 0, i32 0
  store i32 12582912, i32* %113, align 8
  %114 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %115 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %114, i32 0, i32 1
  store i32 524288, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %105
  br label %213

117:                                              ; preds = %41
  %118 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %119 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %118, i32 0, i32 3
  store i32 3, i32* %119, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @IS_BE3(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %125 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %124, i32 0, i32 0
  store i32 13107200, i32* %125, align 8
  %126 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %127 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %126, i32 0, i32 1
  store i32 524288, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %117
  br label %213

129:                                              ; preds = %41
  %130 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %131 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %130, i32 0, i32 3
  store i32 8, i32* %131, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @IS_BE3(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %137 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %136, i32 0, i32 0
  store i32 13631488, i32* %137, align 8
  %138 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %139 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %138, i32 0, i32 1
  store i32 524288, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %129
  br label %213

141:                                              ; preds = %41
  %142 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %143 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %142, i32 0, i32 3
  store i32 9, i32* %143, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @IS_BE3(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %149 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %148, i32 0, i32 0
  store i32 4194304, i32* %149, align 8
  %150 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %151 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %150, i32 0, i32 1
  store i32 2097152, i32* %151, align 4
  br label %152

152:                                              ; preds = %147, %141
  br label %213

153:                                              ; preds = %41
  %154 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %155 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %154, i32 0, i32 3
  store i32 10, i32* %155, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @IS_BE3(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %161 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %160, i32 0, i32 0
  store i32 6291456, i32* %161, align 8
  %162 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %163 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %162, i32 0, i32 1
  store i32 2097152, i32* %163, align 4
  br label %164

164:                                              ; preds = %159, %153
  br label %213

165:                                              ; preds = %41
  %166 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %167 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %166, i32 0, i32 3
  store i32 11, i32* %167, align 4
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @IS_BE3(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  %172 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %173 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %172, i32 0, i32 0
  store i32 8388608, i32* %173, align 8
  %174 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %175 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %174, i32 0, i32 1
  store i32 2097152, i32* %175, align 4
  br label %176

176:                                              ; preds = %171, %165
  br label %213

177:                                              ; preds = %41
  %178 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %179 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %178, i32 0, i32 3
  store i32 13, i32* %179, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @IS_BE3(i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %185 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %184, i32 0, i32 0
  store i32 15990784, i32* %185, align 8
  %186 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %187 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %186, i32 0, i32 1
  store i32 262144, i32* %187, align 4
  br label %188

188:                                              ; preds = %183, %177
  br label %213

189:                                              ; preds = %41
  %190 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %191 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %190, i32 0, i32 3
  store i32 99, i32* %191, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @IS_BE3(i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %197 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %196, i32 0, i32 0
  store i32 1310720, i32* %197, align 8
  %198 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %199 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %198, i32 0, i32 1
  store i32 262144, i32* %199, align 4
  br label %200

200:                                              ; preds = %195, %189
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @oce_phy_flashing_required(i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = load i8*, i8** @TRUE, align 8
  %206 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %207 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %206, i32 0, i32 4
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %204, %200
  br label %213

209:                                              ; preds = %41
  %210 = load i8*, i8** @TRUE, align 8
  %211 = load %struct.flash_img_attri*, %struct.flash_img_attri** %9, align 8
  %212 = getelementptr inbounds %struct.flash_img_attri, %struct.flash_img_attri* %211, i32 0, i32 4
  store i8* %210, i8** %212, align 8
  br label %213

213:                                              ; preds = %209, %208, %188, %176, %164, %152, %140, %128, %116, %104, %71
  ret void
}

declare dso_local i64 @IS_SH(i32) #1

declare dso_local i8* @HOST_32(i32) #1

declare dso_local i32 @IS_BE3(i32) #1

declare dso_local i32 @oce_img_flashing_required(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @oce_phy_flashing_required(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
