; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_handle_wrerr_rpl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_handle_wrerr_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_error_cmd = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }

@FW_ERROR_CMD = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: Received WRERR_RPL message with opcode %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: FW_ERROR (%s) \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fatal\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"non-fatal\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"exception info:\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%08x\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"HW module regaddr %08x regval %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"WR cidx %d PF %d VF %d eqid %d hdr:\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s%02x\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"ACL cidx %d PF %d VF %d eqid %d %s\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"vlanid\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"type %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32*)* @t4_handle_wrerr_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_handle_wrerr_rpl(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fw_error_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.fw_error_cmd*
  store %struct.fw_error_cmd* %14, %struct.fw_error_cmd** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @FW_ERROR_CMD, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @device_get_nameunit(i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = call i32 (i32, i8*, ...) @log(i32 %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %233

27:                                               ; preds = %2
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load %struct.adapter*, %struct.adapter** %4, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_get_nameunit(i32 %31)
  %33 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @be32toh(i32 %35)
  %37 = call i64 @G_FW_ERROR_CMD_FATAL(i32 %36)
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %41 = call i32 (i32, i8*, ...) @log(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %40)
  %42 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @be32toh(i32 %44)
  %46 = call i32 @G_FW_ERROR_CMD_TYPE(i32 %45)
  switch i32 %46, label %223 [
    i32 130, label %47
    i32 129, label %82
    i32 128, label %97
    i32 131, label %157
  ]

47:                                               ; preds = %27
  %48 = load i32, i32* @LOG_ERR, align 4
  %49 = call i32 (i32, i8*, ...) @log(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %76, %47
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %53 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @nitems(i32* %56)
  %58 = icmp ult i32 %51, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %50
  %60 = load i32, i32* @LOG_ERR, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %65 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @be32toh(i32 %73)
  %75 = call i32 (i32, i8*, ...) @log(i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %64, i32 %74)
  br label %76

76:                                               ; preds = %59
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %50

79:                                               ; preds = %50
  %80 = load i32, i32* @LOG_ERR, align 4
  %81 = call i32 (i32, i8*, ...) @log(i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %232

82:                                               ; preds = %27
  %83 = load i32, i32* @LOG_ERR, align 4
  %84 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @be32toh(i32 %88)
  %90 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @be32toh(i32 %94)
  %96 = call i32 (i32, i8*, ...) @log(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %89, i32 %95)
  br label %232

97:                                               ; preds = %27
  %98 = load i32, i32* @LOG_ERR, align 4
  %99 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %100 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @be16toh(i32 %103)
  %105 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %106 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @be16toh(i32 %109)
  %111 = call i32 @G_FW_ERROR_CMD_PFN(i32 %110)
  %112 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @be16toh(i32 %116)
  %118 = call i32 @G_FW_ERROR_CMD_VFN(i32 %117)
  %119 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %120 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @be32toh(i32 %123)
  %125 = call i32 (i32, i8*, ...) @log(i32 %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %104, i32 %111, i32 %118, i32 %124)
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %151, %97
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @nitems(i32* %132)
  %134 = icmp ult i32 %127, %133
  br i1 %134, label %135, label %154

135:                                              ; preds = %126
  %136 = load i32, i32* @LOG_ERR, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %141 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %142 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i32, i8*, ...) @log(i32 %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %140, i32 %149)
  br label %151

151:                                              ; preds = %135
  %152 = load i32, i32* %8, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %126

154:                                              ; preds = %126
  %155 = load i32, i32* @LOG_ERR, align 4
  %156 = call i32 (i32, i8*, ...) @log(i32 %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %232

157:                                              ; preds = %27
  %158 = load i32, i32* @LOG_ERR, align 4
  %159 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %160 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @be16toh(i32 %163)
  %165 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %166 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @be16toh(i32 %169)
  %171 = call i32 @G_FW_ERROR_CMD_PFN(i32 %170)
  %172 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %173 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @be16toh(i32 %176)
  %178 = call i32 @G_FW_ERROR_CMD_VFN(i32 %177)
  %179 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %180 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @be32toh(i32 %183)
  %185 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %186 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @be16toh(i32 %189)
  %191 = call i32 @G_FW_ERROR_CMD_MV(i32 %190)
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)
  %195 = call i32 (i32, i8*, ...) @log(i32 %158, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %164, i32 %171, i32 %178, i32 %184, i8* %194)
  store i32 0, i32* %8, align 4
  br label %196

196:                                              ; preds = %217, %157
  %197 = load i32, i32* %8, align 4
  %198 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %199 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @nitems(i32* %202)
  %204 = icmp ult i32 %197, %203
  br i1 %204, label %205, label %220

205:                                              ; preds = %196
  %206 = load i32, i32* @LOG_ERR, align 4
  %207 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %208 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i32, i8*, ...) @log(i32 %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %205
  %218 = load i32, i32* %8, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %196

220:                                              ; preds = %196
  %221 = load i32, i32* @LOG_ERR, align 4
  %222 = call i32 (i32, i8*, ...) @log(i32 %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %232

223:                                              ; preds = %27
  %224 = load i32, i32* @LOG_ERR, align 4
  %225 = load %struct.fw_error_cmd*, %struct.fw_error_cmd** %7, align 8
  %226 = getelementptr inbounds %struct.fw_error_cmd, %struct.fw_error_cmd* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @be32toh(i32 %227)
  %229 = call i32 @G_FW_ERROR_CMD_TYPE(i32 %228)
  %230 = call i32 (i32, i8*, ...) @log(i32 %224, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* @EINVAL, align 4
  store i32 %231, i32* %3, align 4
  br label %233

232:                                              ; preds = %220, %154, %82, %79
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %232, %223, %18
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @log(i32, i8*, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @G_FW_ERROR_CMD_FATAL(i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @G_FW_ERROR_CMD_TYPE(i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @G_FW_ERROR_CMD_PFN(i32) #1

declare dso_local i32 @G_FW_ERROR_CMD_VFN(i32) #1

declare dso_local i32 @G_FW_ERROR_CMD_MV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
