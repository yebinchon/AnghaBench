; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_read_config_info_ioc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_read_config_info_ioc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i64, i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i32*, %struct.mpt_raid_volume* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.mpt_raid_volume = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@MPI_CONFIG_PAGETYPE_IOC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"IOC Page 2 Header: Version %x len %x PageNumber %x PageType %x\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"unable to allocate memory for IOC page 2\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to read IOC Page 2\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Capabilities: (\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" RAID-0\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" RAID-1E\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" RAID-1\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" SES\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" SAFTE\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c" Multi-Channel-Arrays\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" )\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"%d Active Volume%s(%d Max)\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"s \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"%d Hidden Drive Member%s(%d Max)\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Could not allocate RAID volume data\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Could not allocate RAID page data\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Could not allocate RAID disk data\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"IOC Page 3 Header: %x %x %x %x\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"unable to allocate memory for IOC page 3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_read_config_info_ioc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_read_config_info_ioc(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca %struct.mpt_raid_volume*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %11 = load i32, i32* @MPI_CONFIG_PAGETYPE_IOC, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @mpt_read_cfg_header(%struct.mpt_softc* %10, i32 %11, i32 2, i32 0, %struct.TYPE_6__* %4, i32 %12, i32 5000)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %377

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %377

23:                                               ; preds = %18
  %24 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %25 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mpt_lprt(%struct.mpt_softc* %24, i32 %25, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %32, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* @M_DEVBUF, align 4
  %42 = load i32, i32* @M_NOWAIT, align 4
  %43 = load i32, i32* @M_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @malloc(i64 %40, i32 %41, i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_8__*
  %47 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %48 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %47, i32 0, i32 4
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %48, align 8
  %49 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %50 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %49, i32 0, i32 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = icmp eq %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %23
  %54 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %55 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %57 = call i32 @mpt_raid_free_mem(%struct.mpt_softc* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  store i32 %58, i32* %2, align 4
  br label %377

59:                                               ; preds = %23
  %60 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %61 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %60, i32 0, i32 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  %64 = call i32 @memcpy(i32* %63, %struct.TYPE_6__* %4, i32 16)
  %65 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %66 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %67 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %66, i32 0, i32 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @mpt_read_cur_cfg_page(%struct.mpt_softc* %65, i32 0, i32* %69, i64 %70, i32 %71, i32 5000)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %59
  %76 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %77 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %79 = call i32 @mpt_raid_free_mem(%struct.mpt_softc* %78)
  %80 = load i32, i32* @EIO, align 4
  store i32 %80, i32* %2, align 4
  br label %377

81:                                               ; preds = %59
  %82 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %83 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %82, i32 0, i32 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = call i32 @mpt2host_config_page_ioc2(%struct.TYPE_8__* %84)
  %86 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %87 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %86, i32 0, i32 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %185

92:                                               ; preds = %81
  %93 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %94 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %95

95:                                               ; preds = %130, %92
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %133

98:                                               ; preds = %95
  %99 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %100 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %99, i32 0, i32 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %130

108:                                              ; preds = %98
  %109 = load i32, i32* %9, align 4
  switch i32 %109, label %128 [
    i32 130, label %110
    i32 132, label %113
    i32 131, label %116
    i32 128, label %119
    i32 129, label %122
    i32 133, label %125
  ]

110:                                              ; preds = %108
  %111 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %112 = call i32 @mpt_prtc(%struct.mpt_softc* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %129

113:                                              ; preds = %108
  %114 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %115 = call i32 @mpt_prtc(%struct.mpt_softc* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %129

116:                                              ; preds = %108
  %117 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %118 = call i32 @mpt_prtc(%struct.mpt_softc* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %129

119:                                              ; preds = %108
  %120 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %121 = call i32 @mpt_prtc(%struct.mpt_softc* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %129

122:                                              ; preds = %108
  %123 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %124 = call i32 @mpt_prtc(%struct.mpt_softc* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %129

125:                                              ; preds = %108
  %126 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %127 = call i32 @mpt_prtc(%struct.mpt_softc* %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %128

128:                                              ; preds = %108, %125
  br label %129

129:                                              ; preds = %128, %122, %119, %116, %113, %110
  br label %130

130:                                              ; preds = %129, %107
  %131 = load i32, i32* %9, align 4
  %132 = shl i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %95

133:                                              ; preds = %95
  %134 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %135 = call i32 @mpt_prtc(%struct.mpt_softc* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %136 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %137 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %136, i32 0, i32 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 135
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %184

143:                                              ; preds = %133
  %144 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %145 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %146 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %145, i32 0, i32 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %151 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %150, i32 0, i32 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 1
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %158 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %159 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %158, i32 0, i32 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %149, i8* %157, i32 %162)
  %164 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %165 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %166 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %165, i32 0, i32 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %171 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %170, i32 0, i32 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 1
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %178 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %179 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %178, i32 0, i32 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %164, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %169, i8* %177, i32 %182)
  br label %184

184:                                              ; preds = %143, %133
  br label %185

185:                                              ; preds = %184, %81
  %186 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %187 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %186, i32 0, i32 4
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 8
  store i64 %192, i64* %8, align 8
  %193 = load i64, i64* %8, align 8
  %194 = load i32, i32* @M_DEVBUF, align 4
  %195 = load i32, i32* @M_NOWAIT, align 4
  %196 = load i32, i32* @M_ZERO, align 4
  %197 = or i32 %195, %196
  %198 = call i8* @malloc(i64 %193, i32 %194, i32 %197)
  %199 = bitcast i8* %198 to %struct.mpt_raid_volume*
  %200 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %201 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %200, i32 0, i32 6
  store %struct.mpt_raid_volume* %199, %struct.mpt_raid_volume** %201, align 8
  %202 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %203 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %202, i32 0, i32 6
  %204 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %203, align 8
  %205 = icmp eq %struct.mpt_raid_volume* %204, null
  br i1 %205, label %206, label %212

206:                                              ; preds = %185
  %207 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %208 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %207, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  %209 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %210 = call i32 @mpt_raid_free_mem(%struct.mpt_softc* %209)
  %211 = load i32, i32* @ENOMEM, align 4
  store i32 %211, i32* %2, align 4
  br label %377

212:                                              ; preds = %185
  %213 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %214 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %213, i32 0, i32 4
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %219 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %221 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %220, i32 0, i32 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = mul i64 4, %226
  %228 = add i64 4, %227
  store i64 %228, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %229

229:                                              ; preds = %264, %212
  %230 = load i32, i32* %7, align 4
  %231 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %232 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %231, i32 0, i32 4
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = icmp slt i32 %230, %235
  br i1 %236, label %237, label %267

237:                                              ; preds = %229
  %238 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %239 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %238, i32 0, i32 6
  %240 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %240, i64 %242
  store %struct.mpt_raid_volume* %243, %struct.mpt_raid_volume** %5, align 8
  %244 = load i64, i64* %8, align 8
  %245 = load i32, i32* @M_DEVBUF, align 4
  %246 = load i32, i32* @M_NOWAIT, align 4
  %247 = load i32, i32* @M_ZERO, align 4
  %248 = or i32 %246, %247
  %249 = call i8* @malloc(i64 %244, i32 %245, i32 %248)
  %250 = bitcast i8* %249 to i32*
  %251 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %252 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %251, i32 0, i32 0
  store i32* %250, i32** %252, align 8
  %253 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %254 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = icmp eq i32* %255, null
  br i1 %256, label %257, label %263

257:                                              ; preds = %237
  %258 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %259 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %258, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  %260 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %261 = call i32 @mpt_raid_free_mem(%struct.mpt_softc* %260)
  %262 = load i32, i32* @ENOMEM, align 4
  store i32 %262, i32* %2, align 4
  br label %377

263:                                              ; preds = %237
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %7, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %7, align 4
  br label %229

267:                                              ; preds = %229
  %268 = load i64, i64* %8, align 8
  %269 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %270 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %269, i32 0, i32 1
  store i64 %268, i64* %270, align 8
  %271 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %272 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %271, i32 0, i32 4
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = mul i64 %276, 4
  store i64 %277, i64* %8, align 8
  %278 = load i64, i64* %8, align 8
  %279 = load i32, i32* @M_DEVBUF, align 4
  %280 = load i32, i32* @M_NOWAIT, align 4
  %281 = load i32, i32* @M_ZERO, align 4
  %282 = or i32 %280, %281
  %283 = call i8* @malloc(i64 %278, i32 %279, i32 %282)
  %284 = bitcast i8* %283 to i32*
  %285 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %286 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %285, i32 0, i32 5
  store i32* %284, i32** %286, align 8
  %287 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %288 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %287, i32 0, i32 5
  %289 = load i32*, i32** %288, align 8
  %290 = icmp eq i32* %289, null
  br i1 %290, label %291, label %297

291:                                              ; preds = %267
  %292 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %293 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %292, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0))
  %294 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %295 = call i32 @mpt_raid_free_mem(%struct.mpt_softc* %294)
  %296 = load i32, i32* @ENOMEM, align 4
  store i32 %296, i32* %2, align 4
  br label %377

297:                                              ; preds = %267
  %298 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %299 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %298, i32 0, i32 4
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %304 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 8
  %305 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %306 = load i32, i32* @MPI_CONFIG_PAGETYPE_IOC, align 4
  %307 = load i32, i32* @FALSE, align 4
  %308 = call i32 @mpt_read_cfg_header(%struct.mpt_softc* %305, i32 %306, i32 3, i32 0, %struct.TYPE_6__* %4, i32 %307, i32 5000)
  store i32 %308, i32* %6, align 4
  %309 = load i32, i32* %6, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %297
  %312 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %313 = call i32 @mpt_raid_free_mem(%struct.mpt_softc* %312)
  %314 = load i32, i32* @EIO, align 4
  store i32 %314, i32* %2, align 4
  br label %377

315:                                              ; preds = %297
  %316 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %317 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @mpt_lprt(%struct.mpt_softc* %316, i32 %317, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i32 %319, i32 %321, i32 %323, i32 %325)
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = mul i64 %329, 4
  store i64 %330, i64* %8, align 8
  %331 = load i64, i64* %8, align 8
  %332 = load i32, i32* @M_DEVBUF, align 4
  %333 = load i32, i32* @M_NOWAIT, align 4
  %334 = load i32, i32* @M_ZERO, align 4
  %335 = or i32 %333, %334
  %336 = call i8* @malloc(i64 %331, i32 %332, i32 %335)
  %337 = bitcast i8* %336 to %struct.TYPE_7__*
  %338 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %339 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %338, i32 0, i32 3
  store %struct.TYPE_7__* %337, %struct.TYPE_7__** %339, align 8
  %340 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %341 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %340, i32 0, i32 3
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %341, align 8
  %343 = icmp eq %struct.TYPE_7__* %342, null
  br i1 %343, label %344, label %350

344:                                              ; preds = %315
  %345 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %346 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %345, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0))
  %347 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %348 = call i32 @mpt_raid_free_mem(%struct.mpt_softc* %347)
  %349 = load i32, i32* @ENOMEM, align 4
  store i32 %349, i32* %2, align 4
  br label %377

350:                                              ; preds = %315
  %351 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %352 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %351, i32 0, i32 3
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 0
  %355 = call i32 @memcpy(i32* %354, %struct.TYPE_6__* %4, i32 16)
  %356 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %357 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %358 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %357, i32 0, i32 3
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 0
  %361 = load i64, i64* %8, align 8
  %362 = load i32, i32* @FALSE, align 4
  %363 = call i32 @mpt_read_cur_cfg_page(%struct.mpt_softc* %356, i32 0, i32* %360, i64 %361, i32 %362, i32 5000)
  store i32 %363, i32* %6, align 4
  %364 = load i32, i32* %6, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %350
  %367 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %368 = call i32 @mpt_raid_free_mem(%struct.mpt_softc* %367)
  %369 = load i32, i32* @EIO, align 4
  store i32 %369, i32* %2, align 4
  br label %377

370:                                              ; preds = %350
  %371 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %372 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %371, i32 0, i32 3
  %373 = load %struct.TYPE_7__*, %struct.TYPE_7__** %372, align 8
  %374 = call i32 @mpt2host_config_page_ioc3(%struct.TYPE_7__* %373)
  %375 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %376 = call i32 @mpt_raid_wakeup(%struct.mpt_softc* %375)
  store i32 0, i32* %2, align 4
  br label %377

377:                                              ; preds = %370, %366, %344, %311, %291, %257, %206, %75, %53, %21, %17
  %378 = load i32, i32* %2, align 4
  ret i32 %378
}

declare dso_local i32 @mpt_read_cfg_header(%struct.mpt_softc*, i32, i32, i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @mpt_raid_free_mem(%struct.mpt_softc*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mpt_read_cur_cfg_page(%struct.mpt_softc*, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @mpt2host_config_page_ioc2(%struct.TYPE_8__*) #1

declare dso_local i32 @mpt_prtc(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @mpt2host_config_page_ioc3(%struct.TYPE_7__*) #1

declare dso_local i32 @mpt_raid_wakeup(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
