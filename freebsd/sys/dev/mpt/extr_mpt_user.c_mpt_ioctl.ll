; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.mpt_softc* }
%struct.mpt_softc = type { i32 }
%struct.thread = type { i32 }
%struct.mpt_cfg_page_req = type { i32, i32, i32*, i32, i32 }
%struct.mpt_ext_cfg_page_req = type { i32, i32, i32*, i32, i32 }
%struct.mpt_raid_action = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.mpt_page_memory = type { i32* }
%struct.mpt_cfg_page_req32 = type { i32, i32, i8*, i32, i32 }
%struct.mpt_ext_cfg_page_req32 = type { i32, i32, i8*, i32, i32 }
%struct.mpt_raid_action32 = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32 }

@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @mpt_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.mpt_softc*, align 8
  %13 = alloca %struct.mpt_cfg_page_req*, align 8
  %14 = alloca %struct.mpt_ext_cfg_page_req*, align 8
  %15 = alloca %struct.mpt_raid_action*, align 8
  %16 = alloca %struct.mpt_page_memory, align 8
  %17 = alloca %struct.mpt_cfg_page_req32*, align 8
  %18 = alloca %struct.mpt_cfg_page_req, align 8
  %19 = alloca %struct.mpt_ext_cfg_page_req32*, align 8
  %20 = alloca %struct.mpt_ext_cfg_page_req, align 8
  %21 = alloca %struct.mpt_raid_action32*, align 8
  %22 = alloca %struct.mpt_raid_action, align 8
  %23 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %24 = load %struct.cdev*, %struct.cdev** %7, align 8
  %25 = getelementptr inbounds %struct.cdev, %struct.cdev* %24, i32 0, i32 0
  %26 = load %struct.mpt_softc*, %struct.mpt_softc** %25, align 8
  store %struct.mpt_softc* %26, %struct.mpt_softc** %12, align 8
  %27 = load i64, i64* %9, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.mpt_cfg_page_req*
  store %struct.mpt_cfg_page_req* %29, %struct.mpt_cfg_page_req** %13, align 8
  %30 = load i64, i64* %9, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to %struct.mpt_ext_cfg_page_req*
  store %struct.mpt_ext_cfg_page_req* %32, %struct.mpt_ext_cfg_page_req** %14, align 8
  %33 = load i64, i64* %9, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.mpt_raid_action*
  store %struct.mpt_raid_action* %35, %struct.mpt_raid_action** %15, align 8
  %36 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %16, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.mpt_cfg_page_req32*
  store %struct.mpt_cfg_page_req32* %39, %struct.mpt_cfg_page_req32** %17, align 8
  %40 = load i64, i64* %9, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = bitcast i8* %41 to %struct.mpt_ext_cfg_page_req32*
  store %struct.mpt_ext_cfg_page_req32* %42, %struct.mpt_ext_cfg_page_req32** %19, align 8
  %43 = load i64, i64* %9, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = bitcast i8* %44 to %struct.mpt_raid_action32*
  store %struct.mpt_raid_action32* %45, %struct.mpt_raid_action32** %21, align 8
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %168 [
    i32 136, label %47
    i32 134, label %47
    i32 128, label %47
    i32 132, label %75
    i32 130, label %75
    i32 138, label %103
  ]

47:                                               ; preds = %5, %5, %5
  store %struct.mpt_cfg_page_req* %18, %struct.mpt_cfg_page_req** %13, align 8
  %48 = load %struct.mpt_cfg_page_req32*, %struct.mpt_cfg_page_req32** %17, align 8
  %49 = getelementptr inbounds %struct.mpt_cfg_page_req32, %struct.mpt_cfg_page_req32* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %52 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mpt_cfg_page_req32*, %struct.mpt_cfg_page_req32** %17, align 8
  %54 = getelementptr inbounds %struct.mpt_cfg_page_req32, %struct.mpt_cfg_page_req32* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %57 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mpt_cfg_page_req32*, %struct.mpt_cfg_page_req32** %17, align 8
  %59 = getelementptr inbounds %struct.mpt_cfg_page_req32, %struct.mpt_cfg_page_req32* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @PTRIN(i8* %60)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %64 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = load %struct.mpt_cfg_page_req32*, %struct.mpt_cfg_page_req32** %17, align 8
  %66 = getelementptr inbounds %struct.mpt_cfg_page_req32, %struct.mpt_cfg_page_req32* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %69 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mpt_cfg_page_req32*, %struct.mpt_cfg_page_req32** %17, align 8
  %71 = getelementptr inbounds %struct.mpt_cfg_page_req32, %struct.mpt_cfg_page_req32* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %74 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %168

75:                                               ; preds = %5, %5
  store %struct.mpt_ext_cfg_page_req* %20, %struct.mpt_ext_cfg_page_req** %14, align 8
  %76 = load %struct.mpt_ext_cfg_page_req32*, %struct.mpt_ext_cfg_page_req32** %19, align 8
  %77 = getelementptr inbounds %struct.mpt_ext_cfg_page_req32, %struct.mpt_ext_cfg_page_req32* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %80 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.mpt_ext_cfg_page_req32*, %struct.mpt_ext_cfg_page_req32** %19, align 8
  %82 = getelementptr inbounds %struct.mpt_ext_cfg_page_req32, %struct.mpt_ext_cfg_page_req32* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %85 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.mpt_ext_cfg_page_req32*, %struct.mpt_ext_cfg_page_req32** %19, align 8
  %87 = getelementptr inbounds %struct.mpt_ext_cfg_page_req32, %struct.mpt_ext_cfg_page_req32* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @PTRIN(i8* %88)
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %92 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load %struct.mpt_ext_cfg_page_req32*, %struct.mpt_ext_cfg_page_req32** %19, align 8
  %94 = getelementptr inbounds %struct.mpt_ext_cfg_page_req32, %struct.mpt_ext_cfg_page_req32* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %97 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.mpt_ext_cfg_page_req32*, %struct.mpt_ext_cfg_page_req32** %19, align 8
  %99 = getelementptr inbounds %struct.mpt_ext_cfg_page_req32, %struct.mpt_ext_cfg_page_req32* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %102 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %168

103:                                              ; preds = %5
  store %struct.mpt_raid_action* %22, %struct.mpt_raid_action** %15, align 8
  %104 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %105 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %108 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %107, i32 0, i32 11
  store i32 %106, i32* %108, align 8
  %109 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %110 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %113 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 4
  %114 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %115 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %118 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 8
  %119 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %120 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %123 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 4
  %124 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %125 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %128 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 8
  %129 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %130 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %129, i32 0, i32 6
  %131 = load i8*, i8** %130, align 8
  %132 = call i8* @PTRIN(i8* %131)
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %135 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %134, i32 0, i32 6
  store i32* %133, i32** %135, align 8
  %136 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %137 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %140 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %142 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %145 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  %146 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %147 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %150 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @bcopy(i32 %148, i32 %151, i32 4)
  %153 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %154 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %157 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %159 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %162 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %164 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %167 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %5, %103, %75, %47
  %169 = load i32, i32* %8, align 4
  switch i32 %169, label %351 [
    i32 136, label %170
    i32 137, label %170
    i32 134, label %178
    i32 135, label %178
    i32 132, label %218
    i32 133, label %218
    i32 130, label %226
    i32 131, label %226
    i32 128, label %266
    i32 129, label %266
    i32 138, label %296
    i32 139, label %296
  ]

170:                                              ; preds = %168, %168
  %171 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %172 = call i32 @MPT_LOCK(%struct.mpt_softc* %171)
  %173 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %174 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %175 = call i32 @mpt_user_read_cfg_header(%struct.mpt_softc* %173, %struct.mpt_cfg_page_req* %174)
  store i32 %175, i32* %23, align 4
  %176 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %177 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %176)
  br label %353

178:                                              ; preds = %168, %168
  %179 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %180 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %181 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @mpt_alloc_buffer(%struct.mpt_softc* %179, %struct.mpt_page_memory* %16, i32 %182)
  store i32 %183, i32* %23, align 4
  %184 = load i32, i32* %23, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  br label %353

187:                                              ; preds = %178
  %188 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %189 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %16, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @copyin(i32* %190, i32* %192, i32 4)
  store i32 %193, i32* %23, align 4
  %194 = load i32, i32* %23, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %187
  br label %353

197:                                              ; preds = %187
  %198 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %199 = call i32 @MPT_LOCK(%struct.mpt_softc* %198)
  %200 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %201 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %202 = call i32 @mpt_user_read_cfg_page(%struct.mpt_softc* %200, %struct.mpt_cfg_page_req* %201, %struct.mpt_page_memory* %16)
  store i32 %202, i32* %23, align 4
  %203 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %204 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %203)
  %205 = load i32, i32* %23, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %197
  br label %353

208:                                              ; preds = %197
  %209 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %16, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %212 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %215 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @copyout(i32* %210, i32* %213, i32 %216)
  store i32 %217, i32* %23, align 4
  br label %353

218:                                              ; preds = %168, %168
  %219 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %220 = call i32 @MPT_LOCK(%struct.mpt_softc* %219)
  %221 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %222 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %223 = call i32 @mpt_user_read_extcfg_header(%struct.mpt_softc* %221, %struct.mpt_ext_cfg_page_req* %222)
  store i32 %223, i32* %23, align 4
  %224 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %225 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %224)
  br label %353

226:                                              ; preds = %168, %168
  %227 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %228 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %229 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @mpt_alloc_buffer(%struct.mpt_softc* %227, %struct.mpt_page_memory* %16, i32 %230)
  store i32 %231, i32* %23, align 4
  %232 = load i32, i32* %23, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  br label %353

235:                                              ; preds = %226
  %236 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %237 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %16, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @copyin(i32* %238, i32* %240, i32 4)
  store i32 %241, i32* %23, align 4
  %242 = load i32, i32* %23, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %235
  br label %353

245:                                              ; preds = %235
  %246 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %247 = call i32 @MPT_LOCK(%struct.mpt_softc* %246)
  %248 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %249 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %250 = call i32 @mpt_user_read_extcfg_page(%struct.mpt_softc* %248, %struct.mpt_ext_cfg_page_req* %249, %struct.mpt_page_memory* %16)
  store i32 %250, i32* %23, align 4
  %251 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %252 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %251)
  %253 = load i32, i32* %23, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %245
  br label %353

256:                                              ; preds = %245
  %257 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %16, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %260 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %263 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @copyout(i32* %258, i32* %261, i32 %264)
  store i32 %265, i32* %23, align 4
  br label %353

266:                                              ; preds = %168, %168
  %267 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %268 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %269 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @mpt_alloc_buffer(%struct.mpt_softc* %267, %struct.mpt_page_memory* %16, i32 %270)
  store i32 %271, i32* %23, align 4
  %272 = load i32, i32* %23, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %266
  br label %353

275:                                              ; preds = %266
  %276 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %277 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %16, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %282 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @copyin(i32* %278, i32* %280, i32 %283)
  store i32 %284, i32* %23, align 4
  %285 = load i32, i32* %23, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %275
  br label %353

288:                                              ; preds = %275
  %289 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %290 = call i32 @MPT_LOCK(%struct.mpt_softc* %289)
  %291 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %292 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %293 = call i32 @mpt_user_write_cfg_page(%struct.mpt_softc* %291, %struct.mpt_cfg_page_req* %292, %struct.mpt_page_memory* %16)
  store i32 %293, i32* %23, align 4
  %294 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %295 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %294)
  br label %353

296:                                              ; preds = %168, %168
  %297 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %298 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %297, i32 0, i32 6
  %299 = load i32*, i32** %298, align 8
  %300 = icmp ne i32* %299, null
  br i1 %300, label %301, label %324

301:                                              ; preds = %296
  %302 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %303 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %304 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @mpt_alloc_buffer(%struct.mpt_softc* %302, %struct.mpt_page_memory* %16, i32 %305)
  store i32 %306, i32* %23, align 4
  %307 = load i32, i32* %23, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %301
  br label %353

310:                                              ; preds = %301
  %311 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %312 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %311, i32 0, i32 6
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %16, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %317 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @copyin(i32* %313, i32* %315, i32 %318)
  store i32 %319, i32* %23, align 4
  %320 = load i32, i32* %23, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %310
  br label %353

323:                                              ; preds = %310
  br label %324

324:                                              ; preds = %323, %296
  %325 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %326 = call i32 @MPT_LOCK(%struct.mpt_softc* %325)
  %327 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %328 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %329 = call i32 @mpt_user_raid_action(%struct.mpt_softc* %327, %struct.mpt_raid_action* %328, %struct.mpt_page_memory* %16)
  store i32 %329, i32* %23, align 4
  %330 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %331 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %330)
  %332 = load i32, i32* %23, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %324
  br label %353

335:                                              ; preds = %324
  %336 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %337 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %336, i32 0, i32 6
  %338 = load i32*, i32** %337, align 8
  %339 = icmp ne i32* %338, null
  br i1 %339, label %340, label %350

340:                                              ; preds = %335
  %341 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %16, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %344 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %343, i32 0, i32 6
  %345 = load i32*, i32** %344, align 8
  %346 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %347 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @copyout(i32* %342, i32* %345, i32 %348)
  store i32 %349, i32* %23, align 4
  br label %350

350:                                              ; preds = %340, %335
  br label %353

351:                                              ; preds = %168
  %352 = load i32, i32* @ENOIOCTL, align 4
  store i32 %352, i32* %23, align 4
  br label %353

353:                                              ; preds = %351, %350, %334, %322, %309, %288, %287, %274, %256, %255, %244, %234, %218, %208, %207, %196, %186, %170
  %354 = call i32 @mpt_free_buffer(%struct.mpt_page_memory* %16)
  %355 = load i32, i32* %23, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %353
  %358 = load i32, i32* %23, align 4
  store i32 %358, i32* %6, align 4
  br label %480

359:                                              ; preds = %353
  %360 = load i32, i32* %8, align 4
  switch i32 %360, label %479 [
    i32 136, label %361
    i32 134, label %361
    i32 128, label %361
    i32 132, label %388
    i32 130, label %388
    i32 138, label %415
  ]

361:                                              ; preds = %359, %359, %359
  %362 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %363 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.mpt_cfg_page_req32*, %struct.mpt_cfg_page_req32** %17, align 8
  %366 = getelementptr inbounds %struct.mpt_cfg_page_req32, %struct.mpt_cfg_page_req32* %365, i32 0, i32 4
  store i32 %364, i32* %366, align 4
  %367 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %368 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.mpt_cfg_page_req32*, %struct.mpt_cfg_page_req32** %17, align 8
  %371 = getelementptr inbounds %struct.mpt_cfg_page_req32, %struct.mpt_cfg_page_req32* %370, i32 0, i32 3
  store i32 %369, i32* %371, align 8
  %372 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %373 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %372, i32 0, i32 2
  %374 = load i32*, i32** %373, align 8
  %375 = call i8* @PTROUT(i32* %374)
  %376 = load %struct.mpt_cfg_page_req32*, %struct.mpt_cfg_page_req32** %17, align 8
  %377 = getelementptr inbounds %struct.mpt_cfg_page_req32, %struct.mpt_cfg_page_req32* %376, i32 0, i32 2
  store i8* %375, i8** %377, align 8
  %378 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %379 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.mpt_cfg_page_req32*, %struct.mpt_cfg_page_req32** %17, align 8
  %382 = getelementptr inbounds %struct.mpt_cfg_page_req32, %struct.mpt_cfg_page_req32* %381, i32 0, i32 0
  store i32 %380, i32* %382, align 8
  %383 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %13, align 8
  %384 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.mpt_cfg_page_req32*, %struct.mpt_cfg_page_req32** %17, align 8
  %387 = getelementptr inbounds %struct.mpt_cfg_page_req32, %struct.mpt_cfg_page_req32* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 4
  br label %479

388:                                              ; preds = %359, %359
  %389 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %390 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.mpt_ext_cfg_page_req32*, %struct.mpt_ext_cfg_page_req32** %19, align 8
  %393 = getelementptr inbounds %struct.mpt_ext_cfg_page_req32, %struct.mpt_ext_cfg_page_req32* %392, i32 0, i32 4
  store i32 %391, i32* %393, align 4
  %394 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %395 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.mpt_ext_cfg_page_req32*, %struct.mpt_ext_cfg_page_req32** %19, align 8
  %398 = getelementptr inbounds %struct.mpt_ext_cfg_page_req32, %struct.mpt_ext_cfg_page_req32* %397, i32 0, i32 3
  store i32 %396, i32* %398, align 8
  %399 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %400 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %399, i32 0, i32 2
  %401 = load i32*, i32** %400, align 8
  %402 = call i8* @PTROUT(i32* %401)
  %403 = load %struct.mpt_ext_cfg_page_req32*, %struct.mpt_ext_cfg_page_req32** %19, align 8
  %404 = getelementptr inbounds %struct.mpt_ext_cfg_page_req32, %struct.mpt_ext_cfg_page_req32* %403, i32 0, i32 2
  store i8* %402, i8** %404, align 8
  %405 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %406 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.mpt_ext_cfg_page_req32*, %struct.mpt_ext_cfg_page_req32** %19, align 8
  %409 = getelementptr inbounds %struct.mpt_ext_cfg_page_req32, %struct.mpt_ext_cfg_page_req32* %408, i32 0, i32 0
  store i32 %407, i32* %409, align 8
  %410 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %14, align 8
  %411 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.mpt_ext_cfg_page_req32*, %struct.mpt_ext_cfg_page_req32** %19, align 8
  %414 = getelementptr inbounds %struct.mpt_ext_cfg_page_req32, %struct.mpt_ext_cfg_page_req32* %413, i32 0, i32 1
  store i32 %412, i32* %414, align 4
  br label %479

415:                                              ; preds = %359
  %416 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %417 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %416, i32 0, i32 11
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %420 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %419, i32 0, i32 11
  store i32 %418, i32* %420, align 8
  %421 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %422 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %421, i32 0, i32 10
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %425 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %424, i32 0, i32 10
  store i32 %423, i32* %425, align 4
  %426 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %427 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %426, i32 0, i32 9
  %428 = load i32, i32* %427, align 8
  %429 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %430 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %429, i32 0, i32 9
  store i32 %428, i32* %430, align 8
  %431 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %432 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %431, i32 0, i32 8
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %435 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %434, i32 0, i32 8
  store i32 %433, i32* %435, align 4
  %436 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %437 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %436, i32 0, i32 7
  %438 = load i32, i32* %437, align 8
  %439 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %440 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %439, i32 0, i32 7
  store i32 %438, i32* %440, align 8
  %441 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %442 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %441, i32 0, i32 6
  %443 = load i32*, i32** %442, align 8
  %444 = call i8* @PTROUT(i32* %443)
  %445 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %446 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %445, i32 0, i32 6
  store i8* %444, i8** %446, align 8
  %447 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %448 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %451 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %450, i32 0, i32 0
  store i32 %449, i32* %451, align 8
  %452 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %453 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %452, i32 0, i32 5
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %456 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %455, i32 0, i32 5
  store i32 %454, i32* %456, align 4
  %457 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %458 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %457, i32 0, i32 4
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %461 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %460, i32 0, i32 4
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @bcopy(i32 %459, i32 %462, i32 4)
  %464 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %465 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %468 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %467, i32 0, i32 3
  store i32 %466, i32* %468, align 4
  %469 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %470 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %473 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %472, i32 0, i32 2
  store i32 %471, i32* %473, align 8
  %474 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %15, align 8
  %475 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.mpt_raid_action32*, %struct.mpt_raid_action32** %21, align 8
  %478 = getelementptr inbounds %struct.mpt_raid_action32, %struct.mpt_raid_action32* %477, i32 0, i32 1
  store i32 %476, i32* %478, align 4
  br label %479

479:                                              ; preds = %359, %415, %388, %361
  store i32 0, i32* %6, align 4
  br label %480

480:                                              ; preds = %479, %357
  %481 = load i32, i32* %6, align 4
  ret i32 %481
}

declare dso_local i8* @PTRIN(i8*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_user_read_cfg_header(%struct.mpt_softc*, %struct.mpt_cfg_page_req*) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_alloc_buffer(%struct.mpt_softc*, %struct.mpt_page_memory*, i32) #1

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @mpt_user_read_cfg_page(%struct.mpt_softc*, %struct.mpt_cfg_page_req*, %struct.mpt_page_memory*) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

declare dso_local i32 @mpt_user_read_extcfg_header(%struct.mpt_softc*, %struct.mpt_ext_cfg_page_req*) #1

declare dso_local i32 @mpt_user_read_extcfg_page(%struct.mpt_softc*, %struct.mpt_ext_cfg_page_req*, %struct.mpt_page_memory*) #1

declare dso_local i32 @mpt_user_write_cfg_page(%struct.mpt_softc*, %struct.mpt_cfg_page_req*, %struct.mpt_page_memory*) #1

declare dso_local i32 @mpt_user_raid_action(%struct.mpt_softc*, %struct.mpt_raid_action*, %struct.mpt_page_memory*) #1

declare dso_local i32 @mpt_free_buffer(%struct.mpt_page_memory*) #1

declare dso_local i8* @PTROUT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
