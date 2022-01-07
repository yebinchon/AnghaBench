; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_read_nicid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_read_nicid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_card_ident = type { i8*, i64, i64 }
%struct.wi_softc = type { i64, i32, i8*, i32, i32, i32 }

@WI_RID_CARD_ID = common dso_local global i32 0, align 4
@WI_NOTYPE = common dso_local global i64 0, align 8
@wi_card_ident = common dso_local global %struct.wi_card_ident* null, align 8
@WI_INTERSIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Unknown Prism chip\00", align 1
@WI_LUCENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Unknown Lucent chip\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"using %s\0A\00", align 1
@WI_RID_PRI_IDENTITY = common dso_local global i32 0, align 4
@WI_RID_STA_IDENTITY = common dso_local global i32 0, align 4
@WI_RID_SYMBOL_IDENTITY = common dso_local global i32 0, align 4
@WI_SYMBOL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"%s Firmware: \00", align 1
@wi_firmware_names = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Primary (%u.%u.%u), \00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Station (%u.%u.%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wi_softc*)* @wi_read_nicid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wi_read_nicid(%struct.wi_softc* %0) #0 {
  %2 = alloca %struct.wi_softc*, align 8
  %3 = alloca %struct.wi_card_ident*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca [12 x i8], align 1
  store %struct.wi_softc* %0, %struct.wi_softc** %2, align 8
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i32 0, i32 4)
  store i32 4, i32* %5, align 4
  %10 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %11 = load i32, i32* @WI_RID_CARD_ID, align 4
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %13 = call i64 @wi_read_rid(%struct.wi_softc* %10, i32 %11, i8* %12, i32* %5)
  %14 = load i64, i64* @WI_NOTYPE, align 8
  %15 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %16 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @le16toh(i8 signext %18)
  %20 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %21 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.wi_card_ident*, %struct.wi_card_ident** @wi_card_ident, align 8
  store %struct.wi_card_ident* %22, %struct.wi_card_ident** %3, align 8
  br label %23

23:                                               ; preds = %49, %1
  %24 = load %struct.wi_card_ident*, %struct.wi_card_ident** %3, align 8
  %25 = getelementptr inbounds %struct.wi_card_ident, %struct.wi_card_ident* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %30 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = load %struct.wi_card_ident*, %struct.wi_card_ident** %3, align 8
  %34 = getelementptr inbounds %struct.wi_card_ident, %struct.wi_card_ident* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load %struct.wi_card_ident*, %struct.wi_card_ident** %3, align 8
  %39 = getelementptr inbounds %struct.wi_card_ident, %struct.wi_card_ident* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %42 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.wi_card_ident*, %struct.wi_card_ident** %3, align 8
  %44 = getelementptr inbounds %struct.wi_card_ident, %struct.wi_card_ident* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %47 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %52

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.wi_card_ident*, %struct.wi_card_ident** %3, align 8
  %51 = getelementptr inbounds %struct.wi_card_ident, %struct.wi_card_ident* %50, i32 1
  store %struct.wi_card_ident* %51, %struct.wi_card_ident** %3, align 8
  br label %23

52:                                               ; preds = %37, %23
  %53 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %54 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @WI_NOTYPE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %60 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 32768
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i64, i64* @WI_INTERSIL, align 8
  %66 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %67 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %69 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %68, i32 0, i32 2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %69, align 8
  br label %76

70:                                               ; preds = %58
  %71 = load i64, i64* @WI_LUCENT, align 8
  %72 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %73 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %75 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %74, i32 0, i32 2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %75, align 8
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %52
  %78 = load i64, i64* @bootverbose, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %82 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %85 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %80, %77
  %89 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %90 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @WI_LUCENT, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %88
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %96 = call i32 @memset(i8* %95, i32 0, i32 4)
  store i32 4, i32* %5, align 4
  %97 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %98 = load i32, i32* @WI_RID_PRI_IDENTITY, align 4
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %100 = call i64 @wi_read_rid(%struct.wi_softc* %97, i32 %98, i8* %99, i32* %5)
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %102 = load i8, i8* %101, align 1
  %103 = call i32 @le16toh(i8 signext %102)
  %104 = mul nsw i32 %103, 10000
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @le16toh(i8 signext %106)
  %108 = mul nsw i32 %107, 100
  %109 = add nsw i32 %104, %108
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = call i32 @le16toh(i8 signext %111)
  %113 = add nsw i32 %109, %112
  %114 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %115 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %94, %88
  %117 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %118 = call i32 @memset(i8* %117, i32 0, i32 4)
  store i32 4, i32* %5, align 4
  %119 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %120 = load i32, i32* @WI_RID_STA_IDENTITY, align 4
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %122 = call i64 @wi_read_rid(%struct.wi_softc* %119, i32 %120, i8* %121, i32* %5)
  %123 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %124 = load i8, i8* %123, align 1
  %125 = call i32 @le16toh(i8 signext %124)
  %126 = mul nsw i32 %125, 10000
  %127 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  %128 = load i8, i8* %127, align 1
  %129 = call i32 @le16toh(i8 signext %128)
  %130 = mul nsw i32 %129, 100
  %131 = add nsw i32 %126, %130
  %132 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = call i32 @le16toh(i8 signext %133)
  %135 = add nsw i32 %131, %134
  %136 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %137 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %139 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @WI_INTERSIL, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %224

143:                                              ; preds = %116
  %144 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %145 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 10102
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %150 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 20102
  br i1 %152, label %153, label %224

153:                                              ; preds = %148, %143
  %154 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %155 = call i32 @memset(i8* %154, i32 0, i32 12)
  store i32 12, i32* %5, align 4
  %156 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %157 = load i32, i32* @WI_RID_SYMBOL_IDENTITY, align 4
  %158 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %159 = call i64 @wi_read_rid(%struct.wi_softc* %156, i32 %157, i8* %158, i32* %5)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %223

161:                                              ; preds = %153
  %162 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  store i8* %162, i8** %4, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp sge i32 %164, 65
  br i1 %165, label %166, label %223

166:                                              ; preds = %161
  %167 = load i8*, i8** %4, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 46
  br i1 %171, label %172, label %223

172:                                              ; preds = %166
  %173 = load i8*, i8** %4, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 5
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 45
  br i1 %177, label %178, label %223

178:                                              ; preds = %172
  %179 = load i8*, i8** %4, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %223

184:                                              ; preds = %178
  %185 = load i64, i64* @WI_SYMBOL, align 8
  %186 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %187 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load i8*, i8** %4, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = sub nsw i32 %191, 48
  %193 = mul nsw i32 %192, 10000
  %194 = load i8*, i8** %4, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 3
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = sub nsw i32 %197, 48
  %199 = mul nsw i32 %198, 1000
  %200 = add nsw i32 %193, %199
  %201 = load i8*, i8** %4, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 4
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = sub nsw i32 %204, 48
  %206 = mul nsw i32 %205, 100
  %207 = add nsw i32 %200, %206
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 6
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = sub nsw i32 %211, 48
  %213 = mul nsw i32 %212, 10
  %214 = add nsw i32 %207, %213
  %215 = load i8*, i8** %4, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 7
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = sub nsw i32 %218, 48
  %220 = add nsw i32 %214, %219
  %221 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %222 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %184, %178, %172, %166, %161, %153
  br label %224

224:                                              ; preds = %223, %148, %116
  %225 = load i64, i64* @bootverbose, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %273

227:                                              ; preds = %224
  %228 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %229 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = load i8**, i8*** @wi_firmware_names, align 8
  %232 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %233 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds i8*, i8** %231, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @device_printf(i32 %230, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %236)
  %238 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %239 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @WI_LUCENT, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %258

243:                                              ; preds = %227
  %244 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %245 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = sdiv i32 %246, 10000
  %248 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %249 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = srem i32 %250, 10000
  %252 = sdiv i32 %251, 100
  %253 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %254 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = srem i32 %255, 100
  %257 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %247, i32 %252, i32 %256)
  br label %258

258:                                              ; preds = %243, %227
  %259 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %260 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = sdiv i32 %261, 10000
  %263 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %264 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = srem i32 %265, 10000
  %267 = sdiv i32 %266, 100
  %268 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %269 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = srem i32 %270, 100
  %272 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %262, i32 %267, i32 %271)
  br label %273

273:                                              ; preds = %258, %224
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @wi_read_rid(%struct.wi_softc*, i32, i8*, i32*) #1

declare dso_local i32 @le16toh(i8 signext) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
