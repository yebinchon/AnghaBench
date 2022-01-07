; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smb.c_smbioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smb.c_smbioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.smb_softc* }
%struct.smb_softc = type { i32 }
%struct.thread = type { i32 }
%struct.smbcmd = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SMB_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@SMB_DONTWAIT = common dso_local global i32 0, align 4
@SMB_WAIT = common dso_local global i32 0, align 4
@SMB_INTR = common dso_local global i32 0, align 4
@SMB_QWRITE = common dso_local global i32 0, align 4
@SMB_QREAD = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @smbioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.smbcmd*, align 8
  %16 = alloca %struct.smb_softc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %22 = load i32, i32* @SMB_MAXBLOCKSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load i64, i64* %9, align 8
  %27 = inttoptr i64 %26 to %struct.smbcmd*
  store %struct.smbcmd* %27, %struct.smbcmd** %15, align 8
  %28 = load %struct.cdev*, %struct.cdev** %7, align 8
  %29 = getelementptr inbounds %struct.cdev, %struct.cdev* %28, i32 0, i32 0
  %30 = load %struct.smb_softc*, %struct.smb_softc** %29, align 8
  store %struct.smb_softc* %30, %struct.smb_softc** %16, align 8
  %31 = load %struct.smb_softc*, %struct.smb_softc** %16, align 8
  %32 = getelementptr inbounds %struct.smb_softc, %struct.smb_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %17, align 4
  %34 = load %struct.cdev*, %struct.cdev** %7, align 8
  %35 = call i32 @dev2unit(%struct.cdev* %34)
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = and i32 %36, 1024
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %5
  %40 = load i32, i32* %19, align 4
  %41 = and i32 %40, 1023
  %42 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %43 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %5
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @device_get_parent(i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %48 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %386

54:                                               ; preds = %44
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @O_NONBLOCK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @SMB_DONTWAIT, align 4
  br label %67

63:                                               ; preds = %54
  %64 = load i32, i32* @SMB_WAIT, align 4
  %65 = load i32, i32* @SMB_INTR, align 4
  %66 = or i32 %64, %65
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i32 [ %62, %61 ], [ %66, %63 ]
  %69 = call i32 @smbus_request_bus(i32 %55, i32 %56, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %18, align 4
  store i32 %72, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %386

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  switch i32 %74, label %379 [
    i32 134, label %75
    i32 135, label %83
    i32 130, label %91
    i32 131, label %101
    i32 129, label %110
    i32 128, label %124
    i32 138, label %138
    i32 133, label %138
    i32 137, label %175
    i32 132, label %175
    i32 139, label %226
    i32 136, label %226
    i32 140, label %281
    i32 141, label %328
  ]

75:                                               ; preds = %73
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %78 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SMB_QWRITE, align 4
  %81 = call i32 @smbus_quick(i32 %76, i32 %79, i32 %80)
  %82 = call i32 @smbus_error(i32 %81)
  store i32 %82, i32* %18, align 4
  br label %381

83:                                               ; preds = %73
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %86 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SMB_QREAD, align 4
  %89 = call i32 @smbus_quick(i32 %84, i32 %87, i32 %88)
  %90 = call i32 @smbus_error(i32 %89)
  store i32 %90, i32* %18, align 4
  br label %381

91:                                               ; preds = %73
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %94 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %97 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @smbus_sendb(i32 %92, i32 %95, i32 %98)
  %100 = call i32 @smbus_error(i32 %99)
  store i32 %100, i32* %18, align 4
  br label %381

101:                                              ; preds = %73
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %104 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %107 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %106, i32 0, i32 4
  %108 = call i32 @smbus_recvb(i32 %102, i32 %105, i32* %107)
  %109 = call i32 @smbus_error(i32 %108)
  store i32 %109, i32* %18, align 4
  br label %381

110:                                              ; preds = %73
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %113 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %116 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %119 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @smbus_writeb(i32 %111, i32 %114, i32 %117, i32 %121)
  %123 = call i32 @smbus_error(i32 %122)
  store i32 %123, i32* %18, align 4
  br label %381

124:                                              ; preds = %73
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %127 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %130 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %133 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @smbus_writew(i32 %125, i32 %128, i32 %131, i32 %135)
  %137 = call i32 @smbus_error(i32 %136)
  store i32 %137, i32* %18, align 4
  br label %381

138:                                              ; preds = %73, %73
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %141 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %144 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %147 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = call i32 @smbus_readb(i32 %139, i32 %142, i32 %145, i8* %148)
  %150 = call i32 @smbus_error(i32 %149)
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %138
  br label %381

154:                                              ; preds = %138
  %155 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %156 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %154
  %160 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %161 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp sge i32 %162, 1
  br i1 %163, label %164, label %174

164:                                              ; preds = %159
  %165 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %166 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %169 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @copyout(i8* %167, i32 %170, i32 1)
  store i32 %171, i32* %18, align 4
  %172 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %173 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %172, i32 0, i32 1
  store i32 1, i32* %173, align 4
  br label %174

174:                                              ; preds = %164, %159, %154
  br label %381

175:                                              ; preds = %73, %73
  %176 = load i32, i32* %14, align 4
  %177 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %178 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %181 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %184 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = call i32 @smbus_readw(i32 %176, i32 %179, i32 %182, i32* %185)
  %187 = call i32 @smbus_error(i32 %186)
  store i32 %187, i32* %18, align 4
  %188 = load i32, i32* %18, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %175
  br label %381

191:                                              ; preds = %175
  %192 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %193 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %225

196:                                              ; preds = %191
  %197 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %198 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp sge i32 %199, 2
  br i1 %200, label %201, label %225

201:                                              ; preds = %196
  %202 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %203 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8*
  %208 = ptrtoint i8* %207 to i8
  %209 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %208, i8* %209, align 16
  %210 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %211 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = ashr i32 %213, 8
  %215 = sext i32 %214 to i64
  %216 = inttoptr i64 %215 to i8*
  %217 = ptrtoint i8* %216 to i8
  %218 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 %217, i8* %218, align 1
  %219 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %220 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @copyout(i8* %25, i32 %221, i32 2)
  store i32 %222, i32* %18, align 4
  %223 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %224 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %223, i32 0, i32 1
  store i32 2, i32* %224, align 4
  br label %225

225:                                              ; preds = %201, %196, %191
  br label %381

226:                                              ; preds = %73, %73
  %227 = load i32, i32* %14, align 4
  %228 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %229 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %232 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %235 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %239 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %238, i32 0, i32 6
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = call i32 @smbus_pcall(i32 %227, i32 %230, i32 %233, i32 %237, i32* %240)
  %242 = call i32 @smbus_error(i32 %241)
  store i32 %242, i32* %18, align 4
  %243 = load i32, i32* %18, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %226
  br label %381

246:                                              ; preds = %226
  %247 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %248 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %280

251:                                              ; preds = %246
  %252 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %253 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp sge i32 %254, 2
  br i1 %255, label %256, label %280

256:                                              ; preds = %251
  %257 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %258 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %257, i32 0, i32 6
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = inttoptr i64 %261 to i8*
  %263 = ptrtoint i8* %262 to i8
  %264 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %263, i8* %264, align 16
  %265 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %266 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %265, i32 0, i32 6
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = ashr i32 %268, 8
  %270 = sext i32 %269 to i64
  %271 = inttoptr i64 %270 to i8*
  %272 = ptrtoint i8* %271 to i8
  %273 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 %272, i8* %273, align 1
  %274 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %275 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @copyout(i8* %25, i32 %276, i32 2)
  store i32 %277, i32* %18, align 4
  %278 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %279 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %278, i32 0, i32 1
  store i32 2, i32* %279, align 4
  br label %280

280:                                              ; preds = %256, %251, %246
  br label %381

281:                                              ; preds = %73
  %282 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %283 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load i32, i32* @EINVAL, align 4
  store i32 %287, i32* %18, align 4
  br label %381

288:                                              ; preds = %281
  %289 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %290 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @SMB_MAXBLOCKSIZE, align 4
  %293 = icmp sgt i32 %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %288
  %295 = load i32, i32* @SMB_MAXBLOCKSIZE, align 4
  %296 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %297 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %296, i32 0, i32 2
  store i32 %295, i32* %297, align 4
  br label %298

298:                                              ; preds = %294, %288
  %299 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %300 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %298
  %304 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %305 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %308 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @copyin(i32 %306, i8* %25, i32 %309)
  store i32 %310, i32* %18, align 4
  br label %311

311:                                              ; preds = %303, %298
  %312 = load i32, i32* %18, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  br label %381

315:                                              ; preds = %311
  %316 = load i32, i32* %14, align 4
  %317 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %318 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %321 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %324 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @smbus_bwrite(i32 %316, i32 %319, i32 %322, i32 %325, i8* %25)
  %327 = call i32 @smbus_error(i32 %326)
  store i32 %327, i32* %18, align 4
  br label %381

328:                                              ; preds = %73
  %329 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %330 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %328
  %334 = load i32, i32* @EINVAL, align 4
  store i32 %334, i32* %18, align 4
  br label %381

335:                                              ; preds = %328
  %336 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %337 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @SMB_MAXBLOCKSIZE, align 4
  %340 = icmp sgt i32 %338, %339
  br i1 %340, label %341, label %345

341:                                              ; preds = %335
  %342 = load i32, i32* @SMB_MAXBLOCKSIZE, align 4
  %343 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %344 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %343, i32 0, i32 1
  store i32 %342, i32* %344, align 4
  br label %345

345:                                              ; preds = %341, %335
  %346 = load i32, i32* %14, align 4
  %347 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %348 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %351 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @smbus_bread(i32 %346, i32 %349, i32 %352, i8** %20, i8* %25)
  %354 = call i32 @smbus_error(i32 %353)
  store i32 %354, i32* %18, align 4
  %355 = load i32, i32* %18, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %345
  br label %381

358:                                              ; preds = %345
  %359 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %360 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = inttoptr i64 %362 to i8*
  %364 = load i8*, i8** %20, align 8
  %365 = icmp ugt i8* %363, %364
  br i1 %365, label %366, label %371

366:                                              ; preds = %358
  %367 = load i8*, i8** %20, align 8
  %368 = ptrtoint i8* %367 to i32
  %369 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %370 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %369, i32 0, i32 1
  store i32 %368, i32* %370, align 4
  br label %371

371:                                              ; preds = %366, %358
  %372 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %373 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.smbcmd*, %struct.smbcmd** %15, align 8
  %376 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @copyout(i8* %25, i32 %374, i32 %377)
  store i32 %378, i32* %18, align 4
  br label %381

379:                                              ; preds = %73
  %380 = load i32, i32* @ENOTTY, align 4
  store i32 %380, i32* %18, align 4
  br label %381

381:                                              ; preds = %379, %371, %357, %333, %315, %314, %286, %280, %245, %225, %190, %174, %153, %124, %110, %101, %91, %83, %75
  %382 = load i32, i32* %14, align 4
  %383 = load i32, i32* %17, align 4
  %384 = call i32 @smbus_release_bus(i32 %382, i32 %383)
  %385 = load i32, i32* %18, align 4
  store i32 %385, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %386

386:                                              ; preds = %381, %71, %52
  %387 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %387)
  %388 = load i32, i32* %6, align 4
  ret i32 %388
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev2unit(%struct.cdev*) #2

declare dso_local i32 @device_get_parent(i32) #2

declare dso_local i32 @smbus_request_bus(i32, i32, i32) #2

declare dso_local i32 @smbus_error(i32) #2

declare dso_local i32 @smbus_quick(i32, i32, i32) #2

declare dso_local i32 @smbus_sendb(i32, i32, i32) #2

declare dso_local i32 @smbus_recvb(i32, i32, i32*) #2

declare dso_local i32 @smbus_writeb(i32, i32, i32, i32) #2

declare dso_local i32 @smbus_writew(i32, i32, i32, i32) #2

declare dso_local i32 @smbus_readb(i32, i32, i32, i8*) #2

declare dso_local i32 @copyout(i8*, i32, i32) #2

declare dso_local i32 @smbus_readw(i32, i32, i32, i32*) #2

declare dso_local i32 @smbus_pcall(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @copyin(i32, i8*, i32) #2

declare dso_local i32 @smbus_bwrite(i32, i32, i32, i32, i8*) #2

declare dso_local i32 @smbus_bread(i32, i32, i32, i8**, i8*) #2

declare dso_local i32 @smbus_release_bus(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
