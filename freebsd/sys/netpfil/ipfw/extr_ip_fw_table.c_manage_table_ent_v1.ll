; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_manage_table_ent_v1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_manage_table_ent_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32, i32, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i32, %struct.TYPE_14__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.tentry_info = type { i32, %struct.table_value*, i32, i32, i32* }
%struct.table_value = type { i32 }
%struct.tid_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IPFW_TF_UPDATE = common dso_local global i32 0, align 4
@TEI_FLAGS_UPDATE = common dso_local global i32 0, align 4
@IP_FW_TABLE_XADD = common dso_local global i64 0, align 8
@TEI_FLAGS_ADDED = common dso_local global i32 0, align 4
@IPFW_TR_ADDED = common dso_local global i32 0, align 4
@TEI_FLAGS_DELETED = common dso_local global i32 0, align 4
@IPFW_TR_DELETED = common dso_local global i32 0, align 4
@TEI_FLAGS_UPDATED = common dso_local global i32 0, align 4
@IPFW_TR_UPDATED = common dso_local global i32 0, align 4
@TEI_FLAGS_LIMIT = common dso_local global i32 0, align 4
@IPFW_TR_LIMIT = common dso_local global i32 0, align 4
@TEI_FLAGS_ERROR = common dso_local global i32 0, align 4
@IPFW_TR_ERROR = common dso_local global i32 0, align 4
@TEI_FLAGS_NOTFOUND = common dso_local global i32 0, align 4
@IPFW_TR_NOTFOUND = common dso_local global i32 0, align 4
@TEI_FLAGS_EXISTS = common dso_local global i32 0, align 4
@IPFW_TR_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @manage_table_ent_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manage_table_ent_v1(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.tentry_info*, align 8
  %13 = alloca %struct.tentry_info, align 8
  %14 = alloca %struct.tentry_info*, align 8
  %15 = alloca %struct.tid_info, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %20 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %21 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 28
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %362

27:                                               ; preds = %3
  %28 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %29 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %32 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %362

37:                                               ; preds = %27
  %38 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %39 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %11, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 8
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %4, align 4
  br label %362

51:                                               ; preds = %37
  store i32 16, i32* %19, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i64 1
  %54 = bitcast %struct.TYPE_18__* %53 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %54, %struct.TYPE_19__** %10, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %19, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %62 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %4, align 4
  br label %362

67:                                               ; preds = %51
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 12
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %19, align 4
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i64 1
  %74 = bitcast %struct.TYPE_19__* %73 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %8, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 32
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %79, %81
  %83 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %84 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = icmp ne i64 %82, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %67
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %4, align 4
  br label %362

90:                                               ; preds = %67
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %362

96:                                               ; preds = %90
  %97 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %98 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %99 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ipfw_get_sopt_header(%struct.sockopt_data* %97, i32 %100)
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %102, %struct.TYPE_17__** %9, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %106

106:                                              ; preds = %130, %96
  %107 = load i32, i32* %17, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %106
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ne i64 %117, 32
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %4, align 4
  br label %362

121:                                              ; preds = %112
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @ENOTSUP, align 4
  store i32 %128, i32* %4, align 4
  br label %362

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 1
  store %struct.TYPE_17__* %134, %struct.TYPE_17__** %9, align 8
  br label %106

135:                                              ; preds = %106
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %137 = call i32 @objheader_to_ti(%struct.TYPE_18__* %136, %struct.tid_info* %15)
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %15, i32 0, i32 1
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %18, align 4
  %144 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %15, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %151

149:                                              ; preds = %135
  %150 = call i32 @memset(%struct.tentry_info* %13, i32 0, i32 32)
  store %struct.tentry_info* %13, %struct.tentry_info** %14, align 8
  br label %163

151:                                              ; preds = %135
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 32
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* @M_TEMP, align 4
  %159 = load i32, i32* @M_WAITOK, align 4
  %160 = load i32, i32* @M_ZERO, align 4
  %161 = or i32 %159, %160
  %162 = call %struct.tentry_info* @malloc(i32 %157, i32 %158, i32 %161)
  store %struct.tentry_info* %162, %struct.tentry_info** %14, align 8
  br label %163

163:                                              ; preds = %151, %149
  %164 = load %struct.tentry_info*, %struct.tentry_info** %14, align 8
  store %struct.tentry_info* %164, %struct.tentry_info** %12, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %165, %struct.TYPE_17__** %9, align 8
  store i32 0, i32* %17, align 4
  br label %166

166:                                              ; preds = %211, %163
  %167 = load i32, i32* %17, align 4
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %218

172:                                              ; preds = %166
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 6
  %175 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %176 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %175, i32 0, i32 4
  store i32* %174, i32** %176, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %181 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %186 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @IPFW_TF_UPDATE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %172
  %195 = load i32, i32* @TEI_FLAGS_UPDATE, align 4
  %196 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %197 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %194, %172
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = call i32 @ipfw_import_table_value_v1(i32* %203)
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = bitcast i32* %207 to %struct.table_value*
  %209 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %210 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %209, i32 0, i32 1
  store %struct.table_value* %208, %struct.table_value** %210, align 8
  br label %211

211:                                              ; preds = %200
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %17, align 4
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 1
  store %struct.TYPE_17__* %215, %struct.TYPE_17__** %9, align 8
  %216 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %217 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %216, i32 1
  store %struct.tentry_info* %217, %struct.tentry_info** %12, align 8
  br label %166

218:                                              ; preds = %166
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @IP_FW_TABLE_XADD, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %235

225:                                              ; preds = %218
  %226 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %227 = load %struct.tentry_info*, %struct.tentry_info** %14, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @add_table_entry(%struct.ip_fw_chain* %226, %struct.tid_info* %15, %struct.tentry_info* %227, i32 %230, i32 %233)
  br label %245

235:                                              ; preds = %218
  %236 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %237 = load %struct.tentry_info*, %struct.tentry_info** %14, align 8
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @del_table_entry(%struct.ip_fw_chain* %236, %struct.tid_info* %15, %struct.tentry_info* %237, i32 %240, i32 %243)
  br label %245

245:                                              ; preds = %235, %225
  %246 = phi i32 [ %234, %225 ], [ %244, %235 ]
  store i32 %246, i32* %16, align 4
  %247 = load %struct.tentry_info*, %struct.tentry_info** %14, align 8
  store %struct.tentry_info* %247, %struct.tentry_info** %12, align 8
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %248, %struct.TYPE_17__** %9, align 8
  store i32 0, i32* %17, align 4
  br label %249

249:                                              ; preds = %346, %245
  %250 = load i32, i32* %17, align 4
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %250, %253
  br i1 %254, label %255, label %353

255:                                              ; preds = %249
  %256 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %257 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @TEI_FLAGS_ADDED, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = load i32, i32* @IPFW_TR_ADDED, align 4
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 4
  br label %338

266:                                              ; preds = %255
  %267 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %268 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @TEI_FLAGS_DELETED, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %266
  %274 = load i32, i32* @IPFW_TR_DELETED, align 4
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 4
  br label %337

277:                                              ; preds = %266
  %278 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %279 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @TEI_FLAGS_UPDATED, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %277
  %285 = load i32, i32* @IPFW_TR_UPDATED, align 4
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 2
  store i32 %285, i32* %287, align 4
  br label %336

288:                                              ; preds = %277
  %289 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %290 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @TEI_FLAGS_LIMIT, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %288
  %296 = load i32, i32* @IPFW_TR_LIMIT, align 4
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 2
  store i32 %296, i32* %298, align 4
  br label %335

299:                                              ; preds = %288
  %300 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %301 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @TEI_FLAGS_ERROR, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %299
  %307 = load i32, i32* @IPFW_TR_ERROR, align 4
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 4
  br label %334

310:                                              ; preds = %299
  %311 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %312 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @TEI_FLAGS_NOTFOUND, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %310
  %318 = load i32, i32* @IPFW_TR_NOTFOUND, align 4
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 2
  store i32 %318, i32* %320, align 4
  br label %333

321:                                              ; preds = %310
  %322 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %323 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @TEI_FLAGS_EXISTS, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %321
  %329 = load i32, i32* @IPFW_TR_EXISTS, align 4
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 2
  store i32 %329, i32* %331, align 4
  br label %332

332:                                              ; preds = %328, %321
  br label %333

333:                                              ; preds = %332, %317
  br label %334

334:                                              ; preds = %333, %306
  br label %335

335:                                              ; preds = %334, %295
  br label %336

336:                                              ; preds = %335, %284
  br label %337

337:                                              ; preds = %336, %273
  br label %338

338:                                              ; preds = %337, %262
  %339 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %340 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %339, i32 0, i32 1
  %341 = load %struct.table_value*, %struct.table_value** %340, align 8
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 0
  %345 = call i32 @ipfw_export_table_value_v1(%struct.table_value* %341, i32* %344)
  br label %346

346:                                              ; preds = %338
  %347 = load i32, i32* %17, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %17, align 4
  %349 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %349, i32 1
  store %struct.TYPE_17__* %350, %struct.TYPE_17__** %9, align 8
  %351 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %352 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %351, i32 1
  store %struct.tentry_info* %352, %struct.tentry_info** %12, align 8
  br label %249

353:                                              ; preds = %249
  %354 = load %struct.tentry_info*, %struct.tentry_info** %14, align 8
  %355 = icmp ne %struct.tentry_info* %354, %13
  br i1 %355, label %356, label %360

356:                                              ; preds = %353
  %357 = load %struct.tentry_info*, %struct.tentry_info** %14, align 8
  %358 = load i32, i32* @M_TEMP, align 4
  %359 = call i32 @free(%struct.tentry_info* %357, i32 %358)
  br label %360

360:                                              ; preds = %356, %353
  %361 = load i32, i32* %16, align 4
  store i32 %361, i32* %4, align 4
  br label %362

362:                                              ; preds = %360, %127, %119, %95, %88, %65, %49, %35, %25
  %363 = load i32, i32* %4, align 4
  ret i32 %363
}

declare dso_local i32 @ipfw_get_sopt_header(%struct.sockopt_data*, i32) #1

declare dso_local i32 @objheader_to_ti(%struct.TYPE_18__*, %struct.tid_info*) #1

declare dso_local i32 @memset(%struct.tentry_info*, i32, i32) #1

declare dso_local %struct.tentry_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @ipfw_import_table_value_v1(i32*) #1

declare dso_local i32 @add_table_entry(%struct.ip_fw_chain*, %struct.tid_info*, %struct.tentry_info*, i32, i32) #1

declare dso_local i32 @del_table_entry(%struct.ip_fw_chain*, %struct.tid_info*, %struct.tentry_info*, i32, i32) #1

declare dso_local i32 @ipfw_export_table_value_v1(%struct.table_value*, i32*) #1

declare dso_local i32 @free(%struct.tentry_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
