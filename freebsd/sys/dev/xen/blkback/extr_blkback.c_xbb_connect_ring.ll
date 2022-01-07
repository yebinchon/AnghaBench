; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_connect_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_connect_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i64, i64, i64, i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.gnttab_map_grant_ref = type { i64, i64, i32, i32, i32, i32, i32 }

@XBB_MAX_RING_PAGES = common dso_local global i32 0, align 4
@XBBF_RING_CONNECTED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GNTMAP_host_map = common dso_local global i32 0, align 4
@GNTTABOP_map_grant_ref = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"blkback: Ring page grant table op failed (%d)\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Ring shared page mapping failed. Status %d.\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unexpected blkif protocol ABI.\00", align 1
@xbb_filter = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"binding event channel\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"rings connected!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xbb_softc*)* @xbb_connect_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbb_connect_ring(%struct.xbb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xbb_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gnttab_map_grant_ref*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.xbb_softc* %0, %struct.xbb_softc** %3, align 8
  %13 = load i32, i32* @XBB_MAX_RING_PAGES, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca %struct.gnttab_map_grant_ref, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @XBBF_RING_CONNECTED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %255

24:                                               ; preds = %1
  %25 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = mul i64 %34, %35
  %37 = sub i64 %30, %36
  %38 = add i64 %27, %37
  %39 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %40 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %43 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %46 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %49 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = mul i64 %51, %52
  %54 = sub i64 %47, %53
  %55 = add i64 %44, %54
  %56 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %57 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  store i64 0, i64* %7, align 8
  store %struct.gnttab_map_grant_ref* %16, %struct.gnttab_map_grant_ref** %6, align 8
  br label %59

59:                                               ; preds = %94, %24
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %62 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %60, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %59
  %67 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %68 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @PAGE_SIZE, align 8
  %73 = mul i64 %71, %72
  %74 = add i64 %70, %73
  %75 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %76 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @GNTMAP_host_map, align 4
  %78 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %79 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %81 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %88 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %90 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %93 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %66
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  %97 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %98 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %97, i32 1
  store %struct.gnttab_map_grant_ref* %98, %struct.gnttab_map_grant_ref** %6, align 8
  br label %59

99:                                               ; preds = %59
  %100 = load i32, i32* @GNTTABOP_map_grant_ref, align 4
  %101 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %102 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @HYPERVISOR_grant_table_op(i32 %100, %struct.gnttab_map_grant_ref* %16, i64 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %108, %99
  store i64 0, i64* %7, align 8
  store %struct.gnttab_map_grant_ref* %16, %struct.gnttab_map_grant_ref** %6, align 8
  br label %112

112:                                              ; preds = %156, %111
  %113 = load i64, i64* %7, align 8
  %114 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %115 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %113, %117
  br i1 %118, label %119, label %161

119:                                              ; preds = %112
  %120 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %121 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %119
  %125 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %126 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %129 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @EACCES, align 4
  %132 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %133 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 (i32, i32, i8*, ...) @xenbus_dev_fatal(i32 %130, i32 %131, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  %136 = load i32, i32* @EACCES, align 4
  store i32 %136, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %255

137:                                              ; preds = %119
  %138 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %139 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %142 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %141, i32 0, i32 7
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 5
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32 %140, i32* %146, align 4
  %147 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %148 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %151 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %150, i32 0, i32 7
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* %7, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32 %149, i32* %155, align 4
  br label %156

156:                                              ; preds = %137
  %157 = load i64, i64* %7, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %7, align 8
  %159 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %160 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %159, i32 1
  store %struct.gnttab_map_grant_ref* %160, %struct.gnttab_map_grant_ref** %6, align 8
  br label %112

161:                                              ; preds = %112
  %162 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %163 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  switch i32 %164, label %216 [
    i32 130, label %165
    i32 129, label %182
    i32 128, label %199
  ]

165:                                              ; preds = %161
  %166 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %167 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  store i32* %170, i32** %10, align 8
  %171 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %172 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i32*, i32** %10, align 8
  %175 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %176 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @PAGE_SIZE, align 8
  %180 = mul i64 %178, %179
  %181 = call i32 @BACK_RING_INIT(i32* %173, i32* %174, i64 %180)
  br label %218

182:                                              ; preds = %161
  %183 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %184 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i32*
  store i32* %187, i32** %11, align 8
  %188 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %189 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %188, i32 0, i32 9
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  %191 = load i32*, i32** %11, align 8
  %192 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %193 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @PAGE_SIZE, align 8
  %197 = mul i64 %195, %196
  %198 = call i32 @BACK_RING_INIT(i32* %190, i32* %191, i64 %197)
  br label %218

199:                                              ; preds = %161
  %200 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %201 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %200, i32 0, i32 7
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i32*
  store i32* %204, i32** %12, align 8
  %205 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %206 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %205, i32 0, i32 9
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i32*, i32** %12, align 8
  %209 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %210 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %209, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @PAGE_SIZE, align 8
  %214 = mul i64 %212, %213
  %215 = call i32 @BACK_RING_INIT(i32* %207, i32* %208, i64 %214)
  br label %218

216:                                              ; preds = %161
  %217 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %199, %182, %165
  %219 = load i32, i32* @XBBF_RING_CONNECTED, align 4
  %220 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %221 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 8
  %224 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %225 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %228 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %231 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %230, i32 0, i32 7
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @xbb_filter, align 4
  %235 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %236 = load i32, i32* @INTR_TYPE_BIO, align 4
  %237 = load i32, i32* @INTR_MPSAFE, align 4
  %238 = or i32 %236, %237
  %239 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %240 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %239, i32 0, i32 6
  %241 = call i32 @xen_intr_bind_remote_port(i32 %226, i32 %229, i32 %233, i32 %234, i32* null, %struct.xbb_softc* %235, i32 %238, i32* %240)
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* %8, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %218
  %245 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %246 = call i32 @xbb_disconnect(%struct.xbb_softc* %245)
  %247 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %248 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %8, align 4
  %251 = call i32 (i32, i32, i8*, ...) @xenbus_dev_fatal(i32 %249, i32 %250, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %252 = load i32, i32* %8, align 4
  store i32 %252, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %255

253:                                              ; preds = %218
  %254 = call i32 @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %255

255:                                              ; preds = %253, %244, %124, %23
  %256 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %256)
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_map_grant_ref*, i64) #2

declare dso_local i32 @panic(i8*, ...) #2

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*, ...) #2

declare dso_local i32 @BACK_RING_INIT(i32*, i32*, i64) #2

declare dso_local i32 @xen_intr_bind_remote_port(i32, i32, i32, i32, i32*, %struct.xbb_softc*, i32, i32*) #2

declare dso_local i32 @xbb_disconnect(%struct.xbb_softc*) #2

declare dso_local i32 @DPRINTF(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
