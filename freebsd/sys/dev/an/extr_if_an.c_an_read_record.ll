; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_read_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_read_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { %struct.TYPE_2__, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { %struct.an_reply*, i32 }
%struct.an_reply = type { i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32 }
%struct.an_ltv_gen = type { i32, i32, i32 }
%struct.an_card_rid_desc = type { i32, i32, i32, i64 }
%struct.an_command = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AN_CMD_ACCESS = common dso_local global i32 0, align 4
@AN_ACCESS_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RID access failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AN_BAP1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"seek to record failed\0A\00", align 1
@AN_DATA1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"record length mismatch -- expected %d, got %d for Rid %x\0A\00", align 1
@AN_RID_BUFFER_SIZE = common dso_local global i32 0, align 4
@AN_HOST_DESC_OFFSET = common dso_local global i64 0, align 8
@AN_CMD_QUAL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to read RID %x %x %x %x %x, %d\0A\00", align 1
@an_dump = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.an_softc*, %struct.an_ltv_gen*)* @an_read_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an_read_record(%struct.an_softc* %0, %struct.an_ltv_gen* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.an_softc*, align 8
  %5 = alloca %struct.an_ltv_gen*, align 8
  %6 = alloca %struct.an_ltv_gen*, align 8
  %7 = alloca %struct.an_card_rid_desc, align 8
  %8 = alloca %struct.an_command, align 4
  %9 = alloca %struct.an_reply, align 4
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.an_softc* %0, %struct.an_softc** %4, align 8
  store %struct.an_ltv_gen* %1, %struct.an_ltv_gen** %5, align 8
  %15 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %16 = call i32 @AN_LOCK_ASSERT(%struct.an_softc* %15)
  %17 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %18 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %23 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %267

28:                                               ; preds = %21
  %29 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %30 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %29, i32 0, i32 2
  %31 = load %struct.ifnet*, %struct.ifnet** %30, align 8
  store %struct.ifnet* %31, %struct.ifnet** %10, align 8
  %32 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %33 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %122, label %36

36:                                               ; preds = %28
  %37 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %38 = load i32, i32* @AN_CMD_ACCESS, align 4
  %39 = load i32, i32* @AN_ACCESS_READ, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %42 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @an_cmd(%struct.an_softc* %37, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %48 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  store i32 %49, i32* %3, align 4
  br label %267

50:                                               ; preds = %36
  %51 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %52 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %53 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AN_BAP1, align 4
  %56 = call i64 @an_seek(%struct.an_softc* %51, i32 %54, i32 0, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %60 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EIO, align 4
  store i32 %61, i32* %3, align 4
  br label %267

62:                                               ; preds = %50
  %63 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %64 = load i32, i32* @AN_DATA1, align 4
  %65 = call i8* @CSR_READ_2(%struct.an_softc* %63, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %69 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 2
  %72 = icmp sgt i32 %67, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %62
  %74 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %75 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %76 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 2
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %81 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %74, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79, i32 %82)
  %84 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %85 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 2
  store i32 %87, i32* %14, align 4
  br label %93

88:                                               ; preds = %62
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 2
  %91 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %92 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %73
  %94 = load i32, i32* %14, align 4
  %95 = sub nsw i32 %94, 2
  store i32 %95, i32* %14, align 4
  %96 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %97 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %96, i32 0, i32 1
  store i32* %97, i32** %11, align 8
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %109, %93
  %100 = load i32, i32* %13, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %104 = load i32, i32* @AN_DATA1, align 4
  %105 = call i8* @CSR_READ_2(%struct.an_softc* %103, i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %110, 2
  store i32 %111, i32* %13, align 4
  br label %99

112:                                              ; preds = %99
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32*, i32** %11, align 8
  store i32* %116, i32** %12, align 8
  %117 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %118 = load i32, i32* @AN_DATA1, align 4
  %119 = call i32 @CSR_READ_1(%struct.an_softc* %117, i32 %118)
  %120 = load i32*, i32** %12, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %112
  br label %259

122:                                              ; preds = %28
  %123 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %124 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load %struct.an_reply*, %struct.an_reply** %125, align 8
  %127 = icmp ne %struct.an_reply* %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @EIO, align 4
  store i32 %129, i32* %3, align 4
  br label %267

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %7, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load i32, i32* @AN_RID_BUFFER_SIZE, align 4
  %133 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %7, i32 0, i32 1
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %7, i32 0, i32 3
  store i64 0, i64* %134, align 8
  %135 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %136 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %7, i32 0, i32 2
  store i32 %138, i32* %139, align 8
  %140 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %141 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load %struct.an_reply*, %struct.an_reply** %142, align 8
  %144 = load i32, i32* @AN_RID_BUFFER_SIZE, align 4
  %145 = call i32 @bzero(%struct.an_reply* %143, i32 %144)
  %146 = bitcast %struct.an_command* %8 to %struct.an_reply*
  %147 = call i32 @bzero(%struct.an_reply* %146, i32 24)
  %148 = call i32 @bzero(%struct.an_reply* %9, i32 24)
  %149 = load i32, i32* @AN_CMD_ACCESS, align 4
  %150 = load i32, i32* @AN_ACCESS_READ, align 4
  %151 = or i32 %149, %150
  %152 = getelementptr inbounds %struct.an_command, %struct.an_command* %8, i32 0, i32 0
  store i32 %151, i32* %152, align 4
  %153 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %154 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.an_command, %struct.an_command* %8, i32 0, i32 5
  store i32 %155, i32* %156, align 4
  store i32 0, i32* %13, align 4
  br label %157

157:                                              ; preds = %175, %130
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp ult i64 %159, 6
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  %162 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %163 = load i64, i64* @AN_HOST_DESC_OFFSET, align 8
  %164 = load i32, i32* %13, align 4
  %165 = mul nsw i32 %164, 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %163, %166
  %168 = bitcast %struct.an_card_rid_desc* %7 to i8*
  %169 = bitcast i8* %168 to i32*
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @CSR_MEM_AUX_WRITE_4(%struct.an_softc* %162, i64 %167, i32 %173)
  br label %175

175:                                              ; preds = %161
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %157

178:                                              ; preds = %157
  %179 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %180 = bitcast %struct.an_command* %8 to %struct.an_reply*
  %181 = call i64 @an_cmd_struct(%struct.an_softc* %179, %struct.an_reply* %180, %struct.an_reply* %9)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %9, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @AN_CMD_QUAL_MASK, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %183, %178
  %190 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %191 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %192 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %9, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %9, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %9, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %9, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %190, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %193, i32 %195, i32 %197, i32 %199, i32 %201, i32 %202)
  %204 = load i32, i32* @EIO, align 4
  store i32 %204, i32* %3, align 4
  br label %267

205:                                              ; preds = %183
  %206 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %207 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load %struct.an_reply*, %struct.an_reply** %208, align 8
  %210 = bitcast %struct.an_reply* %209 to %struct.an_ltv_gen*
  store %struct.an_ltv_gen* %210, %struct.an_ltv_gen** %6, align 8
  %211 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %6, align 8
  %212 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 2
  %215 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %7, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %205
  %219 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %6, align 8
  %220 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %7, i32 0, i32 1
  store i32 %221, i32* %222, align 4
  br label %223

223:                                              ; preds = %218, %205
  %224 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %7, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %228 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %229, 2
  %231 = icmp sgt i32 %226, %230
  br i1 %231, label %232, label %247

232:                                              ; preds = %223
  %233 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %234 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %235 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %236, 2
  %238 = load i32, i32* %14, align 4
  %239 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %240 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %233, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %237, i32 %238, i32 %241)
  %243 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %244 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %245, 2
  store i32 %246, i32* %14, align 4
  br label %252

247:                                              ; preds = %223
  %248 = load i32, i32* %14, align 4
  %249 = add nsw i32 %248, 2
  %250 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %251 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 4
  br label %252

252:                                              ; preds = %247, %232
  %253 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %6, align 8
  %254 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %253, i32 0, i32 2
  %255 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %256 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %255, i32 0, i32 1
  %257 = load i32, i32* %14, align 4
  %258 = call i32 @bcopy(i32* %254, i32* %256, i32 %257)
  br label %259

259:                                              ; preds = %252, %121
  %260 = load i64, i64* @an_dump, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %264 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %265 = call i32 @an_dump_record(%struct.an_softc* %263, %struct.an_ltv_gen* %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %266

266:                                              ; preds = %262, %259
  store i32 0, i32* %3, align 4
  br label %267

267:                                              ; preds = %266, %189, %128, %58, %46, %26
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i32 @AN_LOCK_ASSERT(%struct.an_softc*) #1

declare dso_local i64 @an_cmd(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, ...) #1

declare dso_local i64 @an_seek(%struct.an_softc*, i32, i32, i32) #1

declare dso_local i8* @CSR_READ_2(%struct.an_softc*, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.an_softc*, i32) #1

declare dso_local i32 @bzero(%struct.an_reply*, i32) #1

declare dso_local i32 @CSR_MEM_AUX_WRITE_4(%struct.an_softc*, i64, i32) #1

declare dso_local i64 @an_cmd_struct(%struct.an_softc*, %struct.an_reply*, %struct.an_reply*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @an_dump_record(%struct.an_softc*, %struct.an_ltv_gen*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
