; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_mboxcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_mboxcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32*, i32, i32, i32, i32, i32 }

@MAX_FC_OPCODE = common dso_local global i32 0, align 4
@ISP_LOGERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown Command 0x%x\00", align 1
@fc_mbcmd_names = common dso_local global i8** null, align 8
@MAX_SCSI_OPCODE = common dso_local global i32 0, align 4
@scsi_mbcmd_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"opcode %x\00", align 1
@ISP_LOGDEBUG3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Mailbox Command '%s'\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"no parameters for 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"IN mbox %d = 0x%04x\00", align 1
@BIU2400_HCCR = common dso_local global i32 0, align 4
@HCCR_2400_CMD_SET_HOST_INT = common dso_local global i32 0, align 4
@HCCR = common dso_local global i32 0, align 4
@HCCR_CMD_SET_HOST_INT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"OUT mbox %d = 0x%04x\00", align 1
@MBOX_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"INVALID COMMAND\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"HOST INTERFACE ERROR\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"TEST FAILED\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"COMMAND ERROR\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c" subcode 0x%x\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"COMMAND PARAMETER ERROR\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"PORT ID ALREADY IN USE\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"LOOP ID ALREADY IN USE\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"ALL LOOP IDS IN USE\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"NOT LOGGED IN\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"LINK DOWN ERROR\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"LOOPBACK ERROR\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"CHECKSUM ERROR\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"INVALID PRODUCT KEY\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"REGISTERS BUSY\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"TIMEOUT\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"error 0x%x\00", align 1
@ISP_LOGALL = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [35 x i8] c"Mailbox Command '%s' failed (%s%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*)* @isp_mboxcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_mboxcmd(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = call i64 @IS_FC(%struct.TYPE_15__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %2
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @MAX_FC_OPCODE, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 137, i32* %30, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = load i32, i32* @ISP_LOGERR, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @isp_prt(%struct.TYPE_15__* %31, i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %341

35:                                               ; preds = %22
  %36 = load i8**, i8*** @fc_mbcmd_names, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %5, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @ISP_FC_IBITS(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @ISP_FC_OBITS(i32 %43)
  store i32 %44, i32* %11, align 4
  br label %68

45:                                               ; preds = %2
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @MAX_SCSI_OPCODE, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 137, i32* %53, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = load i32, i32* @ISP_LOGERR, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @isp_prt(%struct.TYPE_15__* %54, i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %341

58:                                               ; preds = %45
  %59 = load i8**, i8*** @scsi_mbcmd_names, align 8
  %60 = load i32, i32* %13, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %5, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @ISP_SCSI_IBITS(i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @ISP_SCSI_OBITS(i32 %66)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %58, %35
  %69 = load i8*, i8** %5, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  store i8* %72, i8** %5, align 8
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @ISP_SNPRINTF(i8* %73, i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = load i32, i32* @ISP_LOGDEBUG3, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @isp_prt(%struct.TYPE_15__* %77, i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %76
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 139, i32* %110, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = load i32, i32* @ISP_LOGERR, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @isp_prt(%struct.TYPE_15__* %111, i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %341

115:                                              ; preds = %103, %76
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = call i64 @MBOX_ACQUIRE(%struct.TYPE_15__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 130, i32* %123, align 4
  br label %258

124:                                              ; preds = %115
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %172, %124
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %128 = call i32 @ISP_NMBOX(%struct.TYPE_15__* %127)
  %129 = icmp ult i32 %126, %128
  br i1 %129, label %130, label %175

130:                                              ; preds = %125
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %12, align 4
  %133 = shl i32 1, %132
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %130
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %138 = load i32, i32* @ISP_LOGDEBUG3, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @isp_prt(%struct.TYPE_15__* %137, i32 %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %139, i32 %146)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @MBOX_OFF(i32 %149)
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ISP_WRITE(%struct.TYPE_15__* %148, i32 %150, i32 %157)
  br label %159

159:                                              ; preds = %136, %130
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 0, i32* %165, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %159
  %173 = load i32, i32* %12, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %125

175:                                              ; preds = %125
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 3
  store i32 1, i32* %183, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %185 = call i64 @IS_24XX(%struct.TYPE_15__* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %175
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %189 = load i32, i32* @BIU2400_HCCR, align 4
  %190 = load i32, i32* @HCCR_2400_CMD_SET_HOST_INT, align 4
  %191 = call i32 @ISP_WRITE(%struct.TYPE_15__* %188, i32 %189, i32 %190)
  br label %197

192:                                              ; preds = %175
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %194 = load i32, i32* @HCCR, align 4
  %195 = load i32, i32* @HCCR_CMD_SET_HOST_INT, align 4
  %196 = call i32 @ISP_WRITE(%struct.TYPE_15__* %193, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %192, %187
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %200 = call i32 @MBOX_WAIT_COMPLETE(%struct.TYPE_15__* %198, %struct.TYPE_14__* %199)
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 128
  br i1 %206, label %207, label %212

207:                                              ; preds = %197
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 3
  store i32 0, i32* %209, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %211 = call i32 @MBOX_RELEASE(%struct.TYPE_15__* %210)
  br label %258

212:                                              ; preds = %197
  store i32 0, i32* %12, align 4
  br label %213

213:                                              ; preds = %250, %212
  %214 = load i32, i32* %12, align 4
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %216 = call i32 @ISP_NMBOX(%struct.TYPE_15__* %215)
  %217 = icmp ult i32 %214, %216
  br i1 %217, label %218, label %253

218:                                              ; preds = %213
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %12, align 4
  %221 = shl i32 1, %220
  %222 = and i32 %219, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %249

224:                                              ; preds = %218
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %12, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %12, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %231, i32* %237, align 4
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %239 = load i32, i32* @ISP_LOGDEBUG3, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %12, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @isp_prt(%struct.TYPE_15__* %238, i32 %239, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %240, i32 %247)
  br label %249

249:                                              ; preds = %224, %218
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %12, align 4
  %252 = add i32 %251, 1
  store i32 %252, i32* %12, align 4
  br label %213

253:                                              ; preds = %213
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 3
  store i32 0, i32* %255, align 8
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %257 = call i32 @MBOX_RELEASE(%struct.TYPE_15__* %256)
  br label %258

258:                                              ; preds = %253, %207, %119
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 8
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %271, label %263

263:                                              ; preds = %258
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %263, %258
  br label %341

272:                                              ; preds = %263
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, 49120
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %293

280:                                              ; preds = %272
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @MBLOGMASK(i32 %288)
  %290 = and i32 %283, %289
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %280
  br label %341

293:                                              ; preds = %280, %272
  store i8* null, i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  switch i32 %298, label %322 [
    i32 137, label %299
    i32 138, label %300
    i32 129, label %301
    i32 140, label %302
    i32 139, label %311
    i32 131, label %312
    i32 133, label %313
    i32 142, label %314
    i32 132, label %315
    i32 135, label %316
    i32 134, label %317
    i32 141, label %318
    i32 136, label %319
    i32 130, label %320
    i32 128, label %321
  ]

299:                                              ; preds = %293
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %331

300:                                              ; preds = %293
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %331

301:                                              ; preds = %293
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %331

302:                                              ; preds = %293
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  %303 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @ISP_SNPRINTF(i8* %303, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %308)
  %310 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  store i8* %310, i8** %7, align 8
  br label %331

311:                                              ; preds = %293
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %331

312:                                              ; preds = %293
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  br label %331

313:                                              ; preds = %293
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %331

314:                                              ; preds = %293
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8** %6, align 8
  br label %331

315:                                              ; preds = %293
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  br label %331

316:                                              ; preds = %293
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %6, align 8
  br label %331

317:                                              ; preds = %293
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8** %6, align 8
  br label %331

318:                                              ; preds = %293
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8** %6, align 8
  br label %331

319:                                              ; preds = %293
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8** %6, align 8
  br label %331

320:                                              ; preds = %293
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8** %6, align 8
  br label %331

321:                                              ; preds = %293
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8** %6, align 8
  br label %331

322:                                              ; preds = %293
  %323 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @ISP_SNPRINTF(i8* %323, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 %328)
  %330 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  store i8* %330, i8** %6, align 8
  br label %331

331:                                              ; preds = %322, %321, %320, %319, %318, %317, %316, %315, %314, %313, %312, %311, %302, %301, %300, %299
  %332 = load i8*, i8** %6, align 8
  %333 = icmp ne i8* %332, null
  br i1 %333, label %334, label %341

334:                                              ; preds = %331
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %336 = load i32, i32* @ISP_LOGALL, align 4
  %337 = load i8*, i8** %5, align 8
  %338 = load i8*, i8** %6, align 8
  %339 = load i8*, i8** %7, align 8
  %340 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @isp_prt(%struct.TYPE_15__* %335, i32 %336, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0), i8* %337, i8* %338, i8* %339)
  br label %341

341:                                              ; preds = %26, %49, %106, %271, %292, %334, %331
  ret void
}

declare dso_local i64 @IS_FC(%struct.TYPE_15__*) #1

declare dso_local i32 @isp_prt(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @ISP_FC_IBITS(i32) #1

declare dso_local i32 @ISP_FC_OBITS(i32) #1

declare dso_local i32 @ISP_SCSI_IBITS(i32) #1

declare dso_local i32 @ISP_SCSI_OBITS(i32) #1

declare dso_local i32 @ISP_SNPRINTF(i8*, i32, i8*, i32) #1

declare dso_local i64 @MBOX_ACQUIRE(%struct.TYPE_15__*) #1

declare dso_local i32 @ISP_NMBOX(%struct.TYPE_15__*) #1

declare dso_local i32 @ISP_WRITE(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @MBOX_OFF(i32) #1

declare dso_local i64 @IS_24XX(%struct.TYPE_15__*) #1

declare dso_local i32 @MBOX_WAIT_COMPLETE(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @MBOX_RELEASE(%struct.TYPE_15__*) #1

declare dso_local i32 @MBLOGMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
