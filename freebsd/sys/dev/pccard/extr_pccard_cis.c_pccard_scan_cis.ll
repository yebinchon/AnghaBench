; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_cis.c_pccard_scan_cis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_cis.c_pccard_scan_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_tuple = type { i32, i32, i32, i32, i64, i32 }
%struct.resource = type { i32 }
%struct.anon = type { i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@PCCARD_CIS_SIZE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can't alloc memory to read attributes\0A\00", align 1
@PCCARD_A_MEM_ATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cis mem map %#x (resource: %#jx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"CIS tuple chain:\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"CIS is too long -- truncating\0A\00", align 1
@CISTPL_END = common dso_local global i32 0, align 4
@CISTPL_NULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"CISTPL_END\0A ff\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"CISTPL_LONGLINK_%s too short %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"CISTPL_LONGLINK_%s %#lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"CISTPL_NO_LINK\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"CISTPL_CHECKSUM too short %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"CISTPL_CHECKSUM addr=%#lx len=%#lx cksum=%#x\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c" skipped, too distant\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c" failed sum=%#x\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"CIS checksum failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"CISTPL_LONGLINK_MFC too short %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"CISTPL_LONGLINK_MFC bogus length %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"CISTPL_LONGLINK_MFC %d\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c" bogus length %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"CISTPL_LONGLINK_MFC mfc count would blow stack\00", align 1
@PCCARD_MFC_MEM_COMMON = common dso_local global i8 0, align 1
@.str.21 = private unnamed_addr constant [9 x i8] c" %s:%#lx\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PCCARD_A_MEM_COM = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [17 x i8] c"cis mem map %#x\0A\00", align 1
@CISTPL_LINKTARGET = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [49 x i8] c"CISTPL_LINKTARGET expected, code %#02x observed\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"CISTPL_LINKTARGET too short %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"CISTPL_LINKTARGET magic %02x%02x%02x incorrect\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pccard_scan_cis(i32 %0, i32 %1, i64 (%struct.pccard_tuple*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64 (%struct.pccard_tuple*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pccard_tuple, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [51 x %struct.anon], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 (%struct.pccard_tuple*, i8*)* %2, i64 (%struct.pccard_tuple*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SYS_RES_MEMORY, align 4
  %30 = load i32, i32* @PCCARD_CIS_SIZE, align 4
  %31 = load i32, i32* @RF_ACTIVE, align 4
  %32 = call i32 @rman_make_alignment_flags(i32 65536)
  %33 = or i32 %31, %32
  %34 = call %struct.resource* @bus_alloc_resource_anywhere(i32 %28, i32 %29, i32* %11, i32 %30, i32 %33)
  store %struct.resource* %34, %struct.resource** %10, align 8
  %35 = load %struct.resource*, %struct.resource** %10, align 8
  %36 = icmp eq %struct.resource* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %510

40:                                               ; preds = %4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SYS_RES_MEMORY, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @PCCARD_A_MEM_ATTR, align 4
  %46 = call i32 @CARD_SET_RES_FLAGS(i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.resource*, %struct.resource** %10, align 8
  %48 = call i32 @rman_get_bustag(%struct.resource* %47)
  %49 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 5
  store i32 %48, i32* %49, align 8
  %50 = load %struct.resource*, %struct.resource** %10, align 8
  %51 = call i64 @rman_get_bushandle(%struct.resource* %50)
  %52 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 4
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.resource*, %struct.resource** %10, align 8
  %58 = call i32 @rman_get_start(%struct.resource* %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @DPRINTF(i8* %60)
  %62 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 1
  store i32 2, i32* %62, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @DEVPRINTF(i32 ptrtoint ([18 x i8]* @.str.2 to i32))
  br label %65

65:                                               ; preds = %40, %502
  br label %66

66:                                               ; preds = %65, %97, %356
  %67 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %68, %70
  %72 = load i32, i32* @PCCARD_CIS_SIZE, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sub nsw i32 %73, 32
  %75 = icmp sge i32 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @CISTPL_END, align 4
  %79 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  br label %86

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @pccard_cis_read_1(%struct.pccard_tuple* %12, i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %76
  %87 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CISTPL_NULL, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load i64 (%struct.pccard_tuple*, i8*)*, i64 (%struct.pccard_tuple*, i8*)** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i64 %92(%struct.pccard_tuple* %12, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 1, i32* %19, align 4
  br label %503

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %66

101:                                              ; preds = %86
  %102 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CISTPL_END, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i64 (%struct.pccard_tuple*, i8*)*, i64 (%struct.pccard_tuple*, i8*)** %8, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = call i64 %108(%struct.pccard_tuple* %12, i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 1, i32* %19, align 4
  br label %503

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %363

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  %122 = call i8* @pccard_cis_read_1(%struct.pccard_tuple* %12, i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  store i32 %123, i32* %124, align 4
  %125 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %349 [
    i32 131, label %127
    i32 130, label %127
    i32 128, label %163
    i32 132, label %171
    i32 129, label %250
  ]

127:                                              ; preds = %118, %118
  %128 = load i64 (%struct.pccard_tuple*, i8*)*, i64 (%struct.pccard_tuple*, i8*)** %8, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = call i64 %128(%struct.pccard_tuple* %12, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 1, i32* %19, align 4
  br label %503

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %135, 4
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %142 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = call i32 @DPRINTF(i8* %145)
  br label %356

147:                                              ; preds = %133
  store i32 1, i32* %13, align 4
  %148 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 130
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 1, i32 0
  store i32 %152, i32* %14, align 4
  %153 = call i8* @pccard_tuple_read_4(%struct.pccard_tuple* %12, i32 0)
  %154 = ptrtoint i8* %153 to i32
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i8*
  %162 = call i32 @DPRINTF(i8* %161)
  br label %356

163:                                              ; preds = %118
  %164 = load i64 (%struct.pccard_tuple*, i8*)*, i64 (%struct.pccard_tuple*, i8*)** %8, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = call i64 %164(%struct.pccard_tuple* %12, i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 1, i32* %19, align 4
  br label %503

169:                                              ; preds = %163
  store i32 0, i32* %13, align 4
  %170 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %356

171:                                              ; preds = %118
  %172 = load i64 (%struct.pccard_tuple*, i8*)*, i64 (%struct.pccard_tuple*, i8*)** %8, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = call i64 %172(%struct.pccard_tuple* %12, i8* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  store i32 1, i32* %19, align 4
  br label %503

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %179, 5
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = call i32 @DPRINTF(i8* %185)
  br label %356

187:                                              ; preds = %177
  %188 = call i32 @pccard_tuple_read_2(%struct.pccard_tuple* %12, i32 0)
  store i32 %188, i32* %20, align 4
  %189 = call i32 @pccard_tuple_read_2(%struct.pccard_tuple* %12, i32 2)
  store i32 %189, i32* %22, align 4
  %190 = call signext i8 @pccard_tuple_read_1(%struct.pccard_tuple* %12, i32 4)
  %191 = sext i8 %190 to i32
  store i32 %191, i32* %23, align 4
  %192 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %20, align 4
  %195 = add nsw i32 %193, %194
  store i32 %195, i32* %21, align 4
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* %22, align 4
  %198 = load i32, i32* %23, align 4
  %199 = sext i32 %198 to i64
  %200 = inttoptr i64 %199 to i8*
  %201 = call i32 @DPRINTF(i8* %200)
  %202 = load i32, i32* %21, align 4
  %203 = load i32, i32* @PCCARD_CIS_SIZE, align 4
  %204 = icmp sge i32 %202, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %187
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %22, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* @PCCARD_CIS_SIZE, align 4
  %210 = icmp sge i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %205, %187
  %212 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %356

213:                                              ; preds = %205
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %214

214:                                              ; preds = %232, %213
  %215 = load i32, i32* %25, align 4
  %216 = load i32, i32* %22, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %235

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load i32, i32* %21, align 4
  %224 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %25, align 4
  %227 = mul nsw i32 %225, %226
  %228 = add nsw i32 %223, %227
  %229 = call i32 @bus_space_read_1(i32 %220, i64 %222, i32 %228)
  %230 = load i32, i32* %24, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %24, align 4
  br label %232

232:                                              ; preds = %218
  %233 = load i32, i32* %25, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %25, align 4
  br label %214

235:                                              ; preds = %214
  %236 = load i32, i32* %23, align 4
  %237 = load i32, i32* %24, align 4
  %238 = and i32 %237, 255
  %239 = icmp ne i32 %236, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %235
  %241 = load i32, i32* %24, align 4
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to i8*
  %244 = call i32 @DPRINTF(i8* %243)
  %245 = load i32, i32* %7, align 4
  %246 = call i32 @device_printf(i32 %245, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %249

247:                                              ; preds = %235
  %248 = call i32 @DPRINTF(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %249

249:                                              ; preds = %247, %240
  br label %356

250:                                              ; preds = %118
  %251 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = icmp slt i32 %252, 1
  br i1 %253, label %254, label %260

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = inttoptr i64 %257 to i8*
  %259 = call i32 @DPRINTF(i8* %258)
  br label %356

260:                                              ; preds = %250
  %261 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %262, 1
  %264 = srem i32 %263, 5
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = inttoptr i64 %269 to i8*
  %271 = call i32 @DPRINTF(i8* %270)
  br label %356

272:                                              ; preds = %260
  %273 = call signext i8 @pccard_tuple_read_1(%struct.pccard_tuple* %12, i32 0)
  %274 = sext i8 %273 to i32
  store i32 %274, i32* %27, align 4
  %275 = load i32, i32* %27, align 4
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to i8*
  %278 = call i32 @DPRINTF(i8* %277)
  %279 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %27, align 4
  %282 = mul nsw i32 %281, 5
  %283 = add nsw i32 %282, 1
  %284 = icmp ne i32 %280, %283
  br i1 %284, label %285, label %291

285:                                              ; preds = %272
  %286 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = inttoptr i64 %288 to i8*
  %290 = call i32 @DPRINTF(i8* %289)
  br label %356

291:                                              ; preds = %272
  %292 = load i32, i32* %27, align 4
  %293 = call i32 @howmany(i32 408, i32 8)
  %294 = icmp sgt i32 %292, %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  br label %297

297:                                              ; preds = %295, %291
  %298 = load i32, i32* %27, align 4
  store i32 %298, i32* %16, align 4
  store i32 0, i32* %26, align 4
  br label %299

299:                                              ; preds = %344, %297
  %300 = load i32, i32* %26, align 4
  %301 = load i32, i32* %16, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %347

303:                                              ; preds = %299
  %304 = load i32, i32* %26, align 4
  %305 = mul nsw i32 5, %304
  %306 = add nsw i32 1, %305
  %307 = call signext i8 @pccard_tuple_read_1(%struct.pccard_tuple* %12, i32 %306)
  %308 = sext i8 %307 to i32
  %309 = load i8, i8* @PCCARD_MFC_MEM_COMMON, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp eq i32 %308, %310
  %312 = zext i1 %311 to i64
  %313 = select i1 %311, i32 1, i32 0
  %314 = load i32, i32* %26, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [51 x %struct.anon], [51 x %struct.anon]* %18, i64 0, i64 %315
  %317 = getelementptr inbounds %struct.anon, %struct.anon* %316, i32 0, i32 0
  store i32 %313, i32* %317, align 8
  %318 = load i32, i32* %26, align 4
  %319 = mul nsw i32 5, %318
  %320 = add nsw i32 1, %319
  %321 = add nsw i32 %320, 1
  %322 = call i8* @pccard_tuple_read_4(%struct.pccard_tuple* %12, i32 %321)
  %323 = ptrtoint i8* %322 to i32
  %324 = load i32, i32* %26, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [51 x %struct.anon], [51 x %struct.anon]* %18, i64 0, i64 %325
  %327 = getelementptr inbounds %struct.anon, %struct.anon* %326, i32 0, i32 1
  store i32 %323, i32* %327, align 4
  %328 = load i32, i32* %26, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [51 x %struct.anon], [51 x %struct.anon]* %18, i64 0, i64 %329
  %331 = getelementptr inbounds %struct.anon, %struct.anon* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = icmp ne i32 %332, 0
  %334 = zext i1 %333 to i64
  %335 = select i1 %333, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)
  %336 = load i32, i32* %26, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [51 x %struct.anon], [51 x %struct.anon]* %18, i64 0, i64 %337
  %339 = getelementptr inbounds %struct.anon, %struct.anon* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = inttoptr i64 %341 to i8*
  %343 = call i32 @DPRINTF(i8* %342)
  br label %344

344:                                              ; preds = %303
  %345 = load i32, i32* %26, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %26, align 4
  br label %299

347:                                              ; preds = %299
  %348 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %349

349:                                              ; preds = %118, %347
  %350 = load i64 (%struct.pccard_tuple*, i8*)*, i64 (%struct.pccard_tuple*, i8*)** %8, align 8
  %351 = load i8*, i8** %9, align 8
  %352 = call i64 %350(%struct.pccard_tuple* %12, i8* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %349
  store i32 1, i32* %19, align 4
  br label %503

355:                                              ; preds = %349
  br label %356

356:                                              ; preds = %355, %285, %266, %254, %249, %211, %181, %169, %147, %137
  %357 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 2, %358
  %360 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = add nsw i32 %361, %359
  store i32 %362, i32* %360, align 8
  br label %66

363:                                              ; preds = %113
  br label %364

364:                                              ; preds = %363, %454, %470, %488
  %365 = load i32, i32* %13, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %394

367:                                              ; preds = %364
  %368 = load i32, i32* %6, align 4
  %369 = load i32, i32* %7, align 4
  %370 = load i32, i32* @SYS_RES_MEMORY, align 4
  %371 = load i32, i32* %11, align 4
  %372 = load i32, i32* %14, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %376

374:                                              ; preds = %367
  %375 = load i32, i32* @PCCARD_A_MEM_COM, align 4
  br label %378

376:                                              ; preds = %367
  %377 = load i32, i32* @PCCARD_A_MEM_ATTR, align 4
  br label %378

378:                                              ; preds = %376, %374
  %379 = phi i32 [ %375, %374 ], [ %377, %376 ]
  %380 = call i32 @CARD_SET_RES_FLAGS(i32 %368, i32 %369, i32 %370, i32 %371, i32 %379)
  %381 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 4
  %382 = load i64, i64* %381, align 8
  %383 = trunc i64 %382 to i32
  %384 = zext i32 %383 to i64
  %385 = inttoptr i64 %384 to i8*
  %386 = call i32 @DPRINTF(i8* %385)
  %387 = load i32, i32* %14, align 4
  %388 = icmp ne i32 %387, 0
  %389 = zext i1 %388 to i64
  %390 = select i1 %388, i32 1, i32 2
  %391 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 1
  store i32 %390, i32* %391, align 4
  %392 = load i32, i32* %15, align 4
  %393 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  store i32 %392, i32* %393, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %444

394:                                              ; preds = %364
  %395 = load i32, i32* %16, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %442

397:                                              ; preds = %394
  %398 = load i32, i32* %17, align 4
  %399 = load i32, i32* %16, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %442

401:                                              ; preds = %397
  %402 = load i32, i32* %6, align 4
  %403 = load i32, i32* %7, align 4
  %404 = load i32, i32* @SYS_RES_MEMORY, align 4
  %405 = load i32, i32* %11, align 4
  %406 = load i32, i32* %17, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [51 x %struct.anon], [51 x %struct.anon]* %18, i64 0, i64 %407
  %409 = getelementptr inbounds %struct.anon, %struct.anon* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %401
  %413 = load i32, i32* @PCCARD_A_MEM_COM, align 4
  br label %416

414:                                              ; preds = %401
  %415 = load i32, i32* @PCCARD_A_MEM_ATTR, align 4
  br label %416

416:                                              ; preds = %414, %412
  %417 = phi i32 [ %413, %412 ], [ %415, %414 ]
  %418 = call i32 @CARD_SET_RES_FLAGS(i32 %402, i32 %403, i32 %404, i32 %405, i32 %417)
  %419 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 4
  %420 = load i64, i64* %419, align 8
  %421 = trunc i64 %420 to i32
  %422 = zext i32 %421 to i64
  %423 = inttoptr i64 %422 to i8*
  %424 = call i32 @DPRINTF(i8* %423)
  %425 = load i32, i32* %17, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [51 x %struct.anon], [51 x %struct.anon]* %18, i64 0, i64 %426
  %428 = getelementptr inbounds %struct.anon, %struct.anon* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = icmp ne i32 %429, 0
  %431 = zext i1 %430 to i64
  %432 = select i1 %430, i32 1, i32 2
  %433 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 1
  store i32 %432, i32* %433, align 4
  %434 = load i32, i32* %17, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [51 x %struct.anon], [51 x %struct.anon]* %18, i64 0, i64 %435
  %437 = getelementptr inbounds %struct.anon, %struct.anon* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  store i32 %438, i32* %439, align 8
  %440 = load i32, i32* %17, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %17, align 4
  br label %443

442:                                              ; preds = %397, %394
  br label %503

443:                                              ; preds = %416
  br label %444

444:                                              ; preds = %443, %378
  %445 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = call i8* @pccard_cis_read_1(%struct.pccard_tuple* %12, i32 %446)
  %448 = ptrtoint i8* %447 to i32
  %449 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 2
  store i32 %448, i32* %449, align 8
  %450 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @CISTPL_LINKTARGET, align 4
  %453 = icmp ne i32 %451, %452
  br i1 %453, label %454, label %460

454:                                              ; preds = %444
  %455 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 2
  %456 = load i32, i32* %455, align 8
  %457 = sext i32 %456 to i64
  %458 = inttoptr i64 %457 to i8*
  %459 = call i32 @DPRINTF(i8* %458)
  br label %364

460:                                              ; preds = %444
  %461 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = add nsw i32 %462, 1
  %464 = call i8* @pccard_cis_read_1(%struct.pccard_tuple* %12, i32 %463)
  %465 = ptrtoint i8* %464 to i32
  %466 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  store i32 %465, i32* %466, align 4
  %467 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %468 = load i32, i32* %467, align 4
  %469 = icmp slt i32 %468, 3
  br i1 %469, label %470, label %476

470:                                              ; preds = %460
  %471 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  %474 = inttoptr i64 %473 to i8*
  %475 = call i32 @DPRINTF(i8* %474)
  br label %364

476:                                              ; preds = %460
  %477 = call signext i8 @pccard_tuple_read_1(%struct.pccard_tuple* %12, i32 0)
  %478 = sext i8 %477 to i32
  %479 = icmp ne i32 %478, 67
  br i1 %479, label %488, label %480

480:                                              ; preds = %476
  %481 = call signext i8 @pccard_tuple_read_1(%struct.pccard_tuple* %12, i32 1)
  %482 = sext i8 %481 to i32
  %483 = icmp ne i32 %482, 73
  br i1 %483, label %488, label %484

484:                                              ; preds = %480
  %485 = call signext i8 @pccard_tuple_read_1(%struct.pccard_tuple* %12, i32 2)
  %486 = sext i8 %485 to i32
  %487 = icmp ne i32 %486, 83
  br i1 %487, label %488, label %495

488:                                              ; preds = %484, %480, %476
  %489 = call signext i8 @pccard_tuple_read_1(%struct.pccard_tuple* %12, i32 0)
  %490 = call signext i8 @pccard_tuple_read_1(%struct.pccard_tuple* %12, i32 1)
  %491 = call signext i8 @pccard_tuple_read_1(%struct.pccard_tuple* %12, i32 2)
  %492 = sext i8 %491 to i64
  %493 = inttoptr i64 %492 to i8*
  %494 = call i32 @DPRINTF(i8* %493)
  br label %364

495:                                              ; preds = %484
  %496 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 3
  %497 = load i32, i32* %496, align 4
  %498 = add nsw i32 2, %497
  %499 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %12, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = add nsw i32 %500, %498
  store i32 %501, i32* %499, align 8
  br label %502

502:                                              ; preds = %495
  br label %65

503:                                              ; preds = %442, %354, %176, %168, %132, %112, %96
  %504 = load i32, i32* %7, align 4
  %505 = load i32, i32* @SYS_RES_MEMORY, align 4
  %506 = load i32, i32* %11, align 4
  %507 = load %struct.resource*, %struct.resource** %10, align 8
  %508 = call i32 @bus_release_resource(i32 %504, i32 %505, i32 %506, %struct.resource* %507)
  %509 = load i32, i32* %19, align 4
  store i32 %509, i32* %5, align 4
  br label %510

510:                                              ; preds = %503, %37
  %511 = load i32, i32* %5, align 4
  ret i32 %511
}

declare dso_local %struct.resource* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @rman_make_alignment_flags(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CARD_SET_RES_FLAGS(i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i64 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @DEVPRINTF(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @pccard_cis_read_1(%struct.pccard_tuple*, i32) #1

declare dso_local i8* @pccard_tuple_read_4(%struct.pccard_tuple*, i32) #1

declare dso_local i32 @pccard_tuple_read_2(%struct.pccard_tuple*, i32) #1

declare dso_local signext i8 @pccard_tuple_read_1(%struct.pccard_tuple*, i32) #1

declare dso_local i32 @bus_space_read_1(i32, i64, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
