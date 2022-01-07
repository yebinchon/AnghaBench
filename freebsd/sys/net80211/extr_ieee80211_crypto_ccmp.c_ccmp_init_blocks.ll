; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto_ccmp.c_ccmp_init_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto_ccmp.c_ccmp_init_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32*, i32*, i32, i32 }
%struct.ieee80211_qosframe_addr4 = type { i32* }
%struct.ieee80211_qosframe = type { i32* }
%struct.ieee80211_frame_addr4 = type { i32 }

@AES_BLOCK_LEN = common dso_local global i64 0, align 8
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_SEQ_FRAG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ieee80211_frame*, i32, i64, i32*, i32*, i32*, i32*)* @ccmp_init_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccmp_init_blocks(i32* %0, %struct.ieee80211_frame* %1, i32 %2, i64 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.ieee80211_qosframe_addr4*, align 8
  %18 = alloca %struct.ieee80211_qosframe*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load i64, i64* @AES_BLOCK_LEN, align 8
  %20 = load i64, i64* @AES_BLOCK_LEN, align 8
  %21 = mul i64 2, %20
  %22 = load i64, i64* @AES_BLOCK_LEN, align 8
  %23 = load i64, i64* @AES_BLOCK_LEN, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 89, i32* %25, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %29 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IEEE80211_ADDR_COPY(i32* %27, i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 40
  %34 = load i32*, i32** %13, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = ashr i32 %36, 32
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 9
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = ashr i32 %40, 24
  %42 = load i32*, i32** %13, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 10
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %11, align 4
  %45 = ashr i32 %44, 16
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 11
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = ashr i32 %48, 8
  %50 = load i32*, i32** %13, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 12
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  %53 = ashr i32 %52, 0
  %54 = load i32*, i32** %13, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 13
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* %12, align 8
  %57 = lshr i64 %56, 8
  %58 = and i64 %57, 255
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 14
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %12, align 8
  %63 = and i64 %62, 255
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %13, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 15
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %14, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 0, i32* %68, align 4
  %69 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %70 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 143
  %75 = load i32*, i32** %14, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %78 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 199
  %83 = load i32*, i32** %14, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %88 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %91 = mul nsw i32 3, %90
  %92 = call i32 @memcpy(i32* %86, i32 %89, i32 %91)
  %93 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %94 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IEEE80211_SEQ_FRAG_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32*, i32** %14, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 22
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %14, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 23
  store i32 0, i32* %103, align 4
  %104 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %105 = call i64 @IEEE80211_IS_DSTODS(%struct.ieee80211_frame* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %152

107:                                              ; preds = %8
  %108 = load i32*, i32** %14, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 24
  %110 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %111 = bitcast %struct.ieee80211_frame* %110 to %struct.ieee80211_frame_addr4*
  %112 = getelementptr inbounds %struct.ieee80211_frame_addr4, %struct.ieee80211_frame_addr4* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @IEEE80211_ADDR_COPY(i32* %109, i32 %113)
  %115 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %116 = call i32 (%struct.ieee80211_frame*, ...) bitcast (i32 (...)* @IEEE80211_QOS_HAS_SEQ to i32 (%struct.ieee80211_frame*, ...)*)(%struct.ieee80211_frame* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %107
  %119 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %120 = bitcast %struct.ieee80211_frame* %119 to %struct.ieee80211_qosframe_addr4*
  store %struct.ieee80211_qosframe_addr4* %120, %struct.ieee80211_qosframe_addr4** %17, align 8
  %121 = load %struct.ieee80211_qosframe_addr4*, %struct.ieee80211_qosframe_addr4** %17, align 8
  %122 = getelementptr inbounds %struct.ieee80211_qosframe_addr4, %struct.ieee80211_qosframe_addr4* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 15
  %127 = load i32*, i32** %14, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 30
  store i32 %126, i32* %128, align 4
  %129 = load i32*, i32** %14, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 31
  store i32 0, i32* %130, align 4
  %131 = load i32*, i32** %14, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 30
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %13, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %137 = add nsw i32 22, %136
  %138 = add nsw i32 %137, 2
  %139 = load i32*, i32** %14, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 %138, i32* %140, align 4
  br label %151

141:                                              ; preds = %107
  %142 = load i32*, i32** %14, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 30
  %144 = bitcast i32* %143 to i64*
  store i64 0, i64* %144, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 0, i32* %146, align 4
  %147 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %148 = add nsw i32 22, %147
  %149 = load i32*, i32** %14, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %141, %118
  br label %191

152:                                              ; preds = %8
  %153 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %154 = call i32 (%struct.ieee80211_frame*, ...) bitcast (i32 (...)* @IEEE80211_QOS_HAS_SEQ to i32 (%struct.ieee80211_frame*, ...)*)(%struct.ieee80211_frame* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %152
  %157 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %158 = bitcast %struct.ieee80211_frame* %157 to %struct.ieee80211_qosframe*
  store %struct.ieee80211_qosframe* %158, %struct.ieee80211_qosframe** %18, align 8
  %159 = load %struct.ieee80211_qosframe*, %struct.ieee80211_qosframe** %18, align 8
  %160 = getelementptr inbounds %struct.ieee80211_qosframe, %struct.ieee80211_qosframe* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 15
  %165 = load i32*, i32** %14, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 24
  store i32 %164, i32* %166, align 4
  %167 = load i32*, i32** %14, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 25
  store i32 0, i32* %168, align 4
  %169 = load i32*, i32** %14, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 24
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %13, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  store i32 %171, i32* %173, align 4
  %174 = load i32*, i32** %14, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  store i32 24, i32* %175, align 4
  br label %184

176:                                              ; preds = %152
  %177 = load i32*, i32** %14, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 24
  %179 = bitcast i32* %178 to i64*
  store i64 0, i64* %179, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  store i32 0, i32* %181, align 4
  %182 = load i32*, i32** %14, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  store i32 22, i32* %183, align 4
  br label %184

184:                                              ; preds = %176, %156
  %185 = load i32*, i32** %14, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 26
  %187 = bitcast i32* %186 to i64*
  store i64 0, i64* %187, align 8
  %188 = load i32*, i32** %14, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 28
  %190 = bitcast i32* %189 to i64*
  store i64 0, i64* %190, align 8
  br label %191

191:                                              ; preds = %184, %151
  %192 = load i32*, i32** %9, align 8
  %193 = load i32*, i32** %13, align 8
  %194 = load i32*, i32** %15, align 8
  %195 = call i32 @rijndael_encrypt(i32* %192, i32* %193, i32* %194)
  %196 = load i32*, i32** %15, align 8
  %197 = load i32*, i32** %14, align 8
  %198 = load i64, i64* @AES_BLOCK_LEN, align 8
  %199 = call i32 @xor_block(i32* %196, i32* %197, i64 %198)
  %200 = load i32*, i32** %9, align 8
  %201 = load i32*, i32** %15, align 8
  %202 = load i32*, i32** %15, align 8
  %203 = call i32 @rijndael_encrypt(i32* %200, i32* %201, i32* %202)
  %204 = load i32*, i32** %15, align 8
  %205 = load i32*, i32** %14, align 8
  %206 = load i64, i64* @AES_BLOCK_LEN, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i64, i64* @AES_BLOCK_LEN, align 8
  %209 = call i32 @xor_block(i32* %204, i32* %207, i64 %208)
  %210 = load i32*, i32** %9, align 8
  %211 = load i32*, i32** %15, align 8
  %212 = load i32*, i32** %15, align 8
  %213 = call i32 @rijndael_encrypt(i32* %210, i32* %211, i32* %212)
  %214 = load i32*, i32** %13, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, 7
  store i32 %217, i32* %215, align 4
  %218 = load i32*, i32** %13, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 15
  store i32 0, i32* %219, align 4
  %220 = load i32*, i32** %13, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 14
  store i32 0, i32* %221, align 4
  %222 = load i32*, i32** %9, align 8
  %223 = load i32*, i32** %13, align 8
  %224 = load i32*, i32** %16, align 8
  %225 = call i32 @rijndael_encrypt(i32* %222, i32* %223, i32* %224)
  ret void
}

declare dso_local i32 @IEEE80211_ADDR_COPY(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_DSTODS(%struct.ieee80211_frame*) #1

declare dso_local i32 @IEEE80211_QOS_HAS_SEQ(...) #1

declare dso_local i32 @rijndael_encrypt(i32*, i32*, i32*) #1

declare dso_local i32 @xor_block(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
