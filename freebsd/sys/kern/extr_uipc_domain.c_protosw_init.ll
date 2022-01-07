; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_domain.c_protosw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_domain.c_protosw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protosw = type { i32 (...)*, %struct.TYPE_2__*, %struct.pr_usrreqs* }
%struct.TYPE_2__ = type { %struct.protosw*, i32 }
%struct.pr_usrreqs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [39 x i8] c"protosw_init: %ssw[%d] has no usrreqs!\00", align 1
@pru_accept_notsupp = common dso_local global i32 0, align 4
@pru_aio_queue_notsupp = common dso_local global i32 0, align 4
@pru_bind_notsupp = common dso_local global i32 0, align 4
@pru_bindat_notsupp = common dso_local global i32 0, align 4
@pru_connect_notsupp = common dso_local global i32 0, align 4
@pru_connect2_notsupp = common dso_local global i32 0, align 4
@pru_connectat_notsupp = common dso_local global i32 0, align 4
@pru_control_notsupp = common dso_local global i32 0, align 4
@pru_disconnect_notsupp = common dso_local global i32 0, align 4
@pru_listen_notsupp = common dso_local global i32 0, align 4
@pru_peeraddr_notsupp = common dso_local global i32 0, align 4
@pru_rcvd_notsupp = common dso_local global i32 0, align 4
@pru_rcvoob_notsupp = common dso_local global i32 0, align 4
@pru_sense_null = common dso_local global i32 0, align 4
@pru_shutdown_notsupp = common dso_local global i32 0, align 4
@pru_sockaddr_notsupp = common dso_local global i32 0, align 4
@sosend_generic = common dso_local global i32 0, align 4
@soreceive_generic = common dso_local global i32 0, align 4
@sopoll_generic = common dso_local global i32 0, align 4
@pru_ready_notsupp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protosw*)* @protosw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @protosw_init(%struct.protosw* %0) #0 {
  %2 = alloca %struct.protosw*, align 8
  %3 = alloca %struct.pr_usrreqs*, align 8
  store %struct.protosw* %0, %struct.protosw** %2, align 8
  %4 = load %struct.protosw*, %struct.protosw** %2, align 8
  %5 = getelementptr inbounds %struct.protosw, %struct.protosw* %4, i32 0, i32 2
  %6 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %5, align 8
  store %struct.pr_usrreqs* %6, %struct.pr_usrreqs** %3, align 8
  %7 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %8 = icmp ne %struct.pr_usrreqs* %7, null
  %9 = zext i1 %8 to i32
  %10 = load %struct.protosw*, %struct.protosw** %2, align 8
  %11 = getelementptr inbounds %struct.protosw, %struct.protosw* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.protosw*, %struct.protosw** %2, align 8
  %16 = load %struct.protosw*, %struct.protosw** %2, align 8
  %17 = getelementptr inbounds %struct.protosw, %struct.protosw* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.protosw*, %struct.protosw** %19, align 8
  %21 = ptrtoint %struct.protosw* %15 to i64
  %22 = ptrtoint %struct.protosw* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 24
  %25 = trunc i64 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @KASSERT(i32 %9, i8* %27)
  %29 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %30 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %29, i32 0, i32 19
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i32, i32* @pru_accept_notsupp, align 4
  %37 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %38 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %37, i32 0, i32 19
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %1
  %40 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %41 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %40, i32 0, i32 18
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @pru_aio_queue_notsupp, align 4
  %48 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %49 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %48, i32 0, i32 18
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %52 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %51, i32 0, i32 17
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @pru_bind_notsupp, align 4
  %59 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %60 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %59, i32 0, i32 17
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %63 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %62, i32 0, i32 16
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @pru_bindat_notsupp, align 4
  %70 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %71 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %70, i32 0, i32 16
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %74 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %73, i32 0, i32 15
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @pru_connect_notsupp, align 4
  %81 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %82 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %81, i32 0, i32 15
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %85 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %84, i32 0, i32 14
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @pru_connect2_notsupp, align 4
  %92 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %93 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %92, i32 0, i32 14
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %90, %83
  %95 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %96 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @pru_connectat_notsupp, align 4
  %103 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %104 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %103, i32 0, i32 13
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %94
  %106 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %107 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i32, i32* @pru_control_notsupp, align 4
  %114 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %115 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %114, i32 0, i32 12
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %105
  %117 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %118 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %117, i32 0, i32 11
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i32, i32* @pru_disconnect_notsupp, align 4
  %125 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %126 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %125, i32 0, i32 11
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %123, %116
  %128 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %129 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i32, i32* @pru_listen_notsupp, align 4
  %136 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %137 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %136, i32 0, i32 10
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %127
  %139 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %140 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i32, i32* @pru_peeraddr_notsupp, align 4
  %147 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %148 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %147, i32 0, i32 9
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %145, %138
  %150 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %151 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load i32, i32* @pru_rcvd_notsupp, align 4
  %158 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %159 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %158, i32 0, i32 8
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %149
  %161 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %162 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to i8*
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load i32, i32* @pru_rcvoob_notsupp, align 4
  %169 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %170 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %167, %160
  %172 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %173 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i8*
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load i32, i32* @pru_sense_null, align 4
  %180 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %181 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %180, i32 0, i32 6
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %178, %171
  %183 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %184 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = icmp eq i8* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = load i32, i32* @pru_shutdown_notsupp, align 4
  %191 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %192 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 4
  br label %193

193:                                              ; preds = %189, %182
  %194 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %195 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to i8*
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load i32, i32* @pru_sockaddr_notsupp, align 4
  %202 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %203 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %200, %193
  %205 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %206 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = inttoptr i64 %208 to i8*
  %210 = icmp eq i8* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %204
  %212 = load i32, i32* @sosend_generic, align 4
  %213 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %214 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %213, i32 0, i32 3
  store i32 %212, i32* %214, align 4
  br label %215

215:                                              ; preds = %211, %204
  %216 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %217 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = icmp eq i8* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %215
  %223 = load i32, i32* @soreceive_generic, align 4
  %224 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %225 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  br label %226

226:                                              ; preds = %222, %215
  %227 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %228 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to i8*
  %232 = icmp eq i8* %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %226
  %234 = load i32, i32* @sopoll_generic, align 4
  %235 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %236 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %233, %226
  %238 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %239 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = icmp eq i8* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %237
  %245 = load i32, i32* @pru_ready_notsupp, align 4
  %246 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %3, align 8
  %247 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  br label %248

248:                                              ; preds = %244, %237
  %249 = load %struct.protosw*, %struct.protosw** %2, align 8
  %250 = getelementptr inbounds %struct.protosw, %struct.protosw* %249, i32 0, i32 0
  %251 = load i32 (...)*, i32 (...)** %250, align 8
  %252 = icmp ne i32 (...)* %251, null
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load %struct.protosw*, %struct.protosw** %2, align 8
  %255 = getelementptr inbounds %struct.protosw, %struct.protosw* %254, i32 0, i32 0
  %256 = load i32 (...)*, i32 (...)** %255, align 8
  %257 = call i32 (...) %256()
  br label %258

258:                                              ; preds = %253, %248
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
