; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_send_frag.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_send_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i64 }
%struct.ieee80211_frame = type { i32*, i8*, i8*, i64, i64, i32* }

@Z_NULL = common dso_local global i8* null, align 8
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@IEEE80211_FC1_MORE_FRAG = common dso_local global i32 0, align 4
@S_WAIT_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_frag(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca %struct.ieee80211_frame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  store i32 0, i32* %6, align 4
  %12 = load i8*, i8** @Z_NULL, align 8
  %13 = call i64 @crc32(i64 0, i8* %12, i32 0)
  store i64 %13, i64* %10, align 8
  %14 = load %struct.params*, %struct.params** %2, align 8
  %15 = getelementptr inbounds %struct.params, %struct.params* %14, i32 0, i32 12
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @memset(i64 %16, i32 0, i32 8)
  %18 = load %struct.params*, %struct.params** %2, align 8
  %19 = getelementptr inbounds %struct.params, %struct.params* %18, i32 0, i32 12
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %21, %struct.ieee80211_frame** %3, align 8
  %22 = load %struct.params*, %struct.params** %2, align 8
  %23 = getelementptr inbounds %struct.params, %struct.params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.params*, %struct.params** %2, align 8
  %27 = getelementptr inbounds %struct.params, %struct.params* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.params*, %struct.params** %2, align 8
  %30 = getelementptr inbounds %struct.params, %struct.params* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %5, align 4
  %33 = load %struct.params*, %struct.params** %2, align 8
  %34 = getelementptr inbounds %struct.params, %struct.params* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %1
  %44 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %45 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %52 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %59 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %66 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %43
  %75 = load i32, i32* @IEEE80211_FC1_MORE_FRAG, align 4
  %76 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %74, %43
  %83 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %84 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 105, i32* %86, align 4
  %87 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %88 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 0, i32* %90, align 4
  %91 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %92 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.params*, %struct.params** %2, align 8
  %95 = getelementptr inbounds %struct.params, %struct.params* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memcpy(i8* %93, i32 %96, i32 6)
  %98 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %99 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.params*, %struct.params** %2, align 8
  %102 = getelementptr inbounds %struct.params, %struct.params* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i8* %100, i32 %103, i32 6)
  %105 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %106 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @memset(i64 %107, i32 255, i32 6)
  %109 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %110 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i16*
  store i16* %112, i16** %7, align 8
  %113 = load %struct.params*, %struct.params** %2, align 8
  %114 = getelementptr inbounds %struct.params, %struct.params* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.params*, %struct.params** %2, align 8
  %117 = getelementptr inbounds %struct.params, %struct.params* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = call signext i16 @seqfn(i32 %115, i32 %118)
  %120 = load i16*, i16** %7, align 8
  store i16 %119, i16* %120, align 2
  %121 = load %struct.params*, %struct.params** %2, align 8
  %122 = getelementptr inbounds %struct.params, %struct.params* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %126 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %125, i64 1
  %127 = bitcast %struct.ieee80211_frame* %126 to i8*
  store i8* %127, i8** %8, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.params*, %struct.params** %2, align 8
  %130 = getelementptr inbounds %struct.params, %struct.params* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @memcpy(i8* %128, i32 %131, i32 3)
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 4
  store i8* %134, i8** %8, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load %struct.params*, %struct.params** %2, align 8
  %137 = getelementptr inbounds %struct.params, %struct.params* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @memcpy(i8* %135, i32 %138, i32 %139)
  %141 = load i64, i64* %10, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i64 @crc32(i64 %141, i8* %142, i32 %143)
  store i64 %144, i64* %10, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = bitcast i8* %148 to i64*
  store i64* %149, i64** %9, align 8
  %150 = load i64, i64* %10, align 8
  %151 = load i64*, i64** %9, align 8
  store i64 %150, i64* %151, align 8
  store i32 0, i32* %11, align 4
  br label %152

152:                                              ; preds = %178, %82
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 4
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %181

157:                                              ; preds = %152
  %158 = load i8*, i8** %8, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = load %struct.params*, %struct.params** %2, align 8
  %165 = getelementptr inbounds %struct.params, %struct.params* %164, i32 0, i32 9
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = xor i32 %163, %171
  %173 = trunc i32 %172 to i8
  %174 = load i8*, i8** %8, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8 %173, i8* %177, align 1
  br label %178

178:                                              ; preds = %157
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  br label %152

181:                                              ; preds = %152
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = add i64 52, %183
  %185 = add i64 %184, 4
  %186 = trunc i64 %185 to i32
  %187 = load %struct.params*, %struct.params** %2, align 8
  %188 = getelementptr inbounds %struct.params, %struct.params* %187, i32 0, i32 10
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* %4, align 4
  %190 = load %struct.params*, %struct.params** %2, align 8
  %191 = getelementptr inbounds %struct.params, %struct.params* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, %189
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %181
  %197 = load %struct.params*, %struct.params** %2, align 8
  %198 = getelementptr inbounds %struct.params, %struct.params* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.params*, %struct.params** %2, align 8
  %201 = getelementptr inbounds %struct.params, %struct.params* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.params*, %struct.params** %2, align 8
  %203 = getelementptr inbounds %struct.params, %struct.params* %202, i32 0, i32 7
  store i32 0, i32* %203, align 4
  %204 = load %struct.params*, %struct.params** %2, align 8
  %205 = getelementptr inbounds %struct.params, %struct.params* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %196, %181
  %209 = load %struct.params*, %struct.params** %2, align 8
  %210 = call i32 @send_packet(%struct.params* %209)
  %211 = load i32, i32* @S_WAIT_ACK, align 4
  %212 = load %struct.params*, %struct.params** %2, align 8
  %213 = getelementptr inbounds %struct.params, %struct.params* %212, i32 0, i32 11
  store i32 %211, i32* %213, align 4
  ret void
}

declare dso_local i64 @crc32(i64, i8*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local signext i16 @seqfn(i32, i32) #1

declare dso_local i32 @send_packet(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
