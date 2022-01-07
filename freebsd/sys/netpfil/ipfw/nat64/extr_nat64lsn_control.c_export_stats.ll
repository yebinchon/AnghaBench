; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_export_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_export_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.nat64lsn_cfg = type { i32, %struct.nat64lsn_alias*, i32 }
%struct.nat64lsn_alias = type { i32*, i32, i32*, i32, i32*, i32 }
%struct.ipfw_nat64lsn_stats = type { i32, i32, i32, i32 }

@opcnt64 = common dso_local global i32 0, align 4
@opcnt46 = common dso_local global i32 0, align 4
@ofrags = common dso_local global i32 0, align 4
@ifrags = common dso_local global i32 0, align 4
@oerrors = common dso_local global i32 0, align 4
@noroute4 = common dso_local global i32 0, align 4
@noroute6 = common dso_local global i32 0, align 4
@nomatch4 = common dso_local global i32 0, align 4
@noproto = common dso_local global i32 0, align 4
@nomem = common dso_local global i32 0, align 4
@dropped = common dso_local global i32 0, align 4
@jcalls = common dso_local global i32 0, align 4
@jrequests = common dso_local global i32 0, align 4
@jhostsreq = common dso_local global i32 0, align 4
@jportreq = common dso_local global i32 0, align 4
@jhostfails = common dso_local global i32 0, align 4
@jportfails = common dso_local global i32 0, align 4
@jmaxlen = common dso_local global i32 0, align 4
@jnomem = common dso_local global i32 0, align 4
@jreinjected = common dso_local global i32 0, align 4
@screated = common dso_local global i32 0, align 4
@sdeleted = common dso_local global i32 0, align 4
@spgcreated = common dso_local global i32 0, align 4
@spgdeleted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.nat64lsn_cfg*, %struct.ipfw_nat64lsn_stats*)* @export_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_stats(%struct.ip_fw_chain* %0, %struct.nat64lsn_cfg* %1, %struct.ipfw_nat64lsn_stats* %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.nat64lsn_cfg*, align 8
  %6 = alloca %struct.ipfw_nat64lsn_stats*, align 8
  %7 = alloca %struct.nat64lsn_alias*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.nat64lsn_cfg* %1, %struct.nat64lsn_cfg** %5, align 8
  store %struct.ipfw_nat64lsn_stats* %2, %struct.ipfw_nat64lsn_stats** %6, align 8
  %10 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %11 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %12 = load i32, i32* @opcnt64, align 4
  %13 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %10, %struct.ipfw_nat64lsn_stats* %11, i32 %12)
  %14 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %15 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %16 = load i32, i32* @opcnt46, align 4
  %17 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %14, %struct.ipfw_nat64lsn_stats* %15, i32 %16)
  %18 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %19 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %20 = load i32, i32* @ofrags, align 4
  %21 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %18, %struct.ipfw_nat64lsn_stats* %19, i32 %20)
  %22 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %23 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %24 = load i32, i32* @ifrags, align 4
  %25 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %22, %struct.ipfw_nat64lsn_stats* %23, i32 %24)
  %26 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %27 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %28 = load i32, i32* @oerrors, align 4
  %29 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %26, %struct.ipfw_nat64lsn_stats* %27, i32 %28)
  %30 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %31 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %32 = load i32, i32* @noroute4, align 4
  %33 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %30, %struct.ipfw_nat64lsn_stats* %31, i32 %32)
  %34 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %35 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %36 = load i32, i32* @noroute6, align 4
  %37 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %34, %struct.ipfw_nat64lsn_stats* %35, i32 %36)
  %38 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %39 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %40 = load i32, i32* @nomatch4, align 4
  %41 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %38, %struct.ipfw_nat64lsn_stats* %39, i32 %40)
  %42 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %43 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %44 = load i32, i32* @noproto, align 4
  %45 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %42, %struct.ipfw_nat64lsn_stats* %43, i32 %44)
  %46 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %47 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %48 = load i32, i32* @nomem, align 4
  %49 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %46, %struct.ipfw_nat64lsn_stats* %47, i32 %48)
  %50 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %51 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %52 = load i32, i32* @dropped, align 4
  %53 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %50, %struct.ipfw_nat64lsn_stats* %51, i32 %52)
  %54 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %55 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %56 = load i32, i32* @jcalls, align 4
  %57 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %54, %struct.ipfw_nat64lsn_stats* %55, i32 %56)
  %58 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %59 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %60 = load i32, i32* @jrequests, align 4
  %61 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %58, %struct.ipfw_nat64lsn_stats* %59, i32 %60)
  %62 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %63 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %64 = load i32, i32* @jhostsreq, align 4
  %65 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %62, %struct.ipfw_nat64lsn_stats* %63, i32 %64)
  %66 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %67 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %68 = load i32, i32* @jportreq, align 4
  %69 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %66, %struct.ipfw_nat64lsn_stats* %67, i32 %68)
  %70 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %71 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %72 = load i32, i32* @jhostfails, align 4
  %73 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %70, %struct.ipfw_nat64lsn_stats* %71, i32 %72)
  %74 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %75 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %76 = load i32, i32* @jportfails, align 4
  %77 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %74, %struct.ipfw_nat64lsn_stats* %75, i32 %76)
  %78 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %79 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %80 = load i32, i32* @jmaxlen, align 4
  %81 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %78, %struct.ipfw_nat64lsn_stats* %79, i32 %80)
  %82 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %83 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %84 = load i32, i32* @jnomem, align 4
  %85 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %82, %struct.ipfw_nat64lsn_stats* %83, i32 %84)
  %86 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %87 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %88 = load i32, i32* @jreinjected, align 4
  %89 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %86, %struct.ipfw_nat64lsn_stats* %87, i32 %88)
  %90 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %91 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %92 = load i32, i32* @screated, align 4
  %93 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %90, %struct.ipfw_nat64lsn_stats* %91, i32 %92)
  %94 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %95 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %96 = load i32, i32* @sdeleted, align 4
  %97 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %94, %struct.ipfw_nat64lsn_stats* %95, i32 %96)
  %98 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %99 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %100 = load i32, i32* @spgcreated, align 4
  %101 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %98, %struct.ipfw_nat64lsn_stats* %99, i32 %100)
  %102 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %103 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %104 = load i32, i32* @spgdeleted, align 4
  %105 = call i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg* %102, %struct.ipfw_nat64lsn_stats* %103, i32 %104)
  %106 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %107 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %110 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %219, %3
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %114 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 32, %115
  %117 = shl i32 1, %116
  %118 = icmp slt i32 %112, %117
  br i1 %118, label %119, label %222

119:                                              ; preds = %111
  %120 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %121 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %120, i32 0, i32 1
  %122 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %122, i64 %124
  store %struct.nat64lsn_alias* %125, %struct.nat64lsn_alias** %7, align 8
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %153, %119
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 32
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %7, align 8
  %131 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i64 @ISSET32(i32 %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %129, %126
  %137 = phi i1 [ false, %126 ], [ %135, %129 ]
  br i1 %137, label %138, label %156

138:                                              ; preds = %136
  %139 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %7, align 8
  %140 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @bitcount32(i32 %145)
  %147 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %148 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %146
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 4
  br label %153

153:                                              ; preds = %138
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %126

156:                                              ; preds = %136
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %184, %156
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %158, 32
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %7, align 8
  %162 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i64 @ISSET32(i32 %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br label %167

167:                                              ; preds = %160, %157
  %168 = phi i1 [ false, %157 ], [ %166, %160 ]
  br i1 %168, label %169, label %187

169:                                              ; preds = %167
  %170 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %7, align 8
  %171 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @bitcount32(i32 %176)
  %178 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %179 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %177
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 4
  br label %184

184:                                              ; preds = %169
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %9, align 4
  br label %157

187:                                              ; preds = %167
  store i32 0, i32* %9, align 4
  br label %188

188:                                              ; preds = %215, %187
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %189, 32
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %7, align 8
  %193 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i64 @ISSET32(i32 %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br label %198

198:                                              ; preds = %191, %188
  %199 = phi i1 [ false, %188 ], [ %197, %191 ]
  br i1 %199, label %200, label %218

200:                                              ; preds = %198
  %201 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %7, align 8
  %202 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @bitcount32(i32 %207)
  %209 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %6, align 8
  %210 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %208
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %210, align 4
  br label %215

215:                                              ; preds = %200
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %9, align 4
  br label %188

218:                                              ; preds = %198
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %111

222:                                              ; preds = %111
  ret void
}

declare dso_local i32 @__COPY_STAT_FIELD(%struct.nat64lsn_cfg*, %struct.ipfw_nat64lsn_stats*, i32) #1

declare dso_local i64 @ISSET32(i32, i32) #1

declare dso_local i64 @bitcount32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
