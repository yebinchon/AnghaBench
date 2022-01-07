; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_get_eth_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_get_eth_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.atse_softc = type { i32*, i32, i32 }

@atse_ethernet_option_bits_flag = common dso_local global i32 0, align 4
@ATSE_ETHERNET_OPTION_BITS_READ = common dso_local global i32 0, align 4
@atse_ethernet_option_bits = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [88 x i8] c"Magic '5afe' is not safe: 0x%08x. Falling back to random numbers for hardware address.\0A\00", align 1
@.str.1 = private unnamed_addr constant [112 x i8] c"Factory programmed Ethernet hardware address blacklisted.  Falling back to random address to avoid collisions.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Please re-program your flash.\0A\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"All zero's Ethernet hardware address blacklisted.  Falling back to random address.\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"Multicast Ethernet hardware address blacklisted.  Falling back to random address.\0A\00", align 1
@.str.5 = private unnamed_addr constant [101 x i8] c"We do not support Ethernet addresses for more than 16 MACs. Falling back to random hadware address.\0A\00", align 1
@.str.6 = private unnamed_addr constant [95 x i8] c"Ethernet address not meeting our multi-MAC standards. Falling back to random hadware address.\0A\00", align 1
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atse_softc*)* @atse_get_eth_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atse_get_eth_address(%struct.atse_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atse_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atse_softc* %0, %struct.atse_softc** %3, align 8
  %7 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %8 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %15 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %22 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %13, %1
  store i32 0, i32* %2, align 4
  br label %354

28:                                               ; preds = %20
  %29 = load i32, i32* @atse_ethernet_option_bits_flag, align 4
  %30 = load i32, i32* @ATSE_ETHERNET_OPTION_BITS_READ, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %284

34:                                               ; preds = %28
  %35 = load i32*, i32** @atse_ethernet_option_bits, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 24
  store i32 %38, i32* %5, align 4
  %39 = load i32*, i32** @atse_ethernet_option_bits, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32*, i32** @atse_ethernet_option_bits, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32*, i32** @atse_ethernet_option_bits, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @le32toh(i32 23294)
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %34
  %60 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %61 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %284

65:                                               ; preds = %34
  %66 = load i32*, i32** @atse_ethernet_option_bits, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %70 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %68, i32* %72, align 4
  %73 = load i32*, i32** @atse_ethernet_option_bits, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %77 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 %75, i32* %79, align 4
  %80 = load i32*, i32** @atse_ethernet_option_bits, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %84 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 %82, i32* %86, align 4
  %87 = load i32*, i32** @atse_ethernet_option_bits, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %91 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  store i32 %89, i32* %93, align 4
  %94 = load i32*, i32** @atse_ethernet_option_bits, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %98 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  store i32 %96, i32* %100, align 4
  %101 = load i32*, i32** @atse_ethernet_option_bits, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 9
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %105 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 5
  store i32 %103, i32* %107, align 4
  %108 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %109 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %158

114:                                              ; preds = %65
  %115 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %116 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 7
  br i1 %120, label %121, label %158

121:                                              ; preds = %114
  %122 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %123 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 237
  br i1 %127, label %128, label %158

128:                                              ; preds = %121
  %129 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %130 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 255
  br i1 %134, label %135, label %158

135:                                              ; preds = %128
  %136 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %137 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 237
  br i1 %141, label %142, label %158

142:                                              ; preds = %135
  %143 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %144 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 5
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 21
  br i1 %148, label %149, label %158

149:                                              ; preds = %142
  %150 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %151 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i8*, ...) @device_printf(i32 %152, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.1, i64 0, i64 0))
  %154 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %155 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @device_printf(i32 %156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %284

158:                                              ; preds = %142, %135, %128, %121, %114, %65
  %159 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %160 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %209

165:                                              ; preds = %158
  %166 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %167 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %209

172:                                              ; preds = %165
  %173 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %174 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %209

179:                                              ; preds = %172
  %180 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %181 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %209

186:                                              ; preds = %179
  %187 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %188 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 4
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %209

193:                                              ; preds = %186
  %194 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %195 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 5
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %193
  %201 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %202 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i32, i8*, ...) @device_printf(i32 %203, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0))
  %205 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %206 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i32, i8*, ...) @device_printf(i32 %207, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %284

209:                                              ; preds = %193, %186, %179, %172, %165, %158
  %210 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %211 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = call i64 @ETHER_IS_MULTICAST(i32* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %209
  %216 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %217 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32, i8*, ...) @device_printf(i32 %218, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0))
  %220 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %221 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32, i8*, ...) @device_printf(i32 %222, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %284

224:                                              ; preds = %209
  %225 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %226 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @device_get_unit(i32 %227)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  store i32 0, i32* %2, align 4
  br label %354

232:                                              ; preds = %224
  %233 = load i32, i32* %6, align 4
  %234 = icmp sgt i32 %233, 15
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %237 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (i32, i8*, ...) @device_printf(i32 %238, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.5, i64 0, i64 0))
  br label %284

240:                                              ; preds = %232
  %241 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %242 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, -3
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %270, label %248

248:                                              ; preds = %240
  %249 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %250 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 7
  br i1 %254, label %270, label %255

255:                                              ; preds = %248
  %256 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %257 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 2
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 237
  br i1 %261, label %270, label %262

262:                                              ; preds = %255
  %263 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %264 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 5
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, 15
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %262, %255, %248, %240
  %271 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %272 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i32 (i32, i8*, ...) @device_printf(i32 %273, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  br label %284

275:                                              ; preds = %262
  %276 = load i32, i32* %6, align 4
  %277 = and i32 %276, 15
  %278 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %279 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 5
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %277
  store i32 %283, i32* %281, align 4
  store i32 0, i32* %2, align 4
  br label %354

284:                                              ; preds = %270, %235, %215, %200, %149, %59, %33
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @getcredhostid(i32 %287, i64* %4)
  %289 = load i64, i64* %4, align 8
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %309

291:                                              ; preds = %284
  %292 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %293 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %296 = call i32 @arc4rand(i32* %294, i32 %295, i32 1)
  %297 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %298 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = load i32, i32* %300, align 4
  %302 = and i32 %301, -2
  store i32 %302, i32* %300, align 4
  %303 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %304 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, 2
  store i32 %308, i32* %306, align 4
  br label %353

309:                                              ; preds = %284
  %310 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %311 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 0
  store i32 2, i32* %313, align 4
  %314 = load i64, i64* %4, align 8
  %315 = lshr i64 %314, 24
  %316 = and i64 %315, 255
  %317 = trunc i64 %316 to i32
  %318 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %319 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  store i32 %317, i32* %321, align 4
  %322 = load i64, i64* %4, align 8
  %323 = lshr i64 %322, 16
  %324 = and i64 %323, 255
  %325 = trunc i64 %324 to i32
  %326 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %327 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 2
  store i32 %325, i32* %329, align 4
  %330 = load i64, i64* %4, align 8
  %331 = lshr i64 %330, 8
  %332 = and i64 %331, 255
  %333 = trunc i64 %332 to i32
  %334 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %335 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 3
  store i32 %333, i32* %337, align 4
  %338 = load i64, i64* %4, align 8
  %339 = and i64 %338, 255
  %340 = trunc i64 %339 to i32
  %341 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %342 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 4
  store i32 %340, i32* %344, align 4
  %345 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %346 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = and i32 %347, 255
  %349 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %350 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 5
  store i32 %348, i32* %352, align 4
  br label %353

353:                                              ; preds = %309, %291
  store i32 0, i32* %2, align 4
  br label %354

354:                                              ; preds = %353, %275, %231, %27
  %355 = load i32, i32* %2, align 4
  ret i32 %355
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @ETHER_IS_MULTICAST(i32*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @getcredhostid(i32, i64*) #1

declare dso_local i32 @arc4rand(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
