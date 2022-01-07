; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_send_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_send_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8*, i8*, i8*, i8*, i8*, i32, i64, %struct.TYPE_8__, %struct.TYPE_6__, i64, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.queue = type { i32, i32 }
%struct.ieee80211_frame = type { i32*, i8*, i8*, i8*, i64, i32* }
%struct.ip = type { i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__, i64, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@Z_NULL = common dso_local global i8* null, align 8
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4
@IEEE80211_FC1_MORE_FRAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\AA\AA\03\00\00\00\08\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_header(%struct.params* %0, %struct.queue* %1) #0 {
  %3 = alloca %struct.params*, align 8
  %4 = alloca %struct.queue*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.params* %0, %struct.params** %3, align 8
  store %struct.queue* %1, %struct.queue** %4, align 8
  %13 = load i8*, i8** @Z_NULL, align 8
  %14 = call i64 @crc32(i64 0, i8* %13, i32 0)
  store i64 %14, i64* %11, align 8
  %15 = load %struct.params*, %struct.params** %3, align 8
  %16 = getelementptr inbounds %struct.params, %struct.params* %15, i32 0, i32 11
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @memset(i64 %17, i32 0, i32 8)
  %19 = load %struct.params*, %struct.params** %3, align 8
  %20 = getelementptr inbounds %struct.params, %struct.params* %19, i32 0, i32 11
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %22, %struct.ieee80211_frame** %5, align 8
  %23 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %24 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %23
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %31 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %30
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %38 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %45 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @IEEE80211_FC1_MORE_FRAG, align 4
  %52 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 105, i32* %61, align 4
  %62 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.params*, %struct.params** %3, align 8
  %66 = getelementptr inbounds %struct.params, %struct.params* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @memcpy(i8* %64, i8* %67, i32 6)
  %69 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.params*, %struct.params** %3, align 8
  %73 = getelementptr inbounds %struct.params, %struct.params* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @memcpy(i8* %71, i8* %74, i32 6)
  %76 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.params*, %struct.params** %3, align 8
  %80 = getelementptr inbounds %struct.params, %struct.params* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @memcpy(i8* %78, i8* %81, i32 6)
  %83 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i16*
  store i16* %86, i16** %6, align 8
  %87 = load %struct.params*, %struct.params** %3, align 8
  %88 = getelementptr inbounds %struct.params, %struct.params* %87, i32 0, i32 9
  store i64 0, i64* %88, align 8
  %89 = load %struct.params*, %struct.params** %3, align 8
  %90 = getelementptr inbounds %struct.params, %struct.params* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.params*, %struct.params** %3, align 8
  %94 = getelementptr inbounds %struct.params, %struct.params* %93, i32 0, i32 10
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.params*, %struct.params** %3, align 8
  %97 = getelementptr inbounds %struct.params, %struct.params* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = trunc i64 %98 to i32
  %101 = call signext i16 @seqfn(i32 %95, i32 %100)
  %102 = load i16*, i16** %6, align 8
  store i16 %101, i16* %102, align 2
  %103 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %103, i64 1
  %105 = bitcast %struct.ieee80211_frame* %104 to i8*
  store i8* %105, i8** %7, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.params*, %struct.params** %3, align 8
  %108 = getelementptr inbounds %struct.params, %struct.params* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @memcpy(i8* %106, i8* %109, i32 3)
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  store i8* %112, i8** %7, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @memcpy(i8* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 8
  %117 = bitcast i8* %116 to %struct.ip*
  store %struct.ip* %117, %struct.ip** %8, align 8
  %118 = load %struct.ip*, %struct.ip** %8, align 8
  %119 = getelementptr inbounds %struct.ip, %struct.ip* %118, i32 0, i32 0
  store i32 4, i32* %119, align 8
  %120 = load %struct.ip*, %struct.ip** %8, align 8
  %121 = getelementptr inbounds %struct.ip, %struct.ip* %120, i32 0, i32 1
  store i32 5, i32* %121, align 4
  %122 = load %struct.queue*, %struct.queue** %4, align 8
  %123 = getelementptr inbounds %struct.queue, %struct.queue* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = sub i64 %125, 48
  %127 = sub i64 %126, 4
  %128 = sub i64 %127, 4
  %129 = add i64 %128, 20
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i8* @htons(i32 %131)
  %133 = load %struct.ip*, %struct.ip** %8, align 8
  %134 = getelementptr inbounds %struct.ip, %struct.ip* %133, i32 0, i32 8
  store i8* %132, i8** %134, align 8
  %135 = load %struct.queue*, %struct.queue** %4, align 8
  %136 = getelementptr inbounds %struct.queue, %struct.queue* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @htons(i32 %137)
  %139 = load %struct.ip*, %struct.ip** %8, align 8
  %140 = getelementptr inbounds %struct.ip, %struct.ip* %139, i32 0, i32 7
  store i8* %138, i8** %140, align 8
  %141 = load %struct.ip*, %struct.ip** %8, align 8
  %142 = getelementptr inbounds %struct.ip, %struct.ip* %141, i32 0, i32 2
  store i32 69, i32* %142, align 8
  %143 = load %struct.ip*, %struct.ip** %8, align 8
  %144 = getelementptr inbounds %struct.ip, %struct.ip* %143, i32 0, i32 6
  store i64 0, i64* %144, align 8
  %145 = load %struct.params*, %struct.params** %3, align 8
  %146 = getelementptr inbounds %struct.params, %struct.params* %145, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ip*, %struct.ip** %8, align 8
  %150 = getelementptr inbounds %struct.ip, %struct.ip* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 4
  %152 = load %struct.params*, %struct.params** %3, align 8
  %153 = getelementptr inbounds %struct.params, %struct.params* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ip*, %struct.ip** %8, align 8
  %157 = getelementptr inbounds %struct.ip, %struct.ip* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load %struct.ip*, %struct.ip** %8, align 8
  %160 = bitcast %struct.ip* %159 to i16*
  %161 = call i32 @in_cksum(i16* %160, i32 20)
  %162 = load %struct.ip*, %struct.ip** %8, align 8
  %163 = getelementptr inbounds %struct.ip, %struct.ip* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  store i32 28, i32* %9, align 4
  %164 = load i64, i64* %11, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i64 @crc32(i64 %164, i8* %165, i32 %166)
  store i64 %167, i64* %11, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = bitcast i8* %171 to i64*
  store i64* %172, i64** %12, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load i64*, i64** %12, align 8
  store i64 %173, i64* %174, align 8
  store i32 0, i32* %10, align 4
  br label %175

175:                                              ; preds = %197, %2
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 4
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %200

180:                                              ; preds = %175
  %181 = load %struct.params*, %struct.params** %3, align 8
  %182 = getelementptr inbounds %struct.params, %struct.params* %181, i32 0, i32 4
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = load i8*, i8** %7, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = xor i32 %194, %188
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %192, align 1
  br label %197

197:                                              ; preds = %180
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  br label %175

200:                                              ; preds = %175
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = add i64 52, %202
  %204 = add i64 %203, 4
  %205 = trunc i64 %204 to i32
  %206 = load %struct.params*, %struct.params** %3, align 8
  %207 = getelementptr inbounds %struct.params, %struct.params* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 8
  %208 = load %struct.params*, %struct.params** %3, align 8
  %209 = getelementptr inbounds %struct.params, %struct.params* %208, i32 0, i32 6
  store i64 0, i64* %209, align 8
  %210 = load %struct.params*, %struct.params** %3, align 8
  %211 = call i32 @send_packet(%struct.params* %210)
  ret void
}

declare dso_local i64 @crc32(i64, i8*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local signext i16 @seqfn(i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @in_cksum(i16*, i32) #1

declare dso_local i32 @send_packet(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
