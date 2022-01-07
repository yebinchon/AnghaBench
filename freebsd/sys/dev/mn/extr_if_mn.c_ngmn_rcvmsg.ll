; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_ngmn_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_ngmn_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn_softc = type { i64, i64, %struct.schan**, i32, i32, i32 }
%struct.schan = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32 }
%struct.ng_mesg = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@NGM_GENERIC_COOKIE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NGM_TEXT_CONFIG = common dso_local global i64 0, align 8
@NGM_TEXT_STATUS = common dso_local global i64 0, align 8
@NG_TEXTRESPONSE = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Framer status %b;\0A\00", align 1
@.str.1 = private unnamed_addr constant [167 x i8] c"\10 LOS\1FAIS\1ELFA\1DRRA\1CAUXP\1BNMF\1ALMFA\19frs0.0\18frs1.7\17TS16RA\16TS16LOS\15TS16AIS\14TS16LFA\13frs1.2\12XLS\11XLO\10RS1\0Frsw.6\0ERRA\0DRY0\0CRY1\0BRY2\0ARY3\09RY4\08SI1\07SI2\06rsp.5\05rsp.4\04rsp.3\03RSIF\02RS13\01RS15\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"    Framing errors: %lu\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"  Code Violations: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"    Falc State %b;\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"    Falc IRQ %b\0A\00", align 1
@.str.6 = private unnamed_addr constant [145 x i8] c"\10 RME\1FRFS\1ET8MS\1DRMB\1CCASC\1BCRC4\1ASA6SC\19RPF\18b27\17RDO\16ALLS\15XDU\14XMB\13b22\12XLSC\11XPR\10FAR\0FLFA\0EMFAR\0DT400MS\0CAIS\0BLOS\0ARAR\09RA\08ES\07SEC\06LMFA16\05AIS16\04RA16\03API\02SLN\01SLP\00", align 1
@M32_CHAN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"  Chan %d <%s> \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"  Last Rx: \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%lu s\00", align 1
@time_second = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c", last RxErr: \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c", last Tx: \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%lu s\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"never\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"    RX error(s) %lu\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c" Short: %lu\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" CRC: %lu\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c" Mod8: %lu\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c" Long: %lu\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c" Abort: %lu\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c" Overflow: %lu\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"    Last error: %b  Prev error: %b\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\10\07SHORT\05CRC\04MOD8\03LONG\02ABORT\01OVERRUN\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"    Xmit bytes pending %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ngmn_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngmn_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mn_softc*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca %struct.schan*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ng_mesg*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %18 = call i32 @NGI_GET_MSG(i32 %16, %struct.ng_mesg* %17)
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.mn_softc* @NG_NODE_PRIVATE(i32 %19)
  store %struct.mn_softc* %20, %struct.mn_softc** %8, align 8
  %21 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %22 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NGM_GENERIC_COOKIE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @NG_FREE_ITEM(i32 %28)
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %31 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %30)
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %4, align 4
  br label %451

33:                                               ; preds = %3
  %34 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %35 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NGM_TEXT_CONFIG, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %42 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NGM_TEXT_STATUS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @NG_FREE_ITEM(i32 %48)
  %50 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %51 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %50)
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %4, align 4
  br label %451

53:                                               ; preds = %40, %33
  %54 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %55 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %56 = load i64, i64* @NG_TEXTRESPONSE, align 8
  %57 = add i64 32, %56
  %58 = load i32, i32* @M_NOWAIT, align 4
  %59 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %54, %struct.ng_mesg* %55, i64 %57, i32 %58)
  %60 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %61 = icmp eq %struct.ng_mesg* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @NG_FREE_ITEM(i32 %63)
  %65 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %66 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %65)
  %67 = load i32, i32* @ENOMEM, align 4
  store i32 %67, i32* %4, align 4
  br label %451

68:                                               ; preds = %53
  %69 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %70 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %76 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** %11, align 8
  br label %80

79:                                               ; preds = %68
  store i8* null, i8** %11, align 8
  br label %80

80:                                               ; preds = %79, %74
  %81 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %82 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  store i8 0, i8* %85, align 1
  %86 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %87 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NGM_TEXT_CONFIG, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %80
  %93 = load i32, i32* %5, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @ngmn_config(i32 %93, i8* %94, i8* %95)
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = add nsw i32 %98, 1
  %100 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %101 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %107 = call i32 @NG_RESPOND_MSG(i32 %103, i32 %104, i32 %105, %struct.ng_mesg* %106)
  %108 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %109 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %108)
  store i32 0, i32* %4, align 4
  br label %451

110:                                              ; preds = %80
  store i32 0, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i8*, i8** %12, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load %struct.mn_softc*, %struct.mn_softc** %8, align 8
  %116 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = call i64 (i8*, i8*, ...) @sprintf(i8* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %117, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i8*, i8** %12, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load %struct.mn_softc*, %struct.mn_softc** %8, align 8
  %128 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i64 (i8*, i8*, ...) @sprintf(i8* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %129)
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load i8*, i8** %12, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load %struct.mn_softc*, %struct.mn_softc** %8, align 8
  %140 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i64 (i8*, i8*, ...) @sprintf(i8* %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %141)
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load i8*, i8** %12, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  %151 = load %struct.mn_softc*, %struct.mn_softc** %8, align 8
  %152 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i64 (i8*, i8*, ...) @sprintf(i8* %150, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %153, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.1, i64 0, i64 0))
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i8*, i8** %12, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = load %struct.mn_softc*, %struct.mn_softc** %8, align 8
  %164 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i64 (i8*, i8*, ...) @sprintf(i8* %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %165, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.6, i64 0, i64 0))
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %171

171:                                              ; preds = %435, %110
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* @M32_CHAN, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %438

175:                                              ; preds = %171
  %176 = load %struct.mn_softc*, %struct.mn_softc** %8, align 8
  %177 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %176, i32 0, i32 2
  %178 = load %struct.schan**, %struct.schan*** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.schan*, %struct.schan** %178, i64 %180
  %182 = load %struct.schan*, %struct.schan** %181, align 8
  %183 = icmp ne %struct.schan* %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %175
  br label %435

185:                                              ; preds = %175
  %186 = load %struct.mn_softc*, %struct.mn_softc** %8, align 8
  %187 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %186, i32 0, i32 2
  %188 = load %struct.schan**, %struct.schan*** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.schan*, %struct.schan** %188, i64 %190
  %192 = load %struct.schan*, %struct.schan** %191, align 8
  store %struct.schan* %192, %struct.schan** %10, align 8
  %193 = load i8*, i8** %12, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i32, i32* %14, align 4
  %198 = load %struct.schan*, %struct.schan** %10, align 8
  %199 = getelementptr inbounds %struct.schan, %struct.schan* %198, i32 0, i32 13
  %200 = load i32, i32* %199, align 8
  %201 = call i8* @NG_HOOK_NAME(i32 %200)
  %202 = call i64 (i8*, i8*, ...) @sprintf(i8* %196, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %197, i8* %201)
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %204, %202
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %13, align 4
  %207 = load i8*, i8** %12, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = call i64 (i8*, i8*, ...) @sprintf(i8* %210, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %13, align 4
  %216 = load %struct.schan*, %struct.schan** %10, align 8
  %217 = getelementptr inbounds %struct.schan, %struct.schan* %216, i32 0, i32 12
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %185
  %221 = load i8*, i8** %12, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  %225 = load i64, i64* @time_second, align 8
  %226 = load %struct.schan*, %struct.schan** %10, align 8
  %227 = getelementptr inbounds %struct.schan, %struct.schan* %226, i32 0, i32 12
  %228 = load i64, i64* %227, align 8
  %229 = sub nsw i64 %225, %228
  %230 = call i64 (i8*, i8*, ...) @sprintf(i8* %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 %229)
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %232, %230
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %13, align 4
  br label %245

235:                                              ; preds = %185
  %236 = load i8*, i8** %12, align 8
  %237 = load i32, i32* %13, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  %240 = call i64 (i8*, i8*, ...) @sprintf(i8* %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %242, %240
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %13, align 4
  br label %245

245:                                              ; preds = %235, %220
  %246 = load i8*, i8** %12, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = call i64 (i8*, i8*, ...) @sprintf(i8* %249, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = add nsw i64 %252, %250
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %13, align 4
  %255 = load %struct.schan*, %struct.schan** %10, align 8
  %256 = getelementptr inbounds %struct.schan, %struct.schan* %255, i32 0, i32 11
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %274

259:                                              ; preds = %245
  %260 = load i8*, i8** %12, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = load i64, i64* @time_second, align 8
  %265 = load %struct.schan*, %struct.schan** %10, align 8
  %266 = getelementptr inbounds %struct.schan, %struct.schan* %265, i32 0, i32 11
  %267 = load i64, i64* %266, align 8
  %268 = sub nsw i64 %264, %267
  %269 = call i64 (i8*, i8*, ...) @sprintf(i8* %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 %268)
  %270 = load i32, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %271, %269
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %13, align 4
  br label %284

274:                                              ; preds = %245
  %275 = load i8*, i8** %12, align 8
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = call i64 (i8*, i8*, ...) @sprintf(i8* %278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %281, %279
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %13, align 4
  br label %284

284:                                              ; preds = %274, %259
  %285 = load i8*, i8** %12, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %285, i64 %287
  %289 = call i64 (i8*, i8*, ...) @sprintf(i8* %288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %290 = load i32, i32* %13, align 4
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %291, %289
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %13, align 4
  %294 = load %struct.schan*, %struct.schan** %10, align 8
  %295 = getelementptr inbounds %struct.schan, %struct.schan* %294, i32 0, i32 10
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %313

298:                                              ; preds = %284
  %299 = load i8*, i8** %12, align 8
  %300 = load i32, i32* %13, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = load i64, i64* @time_second, align 8
  %304 = load %struct.schan*, %struct.schan** %10, align 8
  %305 = getelementptr inbounds %struct.schan, %struct.schan* %304, i32 0, i32 10
  %306 = load i64, i64* %305, align 8
  %307 = sub nsw i64 %303, %306
  %308 = call i64 (i8*, i8*, ...) @sprintf(i8* %302, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 %307)
  %309 = load i32, i32* %13, align 4
  %310 = sext i32 %309 to i64
  %311 = add nsw i64 %310, %308
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %13, align 4
  br label %323

313:                                              ; preds = %284
  %314 = load i8*, i8** %12, align 8
  %315 = load i32, i32* %13, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  %318 = call i64 (i8*, i8*, ...) @sprintf(i8* %317, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %319 = load i32, i32* %13, align 4
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %320, %318
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %13, align 4
  br label %323

323:                                              ; preds = %313, %298
  %324 = load i8*, i8** %12, align 8
  %325 = load i32, i32* %13, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* %324, i64 %326
  %328 = load %struct.schan*, %struct.schan** %10, align 8
  %329 = getelementptr inbounds %struct.schan, %struct.schan* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = call i64 (i8*, i8*, ...) @sprintf(i8* %327, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i64 %330)
  %332 = load i32, i32* %13, align 4
  %333 = sext i32 %332 to i64
  %334 = add nsw i64 %333, %331
  %335 = trunc i64 %334 to i32
  store i32 %335, i32* %13, align 4
  %336 = load i8*, i8** %12, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  %340 = load %struct.schan*, %struct.schan** %10, align 8
  %341 = getelementptr inbounds %struct.schan, %struct.schan* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = call i64 (i8*, i8*, ...) @sprintf(i8* %339, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i64 %342)
  %344 = load i32, i32* %13, align 4
  %345 = sext i32 %344 to i64
  %346 = add nsw i64 %345, %343
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* %13, align 4
  %348 = load i8*, i8** %12, align 8
  %349 = load i32, i32* %13, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %348, i64 %350
  %352 = load %struct.schan*, %struct.schan** %10, align 8
  %353 = getelementptr inbounds %struct.schan, %struct.schan* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = call i64 (i8*, i8*, ...) @sprintf(i8* %351, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i64 %354)
  %356 = load i32, i32* %13, align 4
  %357 = sext i32 %356 to i64
  %358 = add nsw i64 %357, %355
  %359 = trunc i64 %358 to i32
  store i32 %359, i32* %13, align 4
  %360 = load i8*, i8** %12, align 8
  %361 = load i32, i32* %13, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %360, i64 %362
  %364 = load %struct.schan*, %struct.schan** %10, align 8
  %365 = getelementptr inbounds %struct.schan, %struct.schan* %364, i32 0, i32 3
  %366 = load i64, i64* %365, align 8
  %367 = call i64 (i8*, i8*, ...) @sprintf(i8* %363, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i64 %366)
  %368 = load i32, i32* %13, align 4
  %369 = sext i32 %368 to i64
  %370 = add nsw i64 %369, %367
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %13, align 4
  %372 = load i8*, i8** %12, align 8
  %373 = load i32, i32* %13, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* %372, i64 %374
  %376 = load %struct.schan*, %struct.schan** %10, align 8
  %377 = getelementptr inbounds %struct.schan, %struct.schan* %376, i32 0, i32 4
  %378 = load i64, i64* %377, align 8
  %379 = call i64 (i8*, i8*, ...) @sprintf(i8* %375, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i64 %378)
  %380 = load i32, i32* %13, align 4
  %381 = sext i32 %380 to i64
  %382 = add nsw i64 %381, %379
  %383 = trunc i64 %382 to i32
  store i32 %383, i32* %13, align 4
  %384 = load i8*, i8** %12, align 8
  %385 = load i32, i32* %13, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i8, i8* %384, i64 %386
  %388 = load %struct.schan*, %struct.schan** %10, align 8
  %389 = getelementptr inbounds %struct.schan, %struct.schan* %388, i32 0, i32 5
  %390 = load i64, i64* %389, align 8
  %391 = call i64 (i8*, i8*, ...) @sprintf(i8* %387, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 %390)
  %392 = load i32, i32* %13, align 4
  %393 = sext i32 %392 to i64
  %394 = add nsw i64 %393, %391
  %395 = trunc i64 %394 to i32
  store i32 %395, i32* %13, align 4
  %396 = load i8*, i8** %12, align 8
  %397 = load i32, i32* %13, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, i8* %396, i64 %398
  %400 = load %struct.schan*, %struct.schan** %10, align 8
  %401 = getelementptr inbounds %struct.schan, %struct.schan* %400, i32 0, i32 6
  %402 = load i64, i64* %401, align 8
  %403 = call i64 (i8*, i8*, ...) @sprintf(i8* %399, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i64 %402)
  %404 = load i32, i32* %13, align 4
  %405 = sext i32 %404 to i64
  %406 = add nsw i64 %405, %403
  %407 = trunc i64 %406 to i32
  store i32 %407, i32* %13, align 4
  %408 = load i8*, i8** %12, align 8
  %409 = load i32, i32* %13, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8, i8* %408, i64 %410
  %412 = load %struct.schan*, %struct.schan** %10, align 8
  %413 = getelementptr inbounds %struct.schan, %struct.schan* %412, i32 0, i32 9
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.schan*, %struct.schan** %10, align 8
  %416 = getelementptr inbounds %struct.schan, %struct.schan* %415, i32 0, i32 8
  %417 = load i32, i32* %416, align 8
  %418 = call i64 (i8*, i8*, ...) @sprintf(i8* %411, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i32 %414, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i32 %417, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0))
  %419 = load i32, i32* %13, align 4
  %420 = sext i32 %419 to i64
  %421 = add nsw i64 %420, %418
  %422 = trunc i64 %421 to i32
  store i32 %422, i32* %13, align 4
  %423 = load i8*, i8** %12, align 8
  %424 = load i32, i32* %13, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, i8* %423, i64 %425
  %427 = load %struct.schan*, %struct.schan** %10, align 8
  %428 = getelementptr inbounds %struct.schan, %struct.schan* %427, i32 0, i32 7
  %429 = load i64, i64* %428, align 8
  %430 = call i64 (i8*, i8*, ...) @sprintf(i8* %426, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i64 %429)
  %431 = load i32, i32* %13, align 4
  %432 = sext i32 %431 to i64
  %433 = add nsw i64 %432, %430
  %434 = trunc i64 %433 to i32
  store i32 %434, i32* %13, align 4
  br label %435

435:                                              ; preds = %323, %184
  %436 = load i32, i32* %14, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %14, align 4
  br label %171

438:                                              ; preds = %171
  %439 = load i32, i32* %13, align 4
  %440 = add nsw i32 %439, 1
  %441 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %442 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %442, i32 0, i32 2
  store i32 %440, i32* %443, align 8
  %444 = load i32, i32* %14, align 4
  %445 = load i32, i32* %5, align 4
  %446 = load i32, i32* %6, align 4
  %447 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %448 = call i32 @NG_RESPOND_MSG(i32 %444, i32 %445, i32 %446, %struct.ng_mesg* %447)
  %449 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %450 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %449)
  store i32 0, i32* %4, align 4
  br label %451

451:                                              ; preds = %438, %92, %62, %47, %27
  %452 = load i32, i32* %4, align 4
  ret i32 %452
}

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local %struct.mn_softc* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i64, i32) #1

declare dso_local i32 @ngmn_config(i32, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @NG_HOOK_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
