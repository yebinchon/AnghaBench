; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_read_tap.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_read_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i64, i32, i32 }
%struct.ieee80211_frame = type { i32*, i8*, i8*, i8*, i64, i32* }

@Z_NULL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"read()\00", align 1
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"\AA\AA\03\00\00\00\00", align 1
@S_WAIT_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_tap(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca i16*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.params* %0, %struct.params** %2, align 8
  %11 = load i8*, i8** @Z_NULL, align 8
  %12 = call i64 @crc32(i64 0, i8* %11, i32 0)
  store i64 %12, i64* %10, align 8
  %13 = load %struct.params*, %struct.params** %2, align 8
  %14 = getelementptr inbounds %struct.params, %struct.params* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @memset(i8* %15, i32 0, i32 8)
  store i32 46, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 8, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.params*, %struct.params** %2, align 8
  %22 = getelementptr inbounds %struct.params, %struct.params* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %4, align 8
  %27 = load %struct.params*, %struct.params** %2, align 8
  %28 = getelementptr inbounds %struct.params, %struct.params* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @read(i32 %29, i8* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %1
  %38 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @memcpy(i8* %38, i8* %39, i32 6)
  %41 = load %struct.params*, %struct.params** %2, align 8
  %42 = getelementptr inbounds %struct.params, %struct.params* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %44, %struct.ieee80211_frame** %5, align 8
  %45 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %46 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %53 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %60 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %59
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %67 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %66
  store i32 %72, i32* %70, align 4
  %73 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 105, i32* %76, align 4
  %77 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.params*, %struct.params** %2, align 8
  %81 = getelementptr inbounds %struct.params, %struct.params* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @memcpy(i8* %79, i8* %82, i32 6)
  %84 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %85 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.params*, %struct.params** %2, align 8
  %88 = getelementptr inbounds %struct.params, %struct.params* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @memcpy(i8* %86, i8* %89, i32 6)
  %91 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %92 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %95 = call i32 @memcpy(i8* %93, i8* %94, i32 6)
  %96 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %97 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i16*
  store i16* %99, i16** %8, align 8
  %100 = load %struct.params*, %struct.params** %2, align 8
  %101 = getelementptr inbounds %struct.params, %struct.params* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = call signext i16 @seqfn(i32 %102, i32 0)
  %105 = load i16*, i16** %8, align 8
  store i16 %104, i16* %105, align 2
  %106 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %107 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %106, i64 1
  %108 = bitcast %struct.ieee80211_frame* %107 to i8*
  store i8* %108, i8** %4, align 8
  %109 = load i8*, i8** %4, align 8
  %110 = load %struct.params*, %struct.params** %2, align 8
  %111 = getelementptr inbounds %struct.params, %struct.params* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @memcpy(i8* %109, i8* %112, i32 3)
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 3
  store i8* %115, i8** %4, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %4, align 8
  store i8 0, i8* %116, align 1
  %118 = load i8*, i8** %4, align 8
  %119 = call i32 @memcpy(i8* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %120 = load i32, i32* %6, align 4
  %121 = sub nsw i32 %120, 14
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 8
  store i32 %123, i32* %6, align 4
  %124 = load i64, i64* %10, align 8
  %125 = load i8*, i8** %4, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i64 @crc32(i64 %124, i8* %125, i32 %126)
  store i64 %127, i64* %10, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = bitcast i8* %131 to i64*
  store i64* %132, i64** %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load i64*, i64** %9, align 8
  store i64 %133, i64* %134, align 8
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 4
  store i32 %136, i32* %6, align 4
  %137 = load %struct.params*, %struct.params** %2, align 8
  %138 = getelementptr inbounds %struct.params, %struct.params* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = icmp sge i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %165, %37
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load %struct.params*, %struct.params** %2, align 8
  %150 = getelementptr inbounds %struct.params, %struct.params* %149, i32 0, i32 5
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = load i8*, i8** %4, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = xor i32 %162, %156
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %160, align 1
  br label %165

165:                                              ; preds = %148
  %166 = load i32, i32* %3, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %3, align 4
  br label %144

168:                                              ; preds = %144
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = add i64 52, %170
  %172 = trunc i64 %171 to i32
  %173 = load %struct.params*, %struct.params** %2, align 8
  %174 = getelementptr inbounds %struct.params, %struct.params* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 8
  %175 = load %struct.params*, %struct.params** %2, align 8
  %176 = getelementptr inbounds %struct.params, %struct.params* %175, i32 0, i32 8
  store i64 0, i64* %176, align 8
  %177 = load %struct.params*, %struct.params** %2, align 8
  %178 = call i32 @send_packet(%struct.params* %177)
  %179 = load i32, i32* @S_WAIT_ACK, align 4
  %180 = load %struct.params*, %struct.params** %2, align 8
  %181 = getelementptr inbounds %struct.params, %struct.params* %180, i32 0, i32 7
  store i32 %179, i32* %181, align 4
  ret void
}

declare dso_local i64 @crc32(i64, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local signext i16 @seqfn(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @send_packet(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
