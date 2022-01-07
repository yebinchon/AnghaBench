; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_bsdextended/extr_mac_bsdextended.c_ugidfw_rulecheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_bsdextended/extr_mac_bsdextended.c_ugidfw_rulecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_bsdextended_rule = type { i32, %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32, i64, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i64, i32, i64, i64, i64 }
%struct.ucred = type { i64, i64, i64, i64, i64, i32, i64*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.vnode = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.vattr = type { i64, i64, i32, i32 }

@ugidfw_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@MBS_UID_DEFINED = common dso_local global i32 0, align 4
@MBS_GID_DEFINED = common dso_local global i32 0, align 4
@MBS_PRISON_DEFINED = common dso_local global i32 0, align 4
@MBO_UID_DEFINED = common dso_local global i32 0, align 4
@MBO_GID_DEFINED = common dso_local global i32 0, align 4
@MBO_FSID_DEFINED = common dso_local global i32 0, align 4
@MBO_SUID = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@MBO_SGID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@MBO_UID_SUBJECT = common dso_local global i32 0, align 4
@MBO_GID_SUBJECT = common dso_local global i32 0, align 4
@MBO_TYPE_DEFINED = common dso_local global i32 0, align 4
@MBO_TYPE_REG = common dso_local global i32 0, align 4
@MBO_TYPE_DIR = common dso_local global i32 0, align 4
@MBO_TYPE_BLK = common dso_local global i32 0, align 4
@MBO_TYPE_CHR = common dso_local global i32 0, align 4
@MBO_TYPE_LNK = common dso_local global i32 0, align 4
@MBO_TYPE_SOCK = common dso_local global i32 0, align 4
@MBO_TYPE_FIFO = common dso_local global i32 0, align 4
@MBI_ADMIN = common dso_local global i32 0, align 4
@PRIV_VFS_ADMIN = common dso_local global i32 0, align 4
@MBI_EXEC = common dso_local global i32 0, align 4
@PRIV_VFS_LOOKUP = common dso_local global i32 0, align 4
@PRIV_VFS_EXEC = common dso_local global i32 0, align 4
@MBI_READ = common dso_local global i32 0, align 4
@PRIV_VFS_READ = common dso_local global i32 0, align 4
@MBI_STAT = common dso_local global i32 0, align 4
@PRIV_VFS_STAT = common dso_local global i32 0, align 4
@MBI_WRITE = common dso_local global i32 0, align 4
@PRIV_VFS_WRITE = common dso_local global i32 0, align 4
@ugidfw_logging = common dso_local global i64 0, align 8
@LOG_AUTHPRIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"mac_bsdextended: %d:%d request %d on %d:%d failed. \0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@ugidfw_firstmatch_enabled = common dso_local global i64 0, align 8
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_bsdextended_rule*, %struct.ucred*, %struct.vnode*, %struct.vattr*, i32)* @ugidfw_rulecheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugidfw_rulecheck(%struct.mac_bsdextended_rule* %0, %struct.ucred* %1, %struct.vnode* %2, %struct.vattr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mac_bsdextended_rule*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mac_bsdextended_rule* %0, %struct.mac_bsdextended_rule** %7, align 8
  store %struct.ucred* %1, %struct.ucred** %8, align 8
  store %struct.vnode* %2, %struct.vnode** %9, align 8
  store %struct.vattr* %3, %struct.vattr** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @mtx_assert(i32* @ugidfw_mtx, i32 %16)
  %18 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %19 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MBS_UID_DEFINED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %101

25:                                               ; preds = %5
  %26 = load %struct.ucred*, %struct.ucred** %8, align 8
  %27 = getelementptr inbounds %struct.ucred, %struct.ucred* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %30 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %28, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.ucred*, %struct.ucred** %8, align 8
  %36 = getelementptr inbounds %struct.ucred, %struct.ucred* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %39 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %37, %41
  br i1 %42, label %81, label %43

43:                                               ; preds = %34, %25
  %44 = load %struct.ucred*, %struct.ucred** %8, align 8
  %45 = getelementptr inbounds %struct.ucred, %struct.ucred* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %48 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %46, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load %struct.ucred*, %struct.ucred** %8, align 8
  %54 = getelementptr inbounds %struct.ucred, %struct.ucred* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %57 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %55, %59
  br i1 %60, label %81, label %61

61:                                               ; preds = %52, %43
  %62 = load %struct.ucred*, %struct.ucred** %8, align 8
  %63 = getelementptr inbounds %struct.ucred, %struct.ucred* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %66 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sle i64 %64, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load %struct.ucred*, %struct.ucred** %8, align 8
  %72 = getelementptr inbounds %struct.ucred, %struct.ucred* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %75 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %73, %77
  br label %79

79:                                               ; preds = %70, %61
  %80 = phi i1 [ false, %61 ], [ %78, %70 ]
  br label %81

81:                                               ; preds = %79, %52, %34
  %82 = phi i1 [ true, %52 ], [ true, %34 ], [ %80, %79 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %13, align 4
  %84 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %85 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MBS_UID_DEFINED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %91, %81
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  store i32 0, i32* %6, align 4
  br label %762

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %100, %5
  %102 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %103 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MBS_GID_DEFINED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %209

109:                                              ; preds = %101
  %110 = load %struct.ucred*, %struct.ucred** %8, align 8
  %111 = getelementptr inbounds %struct.ucred, %struct.ucred* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %114 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp sle i64 %112, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %109
  %119 = load %struct.ucred*, %struct.ucred** %8, align 8
  %120 = getelementptr inbounds %struct.ucred, %struct.ucred* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %123 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp sge i64 %121, %125
  br i1 %126, label %147, label %127

127:                                              ; preds = %118, %109
  %128 = load %struct.ucred*, %struct.ucred** %8, align 8
  %129 = getelementptr inbounds %struct.ucred, %struct.ucred* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %132 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp sle i64 %130, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %127
  %137 = load %struct.ucred*, %struct.ucred** %8, align 8
  %138 = getelementptr inbounds %struct.ucred, %struct.ucred* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %141 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = icmp sge i64 %139, %143
  br label %145

145:                                              ; preds = %136, %127
  %146 = phi i1 [ false, %127 ], [ %144, %136 ]
  br label %147

147:                                              ; preds = %145, %118
  %148 = phi i1 [ true, %118 ], [ %146, %145 ]
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %191, label %152

152:                                              ; preds = %147
  store i32 0, i32* %15, align 4
  br label %153

153:                                              ; preds = %187, %152
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.ucred*, %struct.ucred** %8, align 8
  %156 = getelementptr inbounds %struct.ucred, %struct.ucred* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %190

159:                                              ; preds = %153
  %160 = load %struct.ucred*, %struct.ucred** %8, align 8
  %161 = getelementptr inbounds %struct.ucred, %struct.ucred* %160, i32 0, i32 6
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %168 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp sle i64 %166, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %159
  %173 = load %struct.ucred*, %struct.ucred** %8, align 8
  %174 = getelementptr inbounds %struct.ucred, %struct.ucred* %173, i32 0, i32 6
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %181 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp sge i64 %179, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %172
  store i32 1, i32* %13, align 4
  br label %190

186:                                              ; preds = %172, %159
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  br label %153

190:                                              ; preds = %185, %153
  br label %191

191:                                              ; preds = %190, %147
  %192 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %193 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @MBS_GID_DEFINED, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %191
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 0
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  store i32 %203, i32* %13, align 4
  br label %204

204:                                              ; preds = %199, %191
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %204
  store i32 0, i32* %6, align 4
  br label %762

208:                                              ; preds = %204
  br label %209

209:                                              ; preds = %208, %101
  %210 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %211 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @MBS_PRISON_DEFINED, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %246

217:                                              ; preds = %209
  %218 = load %struct.ucred*, %struct.ucred** %8, align 8
  %219 = getelementptr inbounds %struct.ucred, %struct.ucred* %218, i32 0, i32 7
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %224 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 6
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %222, %226
  %228 = zext i1 %227 to i32
  store i32 %228, i32* %13, align 4
  %229 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %230 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @MBS_PRISON_DEFINED, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %217
  %237 = load i32, i32* %13, align 4
  %238 = icmp ne i32 %237, 0
  %239 = xor i1 %238, true
  %240 = zext i1 %239 to i32
  store i32 %240, i32* %13, align 4
  br label %241

241:                                              ; preds = %236, %217
  %242 = load i32, i32* %13, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  store i32 0, i32* %6, align 4
  br label %762

245:                                              ; preds = %241
  br label %246

246:                                              ; preds = %245, %209
  %247 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %248 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @MBO_UID_DEFINED, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %292

254:                                              ; preds = %246
  %255 = load %struct.vattr*, %struct.vattr** %10, align 8
  %256 = getelementptr inbounds %struct.vattr, %struct.vattr* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %259 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp sle i64 %257, %261
  br i1 %262, label %263, label %272

263:                                              ; preds = %254
  %264 = load %struct.vattr*, %struct.vattr** %10, align 8
  %265 = getelementptr inbounds %struct.vattr, %struct.vattr* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %268 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = icmp sge i64 %266, %270
  br label %272

272:                                              ; preds = %263, %254
  %273 = phi i1 [ false, %254 ], [ %271, %263 ]
  %274 = zext i1 %273 to i32
  store i32 %274, i32* %13, align 4
  %275 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %276 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @MBO_UID_DEFINED, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %272
  %283 = load i32, i32* %13, align 4
  %284 = icmp ne i32 %283, 0
  %285 = xor i1 %284, true
  %286 = zext i1 %285 to i32
  store i32 %286, i32* %13, align 4
  br label %287

287:                                              ; preds = %282, %272
  %288 = load i32, i32* %13, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %287
  store i32 0, i32* %6, align 4
  br label %762

291:                                              ; preds = %287
  br label %292

292:                                              ; preds = %291, %246
  %293 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %294 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @MBO_GID_DEFINED, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %338

300:                                              ; preds = %292
  %301 = load %struct.vattr*, %struct.vattr** %10, align 8
  %302 = getelementptr inbounds %struct.vattr, %struct.vattr* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %305 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 4
  %307 = load i64, i64* %306, align 8
  %308 = icmp sle i64 %303, %307
  br i1 %308, label %309, label %318

309:                                              ; preds = %300
  %310 = load %struct.vattr*, %struct.vattr** %10, align 8
  %311 = getelementptr inbounds %struct.vattr, %struct.vattr* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %314 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 5
  %316 = load i64, i64* %315, align 8
  %317 = icmp sge i64 %312, %316
  br label %318

318:                                              ; preds = %309, %300
  %319 = phi i1 [ false, %300 ], [ %317, %309 ]
  %320 = zext i1 %319 to i32
  store i32 %320, i32* %13, align 4
  %321 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %322 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @MBO_GID_DEFINED, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %318
  %329 = load i32, i32* %13, align 4
  %330 = icmp ne i32 %329, 0
  %331 = xor i1 %330, true
  %332 = zext i1 %331 to i32
  store i32 %332, i32* %13, align 4
  br label %333

333:                                              ; preds = %328, %318
  %334 = load i32, i32* %13, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %333
  store i32 0, i32* %6, align 4
  br label %762

337:                                              ; preds = %333
  br label %338

338:                                              ; preds = %337, %292
  %339 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %340 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @MBO_FSID_DEFINED, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %375

346:                                              ; preds = %338
  %347 = load %struct.vnode*, %struct.vnode** %9, align 8
  %348 = getelementptr inbounds %struct.vnode, %struct.vnode* %347, i32 0, i32 0
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 0
  %352 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %353 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 7
  %355 = call i64 @bcmp(i32* %351, i32* %354, i32 4)
  %356 = icmp eq i64 %355, 0
  %357 = zext i1 %356 to i32
  store i32 %357, i32* %13, align 4
  %358 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %359 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @MBO_FSID_DEFINED, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %346
  %366 = load i32, i32* %13, align 4
  %367 = icmp ne i32 %366, 0
  %368 = xor i1 %367, true
  %369 = zext i1 %368 to i32
  store i32 %369, i32* %13, align 4
  br label %370

370:                                              ; preds = %365, %346
  %371 = load i32, i32* %13, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %370
  store i32 0, i32* %6, align 4
  br label %762

374:                                              ; preds = %370
  br label %375

375:                                              ; preds = %374, %338
  %376 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %377 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @MBO_SUID, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %406

383:                                              ; preds = %375
  %384 = load %struct.vattr*, %struct.vattr** %10, align 8
  %385 = getelementptr inbounds %struct.vattr, %struct.vattr* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @S_ISUID, align 4
  %388 = and i32 %386, %387
  store i32 %388, i32* %13, align 4
  %389 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %390 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @MBO_SUID, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %383
  %397 = load i32, i32* %13, align 4
  %398 = icmp ne i32 %397, 0
  %399 = xor i1 %398, true
  %400 = zext i1 %399 to i32
  store i32 %400, i32* %13, align 4
  br label %401

401:                                              ; preds = %396, %383
  %402 = load i32, i32* %13, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %401
  store i32 0, i32* %6, align 4
  br label %762

405:                                              ; preds = %401
  br label %406

406:                                              ; preds = %405, %375
  %407 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %408 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @MBO_SGID, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %437

414:                                              ; preds = %406
  %415 = load %struct.vattr*, %struct.vattr** %10, align 8
  %416 = getelementptr inbounds %struct.vattr, %struct.vattr* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* @S_ISGID, align 4
  %419 = and i32 %417, %418
  store i32 %419, i32* %13, align 4
  %420 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %421 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = load i32, i32* @MBO_SGID, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %414
  %428 = load i32, i32* %13, align 4
  %429 = icmp ne i32 %428, 0
  %430 = xor i1 %429, true
  %431 = zext i1 %430 to i32
  store i32 %431, i32* %13, align 4
  br label %432

432:                                              ; preds = %427, %414
  %433 = load i32, i32* %13, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %436, label %435

435:                                              ; preds = %432
  store i32 0, i32* %6, align 4
  br label %762

436:                                              ; preds = %432
  br label %437

437:                                              ; preds = %436, %406
  %438 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %439 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* @MBO_UID_SUBJECT, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %489

445:                                              ; preds = %437
  %446 = load %struct.vattr*, %struct.vattr** %10, align 8
  %447 = getelementptr inbounds %struct.vattr, %struct.vattr* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load %struct.ucred*, %struct.ucred** %8, align 8
  %450 = getelementptr inbounds %struct.ucred, %struct.ucred* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = icmp eq i64 %448, %451
  br i1 %452, label %469, label %453

453:                                              ; preds = %445
  %454 = load %struct.vattr*, %struct.vattr** %10, align 8
  %455 = getelementptr inbounds %struct.vattr, %struct.vattr* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = load %struct.ucred*, %struct.ucred** %8, align 8
  %458 = getelementptr inbounds %struct.ucred, %struct.ucred* %457, i32 0, i32 1
  %459 = load i64, i64* %458, align 8
  %460 = icmp eq i64 %456, %459
  br i1 %460, label %469, label %461

461:                                              ; preds = %453
  %462 = load %struct.vattr*, %struct.vattr** %10, align 8
  %463 = getelementptr inbounds %struct.vattr, %struct.vattr* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = load %struct.ucred*, %struct.ucred** %8, align 8
  %466 = getelementptr inbounds %struct.ucred, %struct.ucred* %465, i32 0, i32 2
  %467 = load i64, i64* %466, align 8
  %468 = icmp eq i64 %464, %467
  br label %469

469:                                              ; preds = %461, %453, %445
  %470 = phi i1 [ true, %453 ], [ true, %445 ], [ %468, %461 ]
  %471 = zext i1 %470 to i32
  store i32 %471, i32* %13, align 4
  %472 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %473 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @MBO_UID_SUBJECT, align 4
  %477 = and i32 %475, %476
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %484

479:                                              ; preds = %469
  %480 = load i32, i32* %13, align 4
  %481 = icmp ne i32 %480, 0
  %482 = xor i1 %481, true
  %483 = zext i1 %482 to i32
  store i32 %483, i32* %13, align 4
  br label %484

484:                                              ; preds = %479, %469
  %485 = load i32, i32* %13, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %488, label %487

487:                                              ; preds = %484
  store i32 0, i32* %6, align 4
  br label %762

488:                                              ; preds = %484
  br label %489

489:                                              ; preds = %488, %437
  %490 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %491 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = load i32, i32* @MBO_GID_SUBJECT, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %540

497:                                              ; preds = %489
  %498 = load %struct.vattr*, %struct.vattr** %10, align 8
  %499 = getelementptr inbounds %struct.vattr, %struct.vattr* %498, i32 0, i32 1
  %500 = load i64, i64* %499, align 8
  %501 = load %struct.ucred*, %struct.ucred** %8, align 8
  %502 = call i64 @groupmember(i64 %500, %struct.ucred* %501)
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %520, label %504

504:                                              ; preds = %497
  %505 = load %struct.vattr*, %struct.vattr** %10, align 8
  %506 = getelementptr inbounds %struct.vattr, %struct.vattr* %505, i32 0, i32 1
  %507 = load i64, i64* %506, align 8
  %508 = load %struct.ucred*, %struct.ucred** %8, align 8
  %509 = getelementptr inbounds %struct.ucred, %struct.ucred* %508, i32 0, i32 3
  %510 = load i64, i64* %509, align 8
  %511 = icmp eq i64 %507, %510
  br i1 %511, label %520, label %512

512:                                              ; preds = %504
  %513 = load %struct.vattr*, %struct.vattr** %10, align 8
  %514 = getelementptr inbounds %struct.vattr, %struct.vattr* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = load %struct.ucred*, %struct.ucred** %8, align 8
  %517 = getelementptr inbounds %struct.ucred, %struct.ucred* %516, i32 0, i32 4
  %518 = load i64, i64* %517, align 8
  %519 = icmp eq i64 %515, %518
  br label %520

520:                                              ; preds = %512, %504, %497
  %521 = phi i1 [ true, %504 ], [ true, %497 ], [ %519, %512 ]
  %522 = zext i1 %521 to i32
  store i32 %522, i32* %13, align 4
  %523 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %524 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %524, i32 0, i32 3
  %526 = load i32, i32* %525, align 8
  %527 = load i32, i32* @MBO_GID_SUBJECT, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %535

530:                                              ; preds = %520
  %531 = load i32, i32* %13, align 4
  %532 = icmp ne i32 %531, 0
  %533 = xor i1 %532, true
  %534 = zext i1 %533 to i32
  store i32 %534, i32* %13, align 4
  br label %535

535:                                              ; preds = %530, %520
  %536 = load i32, i32* %13, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %539, label %538

538:                                              ; preds = %535
  store i32 0, i32* %6, align 4
  br label %762

539:                                              ; preds = %535
  br label %540

540:                                              ; preds = %539, %489
  %541 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %542 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = load i32, i32* @MBO_TYPE_DEFINED, align 4
  %546 = and i32 %544, %545
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %620

548:                                              ; preds = %540
  %549 = load %struct.vattr*, %struct.vattr** %10, align 8
  %550 = getelementptr inbounds %struct.vattr, %struct.vattr* %549, i32 0, i32 3
  %551 = load i32, i32* %550, align 4
  switch i32 %551, label %601 [
    i32 129, label %552
    i32 132, label %559
    i32 134, label %566
    i32 133, label %573
    i32 130, label %580
    i32 128, label %587
    i32 131, label %594
  ]

552:                                              ; preds = %548
  %553 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %554 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %554, i32 0, i32 6
  %556 = load i32, i32* %555, align 8
  %557 = load i32, i32* @MBO_TYPE_REG, align 4
  %558 = and i32 %556, %557
  store i32 %558, i32* %13, align 4
  br label %602

559:                                              ; preds = %548
  %560 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %561 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %561, i32 0, i32 6
  %563 = load i32, i32* %562, align 8
  %564 = load i32, i32* @MBO_TYPE_DIR, align 4
  %565 = and i32 %563, %564
  store i32 %565, i32* %13, align 4
  br label %602

566:                                              ; preds = %548
  %567 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %568 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %567, i32 0, i32 1
  %569 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %568, i32 0, i32 6
  %570 = load i32, i32* %569, align 8
  %571 = load i32, i32* @MBO_TYPE_BLK, align 4
  %572 = and i32 %570, %571
  store i32 %572, i32* %13, align 4
  br label %602

573:                                              ; preds = %548
  %574 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %575 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %575, i32 0, i32 6
  %577 = load i32, i32* %576, align 8
  %578 = load i32, i32* @MBO_TYPE_CHR, align 4
  %579 = and i32 %577, %578
  store i32 %579, i32* %13, align 4
  br label %602

580:                                              ; preds = %548
  %581 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %582 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %582, i32 0, i32 6
  %584 = load i32, i32* %583, align 8
  %585 = load i32, i32* @MBO_TYPE_LNK, align 4
  %586 = and i32 %584, %585
  store i32 %586, i32* %13, align 4
  br label %602

587:                                              ; preds = %548
  %588 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %589 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %588, i32 0, i32 1
  %590 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %589, i32 0, i32 6
  %591 = load i32, i32* %590, align 8
  %592 = load i32, i32* @MBO_TYPE_SOCK, align 4
  %593 = and i32 %591, %592
  store i32 %593, i32* %13, align 4
  br label %602

594:                                              ; preds = %548
  %595 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %596 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %595, i32 0, i32 1
  %597 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %596, i32 0, i32 6
  %598 = load i32, i32* %597, align 8
  %599 = load i32, i32* @MBO_TYPE_FIFO, align 4
  %600 = and i32 %598, %599
  store i32 %600, i32* %13, align 4
  br label %602

601:                                              ; preds = %548
  store i32 0, i32* %13, align 4
  br label %602

602:                                              ; preds = %601, %594, %587, %580, %573, %566, %559, %552
  %603 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %604 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %603, i32 0, i32 1
  %605 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %604, i32 0, i32 3
  %606 = load i32, i32* %605, align 8
  %607 = load i32, i32* @MBO_TYPE_DEFINED, align 4
  %608 = and i32 %606, %607
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %615

610:                                              ; preds = %602
  %611 = load i32, i32* %13, align 4
  %612 = icmp ne i32 %611, 0
  %613 = xor i1 %612, true
  %614 = zext i1 %613 to i32
  store i32 %614, i32* %13, align 4
  br label %615

615:                                              ; preds = %610, %602
  %616 = load i32, i32* %13, align 4
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %619, label %618

618:                                              ; preds = %615
  store i32 0, i32* %6, align 4
  br label %762

619:                                              ; preds = %615
  br label %620

620:                                              ; preds = %619, %540
  store i32 0, i32* %14, align 4
  %621 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %7, align 8
  %622 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 8
  store i32 %623, i32* %12, align 4
  %624 = load i32, i32* %11, align 4
  %625 = load i32, i32* @MBI_ADMIN, align 4
  %626 = and i32 %624, %625
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %642

628:                                              ; preds = %620
  %629 = load i32, i32* %12, align 4
  %630 = load i32, i32* @MBI_ADMIN, align 4
  %631 = and i32 %629, %630
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %633, label %642

633:                                              ; preds = %628
  %634 = load %struct.ucred*, %struct.ucred** %8, align 8
  %635 = load i32, i32* @PRIV_VFS_ADMIN, align 4
  %636 = call i64 @priv_check_cred(%struct.ucred* %634, i32 %635)
  %637 = icmp eq i64 %636, 0
  br i1 %637, label %638, label %642

638:                                              ; preds = %633
  %639 = load i32, i32* @MBI_ADMIN, align 4
  %640 = load i32, i32* %14, align 4
  %641 = or i32 %640, %639
  store i32 %641, i32* %14, align 4
  br label %642

642:                                              ; preds = %638, %633, %628, %620
  %643 = load i32, i32* %11, align 4
  %644 = load i32, i32* @MBI_EXEC, align 4
  %645 = and i32 %643, %644
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %670

647:                                              ; preds = %642
  %648 = load i32, i32* %12, align 4
  %649 = load i32, i32* @MBI_EXEC, align 4
  %650 = and i32 %648, %649
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %652, label %670

652:                                              ; preds = %647
  %653 = load %struct.ucred*, %struct.ucred** %8, align 8
  %654 = load %struct.vattr*, %struct.vattr** %10, align 8
  %655 = getelementptr inbounds %struct.vattr, %struct.vattr* %654, i32 0, i32 3
  %656 = load i32, i32* %655, align 4
  %657 = icmp eq i32 %656, 132
  br i1 %657, label %658, label %660

658:                                              ; preds = %652
  %659 = load i32, i32* @PRIV_VFS_LOOKUP, align 4
  br label %662

660:                                              ; preds = %652
  %661 = load i32, i32* @PRIV_VFS_EXEC, align 4
  br label %662

662:                                              ; preds = %660, %658
  %663 = phi i32 [ %659, %658 ], [ %661, %660 ]
  %664 = call i64 @priv_check_cred(%struct.ucred* %653, i32 %663)
  %665 = icmp eq i64 %664, 0
  br i1 %665, label %666, label %670

666:                                              ; preds = %662
  %667 = load i32, i32* @MBI_EXEC, align 4
  %668 = load i32, i32* %14, align 4
  %669 = or i32 %668, %667
  store i32 %669, i32* %14, align 4
  br label %670

670:                                              ; preds = %666, %662, %647, %642
  %671 = load i32, i32* %11, align 4
  %672 = load i32, i32* @MBI_READ, align 4
  %673 = and i32 %671, %672
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %689

675:                                              ; preds = %670
  %676 = load i32, i32* %12, align 4
  %677 = load i32, i32* @MBI_READ, align 4
  %678 = and i32 %676, %677
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %689

680:                                              ; preds = %675
  %681 = load %struct.ucred*, %struct.ucred** %8, align 8
  %682 = load i32, i32* @PRIV_VFS_READ, align 4
  %683 = call i64 @priv_check_cred(%struct.ucred* %681, i32 %682)
  %684 = icmp eq i64 %683, 0
  br i1 %684, label %685, label %689

685:                                              ; preds = %680
  %686 = load i32, i32* @MBI_READ, align 4
  %687 = load i32, i32* %14, align 4
  %688 = or i32 %687, %686
  store i32 %688, i32* %14, align 4
  br label %689

689:                                              ; preds = %685, %680, %675, %670
  %690 = load i32, i32* %11, align 4
  %691 = load i32, i32* @MBI_STAT, align 4
  %692 = and i32 %690, %691
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %694, label %708

694:                                              ; preds = %689
  %695 = load i32, i32* %12, align 4
  %696 = load i32, i32* @MBI_STAT, align 4
  %697 = and i32 %695, %696
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %699, label %708

699:                                              ; preds = %694
  %700 = load %struct.ucred*, %struct.ucred** %8, align 8
  %701 = load i32, i32* @PRIV_VFS_STAT, align 4
  %702 = call i64 @priv_check_cred(%struct.ucred* %700, i32 %701)
  %703 = icmp eq i64 %702, 0
  br i1 %703, label %704, label %708

704:                                              ; preds = %699
  %705 = load i32, i32* @MBI_STAT, align 4
  %706 = load i32, i32* %14, align 4
  %707 = or i32 %706, %705
  store i32 %707, i32* %14, align 4
  br label %708

708:                                              ; preds = %704, %699, %694, %689
  %709 = load i32, i32* %11, align 4
  %710 = load i32, i32* @MBI_WRITE, align 4
  %711 = and i32 %709, %710
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %727

713:                                              ; preds = %708
  %714 = load i32, i32* %12, align 4
  %715 = load i32, i32* @MBI_WRITE, align 4
  %716 = and i32 %714, %715
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %718, label %727

718:                                              ; preds = %713
  %719 = load %struct.ucred*, %struct.ucred** %8, align 8
  %720 = load i32, i32* @PRIV_VFS_WRITE, align 4
  %721 = call i64 @priv_check_cred(%struct.ucred* %719, i32 %720)
  %722 = icmp eq i64 %721, 0
  br i1 %722, label %723, label %727

723:                                              ; preds = %718
  %724 = load i32, i32* @MBI_WRITE, align 4
  %725 = load i32, i32* %14, align 4
  %726 = or i32 %725, %724
  store i32 %726, i32* %14, align 4
  br label %727

727:                                              ; preds = %723, %718, %713, %708
  %728 = load i32, i32* %12, align 4
  %729 = load i32, i32* %14, align 4
  %730 = or i32 %728, %729
  %731 = load i32, i32* %11, align 4
  %732 = and i32 %730, %731
  %733 = load i32, i32* %11, align 4
  %734 = icmp ne i32 %732, %733
  br i1 %734, label %735, label %756

735:                                              ; preds = %727
  %736 = load i64, i64* @ugidfw_logging, align 8
  %737 = icmp ne i64 %736, 0
  br i1 %737, label %738, label %754

738:                                              ; preds = %735
  %739 = load i32, i32* @LOG_AUTHPRIV, align 4
  %740 = load %struct.ucred*, %struct.ucred** %8, align 8
  %741 = getelementptr inbounds %struct.ucred, %struct.ucred* %740, i32 0, i32 1
  %742 = load i64, i64* %741, align 8
  %743 = load %struct.ucred*, %struct.ucred** %8, align 8
  %744 = getelementptr inbounds %struct.ucred, %struct.ucred* %743, i32 0, i32 3
  %745 = load i64, i64* %744, align 8
  %746 = load i32, i32* %11, align 4
  %747 = load %struct.vattr*, %struct.vattr** %10, align 8
  %748 = getelementptr inbounds %struct.vattr, %struct.vattr* %747, i32 0, i32 0
  %749 = load i64, i64* %748, align 8
  %750 = load %struct.vattr*, %struct.vattr** %10, align 8
  %751 = getelementptr inbounds %struct.vattr, %struct.vattr* %750, i32 0, i32 1
  %752 = load i64, i64* %751, align 8
  %753 = call i32 @log(i32 %739, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %742, i64 %745, i32 %746, i64 %749, i64 %752)
  br label %754

754:                                              ; preds = %738, %735
  %755 = load i32, i32* @EACCES, align 4
  store i32 %755, i32* %6, align 4
  br label %762

756:                                              ; preds = %727
  %757 = load i64, i64* @ugidfw_firstmatch_enabled, align 8
  %758 = icmp ne i64 %757, 0
  br i1 %758, label %759, label %761

759:                                              ; preds = %756
  %760 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %760, i32* %6, align 4
  br label %762

761:                                              ; preds = %756
  store i32 0, i32* %6, align 4
  br label %762

762:                                              ; preds = %761, %759, %754, %618, %538, %487, %435, %404, %373, %336, %290, %244, %207, %99
  %763 = load i32, i32* %6, align 4
  ret i32 %763
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i64 @groupmember(i64, %struct.ucred*) #1

declare dso_local i64 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @log(i32, i8*, i64, i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
