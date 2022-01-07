; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/h4/extr_ng_h4.c_ng_h4_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/h4/extr_ng_h4.c_ng_h4_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.ng_mesg = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@EHOSTDOWN = common dso_local global i32 0, align 4
@NG_TEXTRESPONSE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Hook: %s\0ADebug: %d\0AState: %d\0AQueue: [have:%d,max:%d]\0AInput: [got:%d,want:%d]\00", align 1
@NG_H4_HOOK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@NG_H4_W4_PKT_IND = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_h4_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_h4_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @NG_NODE_PRIVATE(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %9, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EHOSTDOWN, align 4
  store i32 %19, i32* %4, align 4
  br label %239

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %23 = call i32 @NGI_GET_MSG(i32 %21, %struct.ng_mesg* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = call i32 @NG_H4_LOCK(%struct.TYPE_9__* %24)
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %27 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %226 [
    i32 138, label %30
    i32 137, label %83
  ]

30:                                               ; preds = %20
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %32 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %80 [
    i32 128, label %35
  ]

35:                                               ; preds = %30
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %37 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %38 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %39 = load i32, i32* @M_NOWAIT, align 4
  %40 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %36, %struct.ng_mesg* %37, i32 %38, i32 %39)
  %41 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %42 = icmp eq %struct.ng_mesg* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %11, align 4
  br label %79

45:                                               ; preds = %35
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %47 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i8*, i8** @NG_H4_HOOK, align 8
  br label %57

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i8* [ %55, %54 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %56 ]
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 5
  %67 = call i32 @_IF_QLEN(%struct.TYPE_10__* %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @snprintf(i64 %48, i32 %49, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %61, i32 %64, i32 %67, i32 %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %57, %43
  br label %82

80:                                               ; preds = %30
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %80, %79
  br label %228

83:                                               ; preds = %20
  %84 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %85 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %223 [
    i32 132, label %88
    i32 133, label %99
    i32 136, label %117
    i32 130, label %135
    i32 135, label %153
    i32 129, label %172
    i32 134, label %201
    i32 131, label %218
  ]

88:                                               ; preds = %83
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 5
  %91 = call i32 @_IF_DRAIN(%struct.TYPE_10__* %90)
  %92 = load i32, i32* @NG_H4_W4_PKT_IND, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  store i32 1, i32* %96, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  br label %225

99:                                               ; preds = %83
  %100 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %101 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %102 = load i32, i32* @M_NOWAIT, align 4
  %103 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %100, %struct.ng_mesg* %101, i32 4, i32 %102)
  %104 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %105 = icmp eq %struct.ng_mesg* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @ENOMEM, align 4
  store i32 %107, i32* %11, align 4
  br label %116

108:                                              ; preds = %99
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %113 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i32*
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %106
  br label %225

117:                                              ; preds = %83
  %118 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %119 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %120 = load i32, i32* @M_NOWAIT, align 4
  %121 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %118, %struct.ng_mesg* %119, i32 4, i32 %120)
  %122 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %123 = icmp eq %struct.ng_mesg* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* @ENOMEM, align 4
  store i32 %125, i32* %11, align 4
  br label %134

126:                                              ; preds = %117
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %131 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i32*
  store i32 %129, i32* %133, align 4
  br label %134

134:                                              ; preds = %126, %124
  br label %225

135:                                              ; preds = %83
  %136 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %137 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp ne i64 %140, 4
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @EMSGSIZE, align 4
  store i32 %143, i32* %11, align 4
  br label %152

144:                                              ; preds = %135
  %145 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %146 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %144, %142
  br label %225

153:                                              ; preds = %83
  %154 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %155 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %156 = load i32, i32* @M_NOWAIT, align 4
  %157 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %154, %struct.ng_mesg* %155, i32 4, i32 %156)
  %158 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %159 = icmp eq %struct.ng_mesg* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i32, i32* @ENOMEM, align 4
  store i32 %161, i32* %11, align 4
  br label %171

162:                                              ; preds = %153
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %168 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  store i32 %166, i32* %170, align 4
  br label %171

171:                                              ; preds = %162, %160
  br label %225

172:                                              ; preds = %83
  %173 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %174 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp ne i64 %177, 4
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = load i32, i32* @EMSGSIZE, align 4
  store i32 %180, i32* %11, align 4
  br label %200

181:                                              ; preds = %172
  %182 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %183 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = inttoptr i64 %184 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = icmp sle i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i32, i32* @EINVAL, align 4
  store i32 %189, i32* %11, align 4
  br label %199

190:                                              ; preds = %181
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 5
  %193 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %194 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_10__* %192, i32 %197)
  br label %199

199:                                              ; preds = %190, %188
  br label %200

200:                                              ; preds = %199, %179
  br label %225

201:                                              ; preds = %83
  %202 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %203 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %204 = load i32, i32* @M_NOWAIT, align 4
  %205 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %202, %struct.ng_mesg* %203, i32 4, i32 %204)
  %206 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %207 = icmp eq %struct.ng_mesg* %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  %209 = load i32, i32* @ENOMEM, align 4
  store i32 %209, i32* %11, align 4
  br label %217

210:                                              ; preds = %201
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 4
  %213 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %214 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @bcopy(i32* %212, i64 %215, i32 4)
  br label %217

217:                                              ; preds = %210, %208
  br label %225

218:                                              ; preds = %83
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @NG_H4_STAT_RESET(i32 %221)
  br label %225

223:                                              ; preds = %83
  %224 = load i32, i32* @EINVAL, align 4
  store i32 %224, i32* %11, align 4
  br label %225

225:                                              ; preds = %223, %218, %217, %200, %171, %152, %134, %116, %88
  br label %228

226:                                              ; preds = %20
  %227 = load i32, i32* @EINVAL, align 4
  store i32 %227, i32* %11, align 4
  br label %228

228:                                              ; preds = %226, %225, %82
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %230 = call i32 @NG_H4_UNLOCK(%struct.TYPE_9__* %229)
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* %6, align 4
  %234 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %235 = call i32 @NG_RESPOND_MSG(i32 %231, i32 %232, i32 %233, %struct.ng_mesg* %234)
  %236 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %237 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %236)
  %238 = load i32, i32* %11, align 4
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %228, %18
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i32 @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_H4_LOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @snprintf(i64, i32, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_IF_QLEN(%struct.TYPE_10__*) #1

declare dso_local i32 @_IF_DRAIN(%struct.TYPE_10__*) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bcopy(i32*, i64, i32) #1

declare dso_local i32 @NG_H4_STAT_RESET(i32) #1

declare dso_local i32 @NG_H4_UNLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
