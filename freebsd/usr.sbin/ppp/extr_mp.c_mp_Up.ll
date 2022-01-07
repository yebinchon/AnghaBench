; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_Up.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_Up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp = type { i32, i64, i64, i64, i64, %struct.TYPE_23__, %struct.TYPE_21__*, %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_28__ }
%struct.TYPE_23__ = type { %struct.TYPE_25__, %struct.TYPE_32__, i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.datalink* }
%struct.TYPE_22__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_33__ = type { i32, i64, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.datalink = type { i32, %struct.TYPE_31__*, %struct.TYPE_22__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.lcp }
%struct.TYPE_29__ = type { i32* }
%struct.lcp = type { i64, i64, i64, i64 }

@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: Inappropriate peer !\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"  Attached to peer %s/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"  New link is peer %s/%s\0A\00", align 1
@MP_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"%s: Invalid MRRU/SHORTSEQ MP parameters !\0A\00", align 1
@MP_ADDED = common dso_local global i32 0, align 4
@mp_UpDown = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"mp: Transfer link on %s\0A\00", align 1
@MP_LINKSENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"mp: Listening on %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"    First link: %s\0A\00", align 1
@MP_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_Up(%struct.mp* %0, %struct.datalink* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp*, align 8
  %5 = alloca %struct.datalink*, align 8
  %6 = alloca %struct.lcp*, align 8
  store %struct.mp* %0, %struct.mp** %4, align 8
  store %struct.datalink* %1, %struct.datalink** %5, align 8
  %7 = load %struct.datalink*, %struct.datalink** %5, align 8
  %8 = getelementptr inbounds %struct.datalink, %struct.datalink* %7, i32 0, i32 1
  %9 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 1
  store %struct.lcp* %11, %struct.lcp** %6, align 8
  %12 = load %struct.mp*, %struct.mp** %4, align 8
  %13 = getelementptr inbounds %struct.mp, %struct.mp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %115

16:                                               ; preds = %2
  %17 = load %struct.datalink*, %struct.datalink** %5, align 8
  %18 = getelementptr inbounds %struct.datalink, %struct.datalink* %17, i32 0, i32 2
  %19 = load %struct.mp*, %struct.mp** %4, align 8
  %20 = getelementptr inbounds %struct.mp, %struct.mp* %19, i32 0, i32 8
  %21 = call i32 @peerid_Equal(%struct.TYPE_22__* %18, %struct.TYPE_22__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @LogPHASE, align 4
  %25 = load %struct.datalink*, %struct.datalink** %5, align 8
  %26 = getelementptr inbounds %struct.datalink, %struct.datalink* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @LogPHASE, align 4
  %30 = load %struct.mp*, %struct.mp** %4, align 8
  %31 = getelementptr inbounds %struct.mp, %struct.mp* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mp*, %struct.mp** %4, align 8
  %35 = getelementptr inbounds %struct.mp, %struct.mp* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mp*, %struct.mp** %4, align 8
  %40 = getelementptr inbounds %struct.mp, %struct.mp* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mp*, %struct.mp** %4, align 8
  %45 = getelementptr inbounds %struct.mp, %struct.mp* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mp_Enddisc(i32 %38, i32 %43, i32 %48)
  %50 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %49)
  %51 = load i32, i32* @LogPHASE, align 4
  %52 = load %struct.datalink*, %struct.datalink** %5, align 8
  %53 = getelementptr inbounds %struct.datalink, %struct.datalink* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.datalink*, %struct.datalink** %5, align 8
  %57 = getelementptr inbounds %struct.datalink, %struct.datalink* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.datalink*, %struct.datalink** %5, align 8
  %62 = getelementptr inbounds %struct.datalink, %struct.datalink* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.datalink*, %struct.datalink** %5, align 8
  %67 = getelementptr inbounds %struct.datalink, %struct.datalink* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mp_Enddisc(i32 %60, i32 %65, i32 %70)
  %72 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %71)
  %73 = load i32, i32* @MP_FAILED, align 4
  store i32 %73, i32* %3, align 4
  br label %268

74:                                               ; preds = %16
  %75 = load %struct.mp*, %struct.mp** %4, align 8
  %76 = getelementptr inbounds %struct.mp, %struct.mp* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.lcp*, %struct.lcp** %6, align 8
  %79 = getelementptr inbounds %struct.lcp, %struct.lcp* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %106, label %82

82:                                               ; preds = %74
  %83 = load %struct.mp*, %struct.mp** %4, align 8
  %84 = getelementptr inbounds %struct.mp, %struct.mp* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.lcp*, %struct.lcp** %6, align 8
  %87 = getelementptr inbounds %struct.lcp, %struct.lcp* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %106, label %90

90:                                               ; preds = %82
  %91 = load %struct.mp*, %struct.mp** %4, align 8
  %92 = getelementptr inbounds %struct.mp, %struct.mp* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.lcp*, %struct.lcp** %6, align 8
  %95 = getelementptr inbounds %struct.lcp, %struct.lcp* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = load %struct.mp*, %struct.mp** %4, align 8
  %100 = getelementptr inbounds %struct.mp, %struct.mp* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.lcp*, %struct.lcp** %6, align 8
  %103 = getelementptr inbounds %struct.lcp, %struct.lcp* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %98, %90, %82, %74
  %107 = load i32, i32* @LogPHASE, align 4
  %108 = load %struct.datalink*, %struct.datalink** %5, align 8
  %109 = getelementptr inbounds %struct.datalink, %struct.datalink* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @MP_FAILED, align 4
  store i32 %112, i32* %3, align 4
  br label %268

113:                                              ; preds = %98
  %114 = load i32, i32* @MP_ADDED, align 4
  store i32 %114, i32* %3, align 4
  br label %268

115:                                              ; preds = %2
  %116 = load %struct.lcp*, %struct.lcp** %6, align 8
  %117 = getelementptr inbounds %struct.lcp, %struct.lcp* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.mp*, %struct.mp** %4, align 8
  %120 = getelementptr inbounds %struct.mp, %struct.mp* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load %struct.lcp*, %struct.lcp** %6, align 8
  %122 = getelementptr inbounds %struct.lcp, %struct.lcp* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.mp*, %struct.mp** %4, align 8
  %125 = getelementptr inbounds %struct.mp, %struct.mp* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load %struct.lcp*, %struct.lcp** %6, align 8
  %127 = getelementptr inbounds %struct.lcp, %struct.lcp* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.mp*, %struct.mp** %4, align 8
  %130 = getelementptr inbounds %struct.mp, %struct.mp* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  %131 = load %struct.lcp*, %struct.lcp** %6, align 8
  %132 = getelementptr inbounds %struct.lcp, %struct.lcp* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.mp*, %struct.mp** %4, align 8
  %135 = getelementptr inbounds %struct.mp, %struct.mp* %134, i32 0, i32 4
  store i64 %133, i64* %135, align 8
  %136 = load %struct.mp*, %struct.mp** %4, align 8
  %137 = getelementptr inbounds %struct.mp, %struct.mp* %136, i32 0, i32 8
  %138 = load %struct.datalink*, %struct.datalink** %5, align 8
  %139 = getelementptr inbounds %struct.datalink, %struct.datalink* %138, i32 0, i32 2
  %140 = bitcast %struct.TYPE_22__* %137 to i8*
  %141 = bitcast %struct.TYPE_22__* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 16, i1 false)
  %142 = load %struct.mp*, %struct.mp** %4, align 8
  %143 = getelementptr inbounds %struct.mp, %struct.mp* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 0
  %146 = call i32 @throughput_destroy(i32* %145)
  %147 = load %struct.mp*, %struct.mp** %4, align 8
  %148 = getelementptr inbounds %struct.mp, %struct.mp* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %149, i32 0, i32 0
  %151 = load %struct.mp*, %struct.mp** %4, align 8
  %152 = getelementptr inbounds %struct.mp, %struct.mp* %151, i32 0, i32 11
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @throughput_init(i32* %150, i32 %155)
  %157 = load %struct.mp*, %struct.mp** %4, align 8
  %158 = getelementptr inbounds %struct.mp, %struct.mp* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 0
  %161 = load i32, i32* @mp_UpDown, align 4
  %162 = load %struct.mp*, %struct.mp** %4, align 8
  %163 = call i32 @throughput_callback(i32* %160, i32 %161, %struct.mp* %162)
  %164 = load %struct.mp*, %struct.mp** %4, align 8
  %165 = getelementptr inbounds %struct.mp, %struct.mp* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @memset(i32 %167, i8 signext 0, i32 4)
  %169 = load %struct.mp*, %struct.mp** %4, align 8
  %170 = getelementptr inbounds %struct.mp, %struct.mp* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @memset(i32 %172, i8 signext 0, i32 4)
  %174 = load %struct.mp*, %struct.mp** %4, align 8
  %175 = getelementptr inbounds %struct.mp, %struct.mp* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @memset(i32 %177, i8 signext 0, i32 4)
  %179 = load %struct.mp*, %struct.mp** %4, align 8
  %180 = getelementptr inbounds %struct.mp, %struct.mp* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i32 0, i32 0
  %183 = load %struct.datalink*, %struct.datalink** %5, align 8
  %184 = getelementptr inbounds %struct.datalink, %struct.datalink* %183, i32 0, i32 1
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 0
  store i32* %182, i32** %188, align 8
  %189 = load %struct.mp*, %struct.mp** %4, align 8
  %190 = getelementptr inbounds %struct.mp, %struct.mp* %189, i32 0, i32 10
  %191 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %190, i32 0, i32 2
  store i64 0, i64* %191, align 8
  %192 = load %struct.mp*, %struct.mp** %4, align 8
  %193 = getelementptr inbounds %struct.mp, %struct.mp* %192, i32 0, i32 10
  %194 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %193, i32 0, i32 1
  store i64 0, i64* %194, align 8
  %195 = load i32, i32* @AF_INET, align 4
  %196 = load %struct.mp*, %struct.mp** %4, align 8
  %197 = getelementptr inbounds %struct.mp, %struct.mp* %196, i32 0, i32 10
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 8
  %199 = load %struct.mp*, %struct.mp** %4, align 8
  %200 = getelementptr inbounds %struct.mp, %struct.mp* %199, i32 0, i32 9
  %201 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %200, i32 0, i32 1
  store i64 0, i64* %201, align 8
  %202 = load %struct.mp*, %struct.mp** %4, align 8
  %203 = getelementptr inbounds %struct.mp, %struct.mp* %202, i32 0, i32 9
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %203, i32 0, i32 0
  store i64 0, i64* %204, align 8
  %205 = load %struct.mp*, %struct.mp** %4, align 8
  %206 = getelementptr inbounds %struct.mp, %struct.mp* %205, i32 0, i32 7
  %207 = load %struct.mp*, %struct.mp** %4, align 8
  %208 = getelementptr inbounds %struct.mp, %struct.mp* %207, i32 0, i32 8
  %209 = call i32 @mpserver_Open(%struct.TYPE_24__* %206, %struct.TYPE_22__* %208)
  switch i32 %209, label %265 [
    i32 130, label %210
    i32 129, label %224
    i32 128, label %226
  ]

210:                                              ; preds = %115
  %211 = load i32, i32* @LogPHASE, align 4
  %212 = load %struct.mp*, %struct.mp** %4, align 8
  %213 = getelementptr inbounds %struct.mp, %struct.mp* %212, i32 0, i32 7
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %211, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %216)
  %218 = load %struct.datalink*, %struct.datalink** %5, align 8
  %219 = load %struct.mp*, %struct.mp** %4, align 8
  %220 = getelementptr inbounds %struct.mp, %struct.mp* %219, i32 0, i32 7
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 0
  store %struct.datalink* %218, %struct.datalink** %222, align 8
  %223 = load i32, i32* @MP_LINKSENT, align 4
  store i32 %223, i32* %3, align 4
  br label %268

224:                                              ; preds = %115
  %225 = load i32, i32* @MP_FAILED, align 4
  store i32 %225, i32* %3, align 4
  br label %268

226:                                              ; preds = %115
  %227 = load i32, i32* @LogPHASE, align 4
  %228 = load %struct.mp*, %struct.mp** %4, align 8
  %229 = getelementptr inbounds %struct.mp, %struct.mp* %228, i32 0, i32 7
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %227, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* @LogPHASE, align 4
  %235 = load %struct.datalink*, %struct.datalink** %5, align 8
  %236 = getelementptr inbounds %struct.datalink, %struct.datalink* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %237)
  %239 = load %struct.mp*, %struct.mp** %4, align 8
  %240 = getelementptr inbounds %struct.mp, %struct.mp* %239, i32 0, i32 6
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 0
  %243 = load %struct.mp*, %struct.mp** %4, align 8
  %244 = getelementptr inbounds %struct.mp, %struct.mp* %243, i32 0, i32 5
  %245 = call i32 @ncp_SetLink(i32* %242, %struct.TYPE_23__* %244)
  %246 = load %struct.mp*, %struct.mp** %4, align 8
  %247 = getelementptr inbounds %struct.mp, %struct.mp* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 0
  %249 = call i32 @ccp_SetOpenMode(%struct.TYPE_25__* %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %262

251:                                              ; preds = %226
  %252 = load %struct.mp*, %struct.mp** %4, align 8
  %253 = getelementptr inbounds %struct.mp, %struct.mp* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 0
  %256 = call i32 @fsm_Up(i32* %255)
  %257 = load %struct.mp*, %struct.mp** %4, align 8
  %258 = getelementptr inbounds %struct.mp, %struct.mp* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 0
  %261 = call i32 @fsm_Open(i32* %260)
  br label %262

262:                                              ; preds = %251, %226
  %263 = load %struct.mp*, %struct.mp** %4, align 8
  %264 = getelementptr inbounds %struct.mp, %struct.mp* %263, i32 0, i32 0
  store i32 1, i32* %264, align 8
  br label %265

265:                                              ; preds = %115, %262
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* @MP_UP, align 4
  store i32 %267, i32* %3, align 4
  br label %268

268:                                              ; preds = %266, %224, %210, %113, %106, %23
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local i32 @peerid_Equal(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i32 @mp_Enddisc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @throughput_destroy(i32*) #1

declare dso_local i32 @throughput_init(i32*, i32) #1

declare dso_local i32 @throughput_callback(i32*, i32, %struct.mp*) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @mpserver_Open(%struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ncp_SetLink(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @ccp_SetOpenMode(%struct.TYPE_25__*) #1

declare dso_local i32 @fsm_Up(i32*) #1

declare dso_local i32 @fsm_Open(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
