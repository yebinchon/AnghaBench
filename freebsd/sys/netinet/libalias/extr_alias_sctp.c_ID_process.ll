; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_ID_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_ID_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.sctp_nat_assoc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sctp_nat_msg = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@sysctl_accept_global_ootb_addip = common dso_local global i32 0, align 4
@SN_DROP_PKT = common dso_local global i32 0, align 4
@sysctl_track_global_addresses = common dso_local global i32 0, align 4
@SN_REPLY_ABORT = common dso_local global i32 0, align 4
@SN_REPLY_ERROR = common dso_local global i32 0, align 4
@SN_WAIT_TOLOCAL = common dso_local global i32 0, align 4
@SN_WAIT_TOGLOBAL = common dso_local global i32 0, align 4
@SN_INi = common dso_local global i32 0, align 4
@SN_INa = common dso_local global i32 0, align 4
@SN_NAT_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i32, %struct.sctp_nat_assoc*, %struct.sctp_nat_msg*)* @ID_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ID_process(%struct.libalias* %0, i32 %1, %struct.sctp_nat_assoc* %2, %struct.sctp_nat_msg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libalias*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_nat_assoc*, align 8
  %9 = alloca %struct.sctp_nat_msg*, align 8
  store %struct.libalias* %0, %struct.libalias** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sctp_nat_assoc* %2, %struct.sctp_nat_assoc** %8, align 8
  store %struct.sctp_nat_msg* %3, %struct.sctp_nat_msg** %9, align 8
  %10 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %11 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %227 [
    i32 131, label %13
    i32 130, label %34
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* @sysctl_accept_global_ootb_addip, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 128
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @SN_DROP_PKT, align 4
  store i32 %20, i32* %5, align 4
  br label %229

21:                                               ; preds = %16, %13
  %22 = load %struct.libalias*, %struct.libalias** %6, align 8
  %23 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %24 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %25 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %24, i32 0, i32 3
  %26 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %27 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %26, i32 0, i32 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @GetAsconfVtags(%struct.libalias* %22, %struct.sctp_nat_msg* %23, i32* %25, i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @SN_DROP_PKT, align 4
  store i32 %32, i32* %5, align 4
  br label %229

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %4, %33
  %35 = load i32, i32* @sysctl_track_global_addresses, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %39 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @AddGlobalIPAddresses(%struct.sctp_nat_msg* %38, %struct.sctp_nat_assoc* %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %206 [
    i32 129, label %44
    i32 128, label %126
  ]

44:                                               ; preds = %42
  %45 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %46 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %51 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.libalias*, %struct.libalias** %6, align 8
  %53 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %54 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @FindAliasAddress(%struct.libalias* %52, i32 %55)
  %57 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %58 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %60 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %65 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %67 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %72 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %74 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 130
  br i1 %76, label %77, label %86

77:                                               ; preds = %44
  %78 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %79 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %85 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %77, %44
  %87 = load %struct.libalias*, %struct.libalias** %6, align 8
  %88 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %89 = call i32 @AddSctpAssocGlobal(%struct.libalias* %87, %struct.sctp_nat_assoc* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %93 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 130
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @SN_REPLY_ABORT, align 4
  br label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @SN_REPLY_ERROR, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %5, align 4
  br label %229

102:                                              ; preds = %86
  %103 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %104 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 131
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = load %struct.libalias*, %struct.libalias** %6, align 8
  %109 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %110 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %111 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @AddSctpAssocLocal(%struct.libalias* %108, %struct.sctp_nat_assoc* %109, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = load i32, i32* @SN_REPLY_ERROR, align 4
  store i32 %118, i32* %5, align 4
  br label %229

119:                                              ; preds = %107
  %120 = load i32, i32* @SN_WAIT_TOLOCAL, align 4
  %121 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %122 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %102
  br label %206

126:                                              ; preds = %42
  %127 = load %struct.libalias*, %struct.libalias** %6, align 8
  %128 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %129 = call i32 @FindSctpRedirectAddress(%struct.libalias* %127, %struct.sctp_nat_msg* %128)
  %130 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %131 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 4
  %132 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %133 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %138 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 4
  %139 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %140 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %139, i32 0, i32 3
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %145 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  %146 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %147 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %146, i32 0, i32 3
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %152 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 4
  %153 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %154 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 130
  br i1 %156, label %157, label %166

157:                                              ; preds = %126
  %158 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %159 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %165 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %157, %126
  %167 = load %struct.libalias*, %struct.libalias** %6, align 8
  %168 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %169 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %170 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %169, i32 0, i32 1
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @AddSctpAssocLocal(%struct.libalias* %167, %struct.sctp_nat_assoc* %168, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %166
  %177 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %178 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 130
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i32, i32* @SN_REPLY_ABORT, align 4
  br label %185

183:                                              ; preds = %176
  %184 = load i32, i32* @SN_REPLY_ERROR, align 4
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ]
  store i32 %186, i32* %5, align 4
  br label %229

187:                                              ; preds = %166
  %188 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %189 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 131
  br i1 %191, label %192, label %205

192:                                              ; preds = %187
  %193 = load %struct.libalias*, %struct.libalias** %6, align 8
  %194 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %195 = call i32 @AddSctpAssocGlobal(%struct.libalias* %193, %struct.sctp_nat_assoc* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i32, i32* @SN_REPLY_ERROR, align 4
  store i32 %198, i32* %5, align 4
  br label %229

199:                                              ; preds = %192
  %200 = load i32, i32* @SN_WAIT_TOGLOBAL, align 4
  %201 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %202 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %199, %187
  br label %206

206:                                              ; preds = %42, %205, %125
  %207 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %208 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 130
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i32, i32* @SN_INi, align 4
  br label %215

213:                                              ; preds = %206
  %214 = load i32, i32* @SN_INa, align 4
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  %217 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %218 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.libalias*, %struct.libalias** %6, align 8
  %220 = call i32 @SN_I_T(%struct.libalias* %219)
  %221 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %222 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 4
  %223 = load %struct.libalias*, %struct.libalias** %6, align 8
  %224 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %225 = call i32 @sctp_AddTimeOut(%struct.libalias* %223, %struct.sctp_nat_assoc* %224)
  %226 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %226, i32* %5, align 4
  br label %229

227:                                              ; preds = %4
  %228 = load i32, i32* @SN_DROP_PKT, align 4
  store i32 %228, i32* %5, align 4
  br label %229

229:                                              ; preds = %227, %215, %197, %185, %117, %100, %31, %19
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local i32 @GetAsconfVtags(%struct.libalias*, %struct.sctp_nat_msg*, i32*, i32*, i32) #1

declare dso_local i32 @AddGlobalIPAddresses(%struct.sctp_nat_msg*, %struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @FindAliasAddress(%struct.libalias*, i32) #1

declare dso_local i32 @AddSctpAssocGlobal(%struct.libalias*, %struct.sctp_nat_assoc*) #1

declare dso_local i32 @AddSctpAssocLocal(%struct.libalias*, %struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @FindSctpRedirectAddress(%struct.libalias*, %struct.sctp_nat_msg*) #1

declare dso_local i32 @SN_I_T(%struct.libalias*) #1

declare dso_local i32 @sctp_AddTimeOut(%struct.libalias*, %struct.sctp_nat_assoc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
