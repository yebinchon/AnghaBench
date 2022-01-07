; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_wait_relay.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_wait_relay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8*, i8*, i32, i32, i8*, i8*, i8*, i32, i64, i32 }
%struct.timeval = type { i32, i32 }
%struct.ieee80211_frame = type { i32, i32, i32 }

@Z_NULL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@S_START = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"select()\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sniff()\00", align 1
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"\FF\FF\FF\FF\FF\FF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wait_relay(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct.ieee80211_frame*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.params* %0, %struct.params** %2, align 8
  store i32 20000, i32* %3, align 4
  %13 = load i8*, i8** @Z_NULL, align 8
  %14 = call i64 @crc32(i64 0, i8* %13, i32 0)
  store i64 %14, i64* %11, align 8
  %15 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  %20 = load %struct.params*, %struct.params** %2, align 8
  %21 = getelementptr inbounds %struct.params, %struct.params* %20, i32 0, i32 9
  %22 = call i32 @elapsed(i32* %21, %struct.timeval* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i8*, i8** @S_START, align 8
  %28 = load %struct.params*, %struct.params** %2, align 8
  %29 = getelementptr inbounds %struct.params, %struct.params* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  br label %210

30:                                               ; preds = %19
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sdiv i32 %34, 1000
  %36 = sdiv i32 %35, 1000
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 1000
  %42 = mul nsw i32 %41, 1000
  %43 = sub nsw i32 %38, %42
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = call i32 @FD_ZERO(i32* %6)
  %46 = load %struct.params*, %struct.params** %2, align 8
  %47 = getelementptr inbounds %struct.params, %struct.params* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @FD_SET(i64 %48, i32* %6)
  %50 = load %struct.params*, %struct.params** %2, align 8
  %51 = getelementptr inbounds %struct.params, %struct.params* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @select(i64 %53, i32* %6, i32* null, i32* null, %struct.timeval* %4)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %30
  %57 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %30
  %59 = load %struct.params*, %struct.params** %2, align 8
  %60 = getelementptr inbounds %struct.params, %struct.params* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @FD_ISSET(i64 %61, i32* %6)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %210

65:                                               ; preds = %58
  %66 = load %struct.params*, %struct.params** %2, align 8
  %67 = getelementptr inbounds %struct.params, %struct.params* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %70 = call i32 @sniff(i64 %68, i8* %69, i32 4096)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %65
  %76 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %77 = call %struct.ieee80211_frame* @get_wifi(i8* %76, i32* %7)
  store %struct.ieee80211_frame* %77, %struct.ieee80211_frame** %9, align 8
  %78 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %79 = icmp ne %struct.ieee80211_frame* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %210

81:                                               ; preds = %75
  %82 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %83 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %84 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %85 = call i32 @frame_type(%struct.ieee80211_frame* %82, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  br label %210

88:                                               ; preds = %81
  %89 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.params*, %struct.params** %2, align 8
  %93 = getelementptr inbounds %struct.params, %struct.params* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @memcmp(i32 %91, i8* %94, i32 6)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %210

98:                                               ; preds = %88
  %99 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %100 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.params*, %struct.params** %2, align 8
  %103 = getelementptr inbounds %struct.params, %struct.params* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @memcmp(i32 %101, i8* %104, i32 6)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %210

108:                                              ; preds = %98
  %109 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %110 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @memcmp(i32 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %210

115:                                              ; preds = %108
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 %117, 12
  %119 = sub i64 %118, 8
  %120 = load %struct.params*, %struct.params** %2, align 8
  %121 = getelementptr inbounds %struct.params, %struct.params* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = icmp ne i64 %119, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %210

126:                                              ; preds = %115
  %127 = load %struct.params*, %struct.params** %2, align 8
  %128 = getelementptr inbounds %struct.params, %struct.params* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.params*, %struct.params** %2, align 8
  %131 = getelementptr inbounds %struct.params, %struct.params* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp sge i32 %129, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %137 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %136, i64 1
  %138 = bitcast %struct.ieee80211_frame* %137 to i8*
  store i8* %138, i8** %10, align 8
  %139 = load %struct.params*, %struct.params** %2, align 8
  %140 = getelementptr inbounds %struct.params, %struct.params* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 @memcpy(i32 %141, i8* %142, i32 3)
  %144 = load i8*, i8** %10, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 4
  store i8* %145, i8** %10, align 8
  %146 = load i64, i64* %11, align 8
  %147 = load %struct.params*, %struct.params** %2, align 8
  %148 = getelementptr inbounds %struct.params, %struct.params* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.params*, %struct.params** %2, align 8
  %151 = getelementptr inbounds %struct.params, %struct.params* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @crc32(i64 %146, i8* %149, i32 %152)
  store i64 %153, i64* %11, align 8
  %154 = load %struct.params*, %struct.params** %2, align 8
  %155 = getelementptr inbounds %struct.params, %struct.params* %154, i32 0, i32 4
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.params*, %struct.params** %2, align 8
  %158 = getelementptr inbounds %struct.params, %struct.params* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %156, i64 %160
  %162 = bitcast i8* %161 to i64*
  store i64* %162, i64** %12, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load i64*, i64** %12, align 8
  store i64 %163, i64* %164, align 8
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %195, %126
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.params*, %struct.params** %2, align 8
  %168 = getelementptr inbounds %struct.params, %struct.params* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 4
  %171 = icmp slt i32 %166, %170
  br i1 %171, label %172, label %198

172:                                              ; preds = %165
  %173 = load %struct.params*, %struct.params** %2, align 8
  %174 = getelementptr inbounds %struct.params, %struct.params* %173, i32 0, i32 4
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = load i8*, i8** %10, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = xor i32 %180, %186
  %188 = trunc i32 %187 to i8
  %189 = load %struct.params*, %struct.params** %2, align 8
  %190 = getelementptr inbounds %struct.params, %struct.params* %189, i32 0, i32 5
  %191 = load i8*, i8** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  store i8 %188, i8* %194, align 1
  br label %195

195:                                              ; preds = %172
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %7, align 4
  br label %165

198:                                              ; preds = %165
  %199 = load %struct.params*, %struct.params** %2, align 8
  %200 = getelementptr inbounds %struct.params, %struct.params* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 4
  %203 = load %struct.params*, %struct.params** %2, align 8
  %204 = getelementptr inbounds %struct.params, %struct.params* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  %205 = load i8*, i8** @S_START, align 8
  %206 = load %struct.params*, %struct.params** %2, align 8
  %207 = getelementptr inbounds %struct.params, %struct.params* %206, i32 0, i32 6
  store i8* %205, i8** %207, align 8
  %208 = load %struct.params*, %struct.params** %2, align 8
  %209 = call i32 @save_prga(%struct.params* %208)
  br label %210

210:                                              ; preds = %198, %125, %114, %107, %97, %87, %80, %64, %26
  ret void
}

declare dso_local i64 @crc32(i64, i8*, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @elapsed(i32*, %struct.timeval*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @sniff(i64, i8*, i32) #1

declare dso_local %struct.ieee80211_frame* @get_wifi(i8*, i32*) #1

declare dso_local i32 @frame_type(%struct.ieee80211_frame*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @save_prga(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
