; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_user.c_pci_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_user.c_pci_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlist = type { i32 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.pci_conf_io = type { i32, i64, i64, i64, i32, i8*, i32, i32, i32 }
%struct.pci_devinfo = type { %struct.TYPE_15__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.pci_io = type { i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.pci_bar_io = type { i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.pci_list_vpd_io = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.pci_match_conf = type { i32, i64, i64, i64, i32, i8*, i32, i32, i32 }
%struct.pci_map = type { i32, i32 }
%struct.pci_bar_mmap = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%union.pci_conf_union = type { i32 }

@FWRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@pci_generation = common dso_local global i32 0, align 4
@PCI_GETCONF_LIST_CHANGED = common dso_local global i8* null, align 8
@pci_numdevs = common dso_local global i64 0, align 8
@PCI_GETCONF_LAST_DEVICE = common dso_local global i8* null, align 8
@pci_devq = common dso_local global %struct.devlist zeroinitializer, align 4
@PCI_GETCONF_ERROR = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@PCI_MAXNAMELEN = common dso_local global i64 0, align 8
@pci_links = common dso_local global i32 0, align 4
@PCI_GETCONF_MORE_DEVS = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@PCIIO_BAR_MMAP_RW = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @pci_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.devlist*, align 8
  %15 = alloca %struct.pci_conf_io*, align 8
  %16 = alloca %struct.pci_devinfo*, align 8
  %17 = alloca %struct.pci_io*, align 8
  %18 = alloca %struct.pci_bar_io*, align 8
  %19 = alloca %struct.pci_list_vpd_io*, align 8
  %20 = alloca %struct.pci_match_conf*, align 8
  %21 = alloca %struct.pci_map*, align 8
  %22 = alloca %struct.pci_bar_mmap*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %union.pci_conf_union, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store %struct.pci_conf_io* null, %struct.pci_conf_io** %15, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @FWRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %37 [
    i32 136, label %36
    i32 137, label %36
    i32 132, label %36
  ]

36:                                               ; preds = %34, %34, %34
  br label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @EPERM, align 4
  store i32 %38, i32* %6, align 4
  br label %553

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %5
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %549 [
    i32 136, label %42
    i32 131, label %319
    i32 129, label %319
    i32 137, label %396
    i32 139, label %447
    i32 132, label %477
    i32 138, label %505
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* @M_TEMP, align 4
  %44 = load i32, i32* @M_WAITOK, align 4
  %45 = load i32, i32* @M_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = call %struct.pci_match_conf* @malloc(i32 64, i32 %43, i32 %46)
  %48 = bitcast %struct.pci_match_conf* %47 to %struct.pci_conf_io*
  store %struct.pci_conf_io* %48, %struct.pci_conf_io** %15, align 8
  %49 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %50 = bitcast %struct.pci_conf_io* %49 to %struct.pci_match_conf*
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @pci_conf_io_init(%struct.pci_match_conf* %50, i64 %51, i32 %52)
  store %struct.pci_match_conf* null, %struct.pci_match_conf** %20, align 8
  store i32 0, i32* %28, align 4
  store %struct.pci_devinfo* null, %struct.pci_devinfo** %16, align 8
  %54 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %55 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %57 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %42
  %61 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %62 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @pci_generation, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i8*, i8** @PCI_GETCONF_LIST_CHANGED, align 8
  %68 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %69 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  store i32 0, i32* %25, align 4
  br label %306

70:                                               ; preds = %60, %42
  %71 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %72 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @pci_numdevs, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i8*, i8** @PCI_GETCONF_LAST_DEVICE, align 8
  %78 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %79 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  store i32 0, i32* %25, align 4
  br label %306

80:                                               ; preds = %70
  store %struct.devlist* @pci_devq, %struct.devlist** %14, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @pci_conf_size(i32 %81)
  store i64 %82, i64* %23, align 8
  %83 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %84 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %87 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %23, align 8
  %90 = urem i64 %88, %89
  %91 = sub i64 %85, %90
  %92 = trunc i64 %91 to i32
  %93 = load i64, i64* @pci_numdevs, align 8
  %94 = load i64, i64* %23, align 8
  %95 = mul i64 %93, %94
  %96 = call i64 @min(i32 %92, i64 %95)
  store i64 %96, i64* %24, align 8
  %97 = load i64, i64* %24, align 8
  %98 = load i64, i64* %23, align 8
  %99 = udiv i64 %97, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %26, align 4
  %101 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %102 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ugt i64 %103, 0
  br i1 %104, label %105, label %158

105:                                              ; preds = %80
  %106 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %107 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @pci_numdevs, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %158

111:                                              ; preds = %105
  %112 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %113 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %158

116:                                              ; preds = %111
  %117 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %118 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @pci_match_conf_size(i32 %120)
  %122 = sext i32 %121 to i64
  %123 = mul i64 %119, %122
  %124 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %125 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = icmp ne i64 %123, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %116
  %130 = load i8*, i8** @PCI_GETCONF_ERROR, align 8
  %131 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %132 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %131, i32 0, i32 5
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* @EINVAL, align 4
  store i32 %133, i32* %25, align 4
  br label %306

134:                                              ; preds = %116
  %135 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %136 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @M_TEMP, align 4
  %139 = load i32, i32* @M_WAITOK, align 4
  %140 = call %struct.pci_match_conf* @malloc(i32 %137, i32 %138, i32 %139)
  store %struct.pci_match_conf* %140, %struct.pci_match_conf** %20, align 8
  %141 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %142 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.pci_match_conf*, %struct.pci_match_conf** %20, align 8
  %145 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %146 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @copyin(i32 %143, %struct.pci_match_conf* %144, i32 %147)
  store i32 %148, i32* %25, align 4
  %149 = load i32, i32* %25, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %134
  %152 = load i32, i32* @EINVAL, align 4
  store i32 %152, i32* %25, align 4
  br label %306

153:                                              ; preds = %134
  %154 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %155 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %28, align 4
  br label %174

158:                                              ; preds = %111, %105, %80
  %159 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %160 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp ugt i64 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %165 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163, %158
  %169 = load i8*, i8** @PCI_GETCONF_ERROR, align 8
  %170 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %171 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %170, i32 0, i32 5
  store i8* %169, i8** %171, align 8
  %172 = load i32, i32* @EINVAL, align 4
  store i32 %172, i32* %25, align 4
  br label %306

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173, %153
  %175 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %176 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %175, i32 0, i32 0
  store i32 0, i32* %176, align 8
  store i32 0, i32* %27, align 4
  %177 = load %struct.devlist*, %struct.devlist** %14, align 8
  %178 = call %struct.pci_devinfo* @STAILQ_FIRST(%struct.devlist* %177)
  store %struct.pci_devinfo* %178, %struct.pci_devinfo** %16, align 8
  br label %179

179:                                              ; preds = %281, %174
  %180 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %181 = icmp ne %struct.pci_devinfo* %180, null
  br i1 %181, label %182, label %287

182:                                              ; preds = %179
  %183 = load i32, i32* %27, align 4
  %184 = sext i32 %183 to i64
  %185 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %186 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ult i64 %184, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %281

190:                                              ; preds = %182
  store i8* null, i8** %13, align 8
  %191 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %192 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %198 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i8* @device_get_name(i32 %200)
  store i8* %201, i8** %13, align 8
  br label %202

202:                                              ; preds = %196, %190
  %203 = load i8*, i8** %13, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %226

205:                                              ; preds = %202
  %206 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %207 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = load i8*, i8** %13, align 8
  %211 = call i32 @strncpy(i8* %209, i8* %210, i32 8)
  %212 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %213 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i64, i64* @PCI_MAXNAMELEN, align 8
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  store i8 0, i8* %217, align 1
  %218 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %219 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @device_get_unit(i32 %221)
  %223 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %224 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 1
  store i32 %222, i32* %225, align 8
  br label %235

226:                                              ; preds = %202
  %227 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %228 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 0
  store i8 0, i8* %231, align 1
  %232 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %233 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  store i32 0, i32* %234, align 8
  br label %235

235:                                              ; preds = %226, %205
  %236 = load %struct.pci_match_conf*, %struct.pci_match_conf** %20, align 8
  %237 = icmp eq %struct.pci_match_conf* %236, null
  br i1 %237, label %246, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.pci_match_conf*, %struct.pci_match_conf** %20, align 8
  %241 = load i32, i32* %28, align 4
  %242 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %243 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %242, i32 0, i32 0
  %244 = call i32 @pci_conf_match(i32 %239, %struct.pci_match_conf* %240, i32 %241, %struct.TYPE_15__* %243)
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %280

246:                                              ; preds = %238, %235
  %247 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %248 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %26, align 4
  %251 = icmp sge i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  store i32 0, i32* %25, align 4
  br label %287

253:                                              ; preds = %246
  %254 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %255 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %254, i32 0, i32 0
  %256 = load i32, i32* %8, align 4
  %257 = call i32 @pci_conf_for_copyout(%struct.TYPE_15__* %255, %union.pci_conf_union* %29, i32 %256)
  %258 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %259 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* %23, align 8
  %263 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %264 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = mul i64 %262, %266
  %268 = add i64 %261, %267
  %269 = trunc i64 %268 to i32
  %270 = load i64, i64* %23, align 8
  %271 = call i32 @copyout(%union.pci_conf_union* %29, i32 %269, i64 %270)
  store i32 %271, i32* %25, align 4
  %272 = load i32, i32* %25, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %253
  br label %287

275:                                              ; preds = %253
  %276 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %277 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %277, align 8
  br label %280

280:                                              ; preds = %275, %238
  br label %281

281:                                              ; preds = %280, %189
  %282 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %283 = load i32, i32* @pci_links, align 4
  %284 = call %struct.pci_devinfo* @STAILQ_NEXT(%struct.pci_devinfo* %282, i32 %283)
  store %struct.pci_devinfo* %284, %struct.pci_devinfo** %16, align 8
  %285 = load i32, i32* %27, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %27, align 4
  br label %179

287:                                              ; preds = %274, %252, %179
  %288 = load i32, i32* %27, align 4
  %289 = sext i32 %288 to i64
  %290 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %291 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %290, i32 0, i32 1
  store i64 %289, i64* %291, align 8
  %292 = load i32, i32* @pci_generation, align 4
  %293 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %294 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %293, i32 0, i32 6
  store i32 %292, i32* %294, align 8
  %295 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %296 = icmp eq %struct.pci_devinfo* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %287
  %298 = load i8*, i8** @PCI_GETCONF_LAST_DEVICE, align 8
  %299 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %300 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %299, i32 0, i32 5
  store i8* %298, i8** %300, align 8
  br label %305

301:                                              ; preds = %287
  %302 = load i8*, i8** @PCI_GETCONF_MORE_DEVS, align 8
  %303 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %304 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %303, i32 0, i32 5
  store i8* %302, i8** %304, align 8
  br label %305

305:                                              ; preds = %301, %297
  br label %306

306:                                              ; preds = %305, %168, %151, %129, %76, %66
  %307 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %308 = bitcast %struct.pci_conf_io* %307 to %struct.pci_match_conf*
  %309 = load i64, i64* %9, align 8
  %310 = load i32, i32* %8, align 4
  %311 = call i32 @pci_conf_io_update_data(%struct.pci_match_conf* %308, i64 %309, i32 %310)
  %312 = load %struct.pci_conf_io*, %struct.pci_conf_io** %15, align 8
  %313 = bitcast %struct.pci_conf_io* %312 to %struct.pci_match_conf*
  %314 = load i32, i32* @M_TEMP, align 4
  %315 = call i32 @free(%struct.pci_match_conf* %313, i32 %314)
  %316 = load %struct.pci_match_conf*, %struct.pci_match_conf** %20, align 8
  %317 = load i32, i32* @M_TEMP, align 4
  %318 = call i32 @free(%struct.pci_match_conf* %316, i32 %317)
  br label %551

319:                                              ; preds = %40, %40
  %320 = load i64, i64* %9, align 8
  %321 = inttoptr i64 %320 to %struct.pci_io*
  store %struct.pci_io* %321, %struct.pci_io** %17, align 8
  %322 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %323 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  switch i32 %324, label %393 [
    i32 4, label %325
    i32 2, label %325
    i32 1, label %325
  ]

325:                                              ; preds = %319, %319, %319
  %326 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %327 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %340, label %330

330:                                              ; preds = %325
  %331 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %332 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %335 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = sub nsw i32 %336, 1
  %338 = and i32 %333, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %330, %325
  %341 = load i32, i32* @EINVAL, align 4
  store i32 %341, i32* %25, align 4
  br label %395

342:                                              ; preds = %330
  %343 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %344 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %348 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %352 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %356 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call i32* @pci_find_dbsf(i32 %346, i32 %350, i32 %354, i32 %358)
  store i32* %359, i32** %12, align 8
  %360 = load i32*, i32** %12, align 8
  %361 = icmp ne i32* %360, null
  br i1 %361, label %362, label %390

362:                                              ; preds = %342
  %363 = load i32, i32* %8, align 4
  %364 = icmp eq i32 %363, 129
  br i1 %364, label %365, label %377

365:                                              ; preds = %362
  %366 = load i32*, i32** %12, align 8
  %367 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %368 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %371 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %374 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @pci_write_config(i32* %366, i32 %369, i32 %372, i32 %375)
  br label %389

377:                                              ; preds = %362
  %378 = load i32*, i32** %12, align 8
  %379 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %380 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %383 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 4
  %385 = call i8* @pci_read_config(i32* %378, i32 %381, i32 %384)
  %386 = ptrtoint i8* %385 to i32
  %387 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %388 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %387, i32 0, i32 1
  store i32 %386, i32* %388, align 4
  br label %389

389:                                              ; preds = %377, %365
  store i32 0, i32* %25, align 4
  br label %392

390:                                              ; preds = %342
  %391 = load i32, i32* @ENODEV, align 4
  store i32 %391, i32* %25, align 4
  br label %392

392:                                              ; preds = %390, %389
  br label %395

393:                                              ; preds = %319
  %394 = load i32, i32* @EINVAL, align 4
  store i32 %394, i32* %25, align 4
  br label %395

395:                                              ; preds = %393, %392, %340
  br label %551

396:                                              ; preds = %40
  %397 = load i64, i64* %9, align 8
  %398 = inttoptr i64 %397 to %struct.pci_bar_io*
  store %struct.pci_bar_io* %398, %struct.pci_bar_io** %18, align 8
  %399 = load %struct.pci_bar_io*, %struct.pci_bar_io** %18, align 8
  %400 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %399, i32 0, i32 4
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.pci_bar_io*, %struct.pci_bar_io** %18, align 8
  %404 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %403, i32 0, i32 4
  %405 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.pci_bar_io*, %struct.pci_bar_io** %18, align 8
  %408 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %407, i32 0, i32 4
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.pci_bar_io*, %struct.pci_bar_io** %18, align 8
  %412 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %411, i32 0, i32 4
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = call i32* @pci_find_dbsf(i32 %402, i32 %406, i32 %410, i32 %414)
  store i32* %415, i32** %12, align 8
  %416 = load i32*, i32** %12, align 8
  %417 = icmp eq i32* %416, null
  br i1 %417, label %418, label %420

418:                                              ; preds = %396
  %419 = load i32, i32* @ENODEV, align 4
  store i32 %419, i32* %25, align 4
  br label %551

420:                                              ; preds = %396
  %421 = load i32*, i32** %12, align 8
  %422 = load %struct.pci_bar_io*, %struct.pci_bar_io** %18, align 8
  %423 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 4
  %425 = call %struct.pci_map* @pci_find_bar(i32* %421, i32 %424)
  store %struct.pci_map* %425, %struct.pci_map** %21, align 8
  %426 = load %struct.pci_map*, %struct.pci_map** %21, align 8
  %427 = icmp eq %struct.pci_map* %426, null
  br i1 %427, label %428, label %430

428:                                              ; preds = %420
  %429 = load i32, i32* @EINVAL, align 4
  store i32 %429, i32* %25, align 4
  br label %551

430:                                              ; preds = %420
  %431 = load %struct.pci_map*, %struct.pci_map** %21, align 8
  %432 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.pci_bar_io*, %struct.pci_bar_io** %18, align 8
  %435 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %434, i32 0, i32 2
  store i32 %433, i32* %435, align 4
  %436 = load %struct.pci_map*, %struct.pci_map** %21, align 8
  %437 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = shl i32 1, %438
  %440 = load %struct.pci_bar_io*, %struct.pci_bar_io** %18, align 8
  %441 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %440, i32 0, i32 0
  store i32 %439, i32* %441, align 4
  %442 = load i32*, i32** %12, align 8
  %443 = load %struct.pci_map*, %struct.pci_map** %21, align 8
  %444 = call i32 @pci_bar_enabled(i32* %442, %struct.pci_map* %443)
  %445 = load %struct.pci_bar_io*, %struct.pci_bar_io** %18, align 8
  %446 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %445, i32 0, i32 1
  store i32 %444, i32* %446, align 4
  store i32 0, i32* %25, align 4
  br label %551

447:                                              ; preds = %40
  store i32 0, i32* %25, align 4
  %448 = load i64, i64* %9, align 8
  %449 = inttoptr i64 %448 to %struct.pci_io*
  store %struct.pci_io* %449, %struct.pci_io** %17, align 8
  %450 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %451 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %455 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %459 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %458, i32 0, i32 2
  %460 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %463 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %462, i32 0, i32 2
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = call i32* @pci_find_dbsf(i32 %453, i32 %457, i32 %461, i32 %465)
  store i32* %466, i32** %12, align 8
  %467 = load i32*, i32** %12, align 8
  %468 = icmp ne i32* %467, null
  br i1 %468, label %469, label %474

469:                                              ; preds = %447
  %470 = load i32*, i32** %12, align 8
  %471 = call i32 @device_is_attached(i32* %470)
  %472 = load %struct.pci_io*, %struct.pci_io** %17, align 8
  %473 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %472, i32 0, i32 1
  store i32 %471, i32* %473, align 4
  br label %476

474:                                              ; preds = %447
  %475 = load i32, i32* @ENODEV, align 4
  store i32 %475, i32* %25, align 4
  br label %476

476:                                              ; preds = %474, %469
  br label %551

477:                                              ; preds = %40
  %478 = load i64, i64* %9, align 8
  %479 = inttoptr i64 %478 to %struct.pci_list_vpd_io*
  store %struct.pci_list_vpd_io* %479, %struct.pci_list_vpd_io** %19, align 8
  %480 = load %struct.pci_list_vpd_io*, %struct.pci_list_vpd_io** %19, align 8
  %481 = getelementptr inbounds %struct.pci_list_vpd_io, %struct.pci_list_vpd_io* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.pci_list_vpd_io*, %struct.pci_list_vpd_io** %19, align 8
  %485 = getelementptr inbounds %struct.pci_list_vpd_io, %struct.pci_list_vpd_io* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 4
  %488 = load %struct.pci_list_vpd_io*, %struct.pci_list_vpd_io** %19, align 8
  %489 = getelementptr inbounds %struct.pci_list_vpd_io, %struct.pci_list_vpd_io* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.pci_list_vpd_io*, %struct.pci_list_vpd_io** %19, align 8
  %493 = getelementptr inbounds %struct.pci_list_vpd_io, %struct.pci_list_vpd_io* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = call i32* @pci_find_dbsf(i32 %483, i32 %487, i32 %491, i32 %495)
  store i32* %496, i32** %12, align 8
  %497 = load i32*, i32** %12, align 8
  %498 = icmp eq i32* %497, null
  br i1 %498, label %499, label %501

499:                                              ; preds = %477
  %500 = load i32, i32* @ENODEV, align 4
  store i32 %500, i32* %25, align 4
  br label %551

501:                                              ; preds = %477
  %502 = load i32*, i32** %12, align 8
  %503 = load %struct.pci_list_vpd_io*, %struct.pci_list_vpd_io** %19, align 8
  %504 = call i32 @pci_list_vpd(i32* %502, %struct.pci_list_vpd_io* %503)
  store i32 %504, i32* %25, align 4
  br label %551

505:                                              ; preds = %40
  %506 = load i64, i64* %9, align 8
  %507 = inttoptr i64 %506 to %struct.pci_bar_mmap*
  store %struct.pci_bar_mmap* %507, %struct.pci_bar_mmap** %22, align 8
  %508 = load i32, i32* %10, align 4
  %509 = load i32, i32* @FWRITE, align 4
  %510 = and i32 %508, %509
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %521

512:                                              ; preds = %505
  %513 = load %struct.pci_bar_mmap*, %struct.pci_bar_mmap** %22, align 8
  %514 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* @PCIIO_BAR_MMAP_RW, align 4
  %517 = and i32 %515, %516
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %521

519:                                              ; preds = %512
  %520 = load i32, i32* @EPERM, align 4
  store i32 %520, i32* %6, align 4
  br label %553

521:                                              ; preds = %512, %505
  %522 = load %struct.pci_bar_mmap*, %struct.pci_bar_mmap** %22, align 8
  %523 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %523, i32 0, i32 3
  %525 = load i32, i32* %524, align 4
  %526 = load %struct.pci_bar_mmap*, %struct.pci_bar_mmap** %22, align 8
  %527 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %527, i32 0, i32 2
  %529 = load i32, i32* %528, align 4
  %530 = load %struct.pci_bar_mmap*, %struct.pci_bar_mmap** %22, align 8
  %531 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 4
  %534 = load %struct.pci_bar_mmap*, %struct.pci_bar_mmap** %22, align 8
  %535 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 4
  %538 = call i32* @pci_find_dbsf(i32 %525, i32 %529, i32 %533, i32 %537)
  store i32* %538, i32** %12, align 8
  %539 = load i32*, i32** %12, align 8
  %540 = icmp eq i32* %539, null
  br i1 %540, label %541, label %543

541:                                              ; preds = %521
  %542 = load i32, i32* @ENODEV, align 4
  br label %547

543:                                              ; preds = %521
  %544 = load i32*, i32** %12, align 8
  %545 = load %struct.pci_bar_mmap*, %struct.pci_bar_mmap** %22, align 8
  %546 = call i32 @pci_bar_mmap(i32* %544, %struct.pci_bar_mmap* %545)
  br label %547

547:                                              ; preds = %543, %541
  %548 = phi i32 [ %542, %541 ], [ %546, %543 ]
  store i32 %548, i32* %25, align 4
  br label %551

549:                                              ; preds = %40
  %550 = load i32, i32* @ENOTTY, align 4
  store i32 %550, i32* %25, align 4
  br label %551

551:                                              ; preds = %549, %547, %501, %499, %476, %430, %428, %418, %395, %306
  %552 = load i32, i32* %25, align 4
  store i32 %552, i32* %6, align 4
  br label %553

553:                                              ; preds = %551, %519, %37
  %554 = load i32, i32* %6, align 4
  ret i32 %554
}

declare dso_local %struct.pci_match_conf* @malloc(i32, i32, i32) #1

declare dso_local i32 @pci_conf_io_init(%struct.pci_match_conf*, i64, i32) #1

declare dso_local i64 @pci_conf_size(i32) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @pci_match_conf_size(i32) #1

declare dso_local i32 @copyin(i32, %struct.pci_match_conf*, i32) #1

declare dso_local %struct.pci_devinfo* @STAILQ_FIRST(%struct.devlist*) #1

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @pci_conf_match(i32, %struct.pci_match_conf*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @pci_conf_for_copyout(%struct.TYPE_15__*, %union.pci_conf_union*, i32) #1

declare dso_local i32 @copyout(%union.pci_conf_union*, i32, i64) #1

declare dso_local %struct.pci_devinfo* @STAILQ_NEXT(%struct.pci_devinfo*, i32) #1

declare dso_local i32 @pci_conf_io_update_data(%struct.pci_match_conf*, i64, i32) #1

declare dso_local i32 @free(%struct.pci_match_conf*, i32) #1

declare dso_local i32* @pci_find_dbsf(i32, i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32*, i32, i32, i32) #1

declare dso_local i8* @pci_read_config(i32*, i32, i32) #1

declare dso_local %struct.pci_map* @pci_find_bar(i32*, i32) #1

declare dso_local i32 @pci_bar_enabled(i32*, %struct.pci_map*) #1

declare dso_local i32 @device_is_attached(i32*) #1

declare dso_local i32 @pci_list_vpd(i32*, %struct.pci_list_vpd_io*) #1

declare dso_local i32 @pci_bar_mmap(i32*, %struct.pci_bar_mmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
