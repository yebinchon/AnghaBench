; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl8366rb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl8366rb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366rb_softc = type { i32, i64, i32, i32, %struct.TYPE_6__**, i32*, i32*, %struct.TYPE_5__, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.rtl8366rb_softc* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rtl8366rb\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"rtl8366rbcallout\00", align 1
@RTL8366_CVCR = common dso_local global i32 0, align 4
@RTL_WAITOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"rev. %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"phy4cpu\00", align 1
@RTL8366_NUM_PHYS = common dso_local global i32 0, align 4
@RTL8366_NUM_VLANS = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i32 0, align 4
@RTL8366RB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"Realtek RTL8366RB\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Realtek RTL8366SR\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"couldn't allocate ifnet structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"%sport\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@rtl8366rb_ifmedia_upd = common dso_local global i32 0, align 4
@rtl8366rb_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"attaching PHY %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtl8366rb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl8366rb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @IFNAMSIZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.rtl8366rb_softc* @device_get_softc(i32 %15)
  store %struct.rtl8366rb_softc* %16, %struct.rtl8366rb_softc** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %19 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %18, i32 0, i32 11
  store i32 %17, i32* %19, align 4
  %20 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %21 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %20, i32 0, i32 10
  %22 = load i32, i32* @MTX_DEF, align 4
  %23 = call i32 @mtx_init(i32* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %22)
  %24 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %25 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %24, i32 0, i32 9
  store i64 0, i64* %25, align 8
  %26 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %27 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %26, i32 0, i32 2
  %28 = load i32, i32* @MTX_DEF, align 4
  %29 = call i32 @mtx_init(i32* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @rtl8366rb_init(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @RTL8366_CVCR, align 4
  %34 = load i32, i32* @RTL_WAITOK, align 4
  %35 = call i32 @smi_read(i32 %32, i32 %33, i32* %5, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 15
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %41 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %40, i32 0, i32 8
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_get_name(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_get_unit(i32 %44)
  %46 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %47 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %46, i32 0, i32 8
  %48 = call i32 @resource_int_value(i32 %43, i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64* %47)
  %49 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %50 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %1
  %54 = load i32, i32* @RTL8366_NUM_PHYS, align 4
  %55 = sub nsw i32 %54, 1
  br label %58

56:                                               ; preds = %1
  %57 = load i32, i32* @RTL8366_NUM_PHYS, align 4
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i32 [ %55, %53 ], [ %57, %56 ]
  %60 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %61 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %63 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %67 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @RTL8366_NUM_VLANS, align 4
  %70 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %71 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @ETHERSWITCH_VLAN_DOT1Q, align 4
  %74 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %75 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  %77 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %78 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @RTL8366RB, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %58
  %83 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %84 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sprintf(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %94

88:                                               ; preds = %58
  %89 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %90 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @sprintf(i32 %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %88, %82
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %218, %94
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %98 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %221

101:                                              ; preds = %95
  %102 = load i32, i32* @IFT_ETHER, align 4
  %103 = call %struct.TYPE_6__* @if_alloc(i32 %102)
  %104 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %105 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %104, i32 0, i32 4
  %106 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %106, i64 %108
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %109, align 8
  %110 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %111 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %110, i32 0, i32 4
  %112 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %112, i64 %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = icmp eq %struct.TYPE_6__* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %101
  %119 = load i32, i32* %3, align 4
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %121 = load i32, i32* @ENOMEM, align 4
  store i32 %121, i32* %8, align 4
  br label %221

122:                                              ; preds = %101
  %123 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %124 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %125 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %124, i32 0, i32 4
  %126 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %126, i64 %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store %struct.rtl8366rb_softc* %123, %struct.rtl8366rb_softc** %131, align 8
  %132 = load i32, i32* @IFF_UP, align 4
  %133 = load i32, i32* @IFF_BROADCAST, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @IFF_SIMPLEX, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %140 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %139, i32 0, i32 4
  %141 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %141, i64 %143
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %138
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @IFNAMSIZ, align 4
  %150 = load i32, i32* %3, align 4
  %151 = call i8* @device_get_nameunit(i32 %150)
  %152 = call i32 @snprintf(i8* %14, i32 %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %151)
  %153 = call i64 @strlen(i8* %14)
  %154 = add nsw i64 %153, 1
  %155 = load i32, i32* @M_DEVBUF, align 4
  %156 = load i32, i32* @M_WAITOK, align 4
  %157 = call i32 @malloc(i64 %154, i32 %155, i32 %156)
  %158 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %159 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %158, i32 0, i32 6
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %157, i32* %163, align 4
  %164 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %165 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %164, i32 0, i32 6
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @strlen(i8* %14)
  %172 = add nsw i64 %171, 1
  %173 = call i32 @bcopy(i8* %14, i32 %170, i64 %172)
  %174 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %175 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %174, i32 0, i32 4
  %176 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %176, i64 %178
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %182 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %181, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @if_initname(%struct.TYPE_6__* %180, i32 %187, i32 %188)
  %190 = load i32, i32* %3, align 4
  %191 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %192 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %191, i32 0, i32 5
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %198 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %197, i32 0, i32 4
  %199 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %199, i64 %201
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = load i32, i32* @rtl8366rb_ifmedia_upd, align 4
  %205 = load i32, i32* @rtl8366rb_ifmedia_sts, align 4
  %206 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* @MII_OFFSET_ANY, align 4
  %209 = call i32 @mii_attach(i32 %190, i32* %196, %struct.TYPE_6__* %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 0)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %122
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* %9, align 4
  %215 = call i32 (i32, i8*, ...) @device_printf(i32 %213, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* %8, align 4
  store i32 %216, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %241

217:                                              ; preds = %122
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %9, align 4
  br label %95

221:                                              ; preds = %118, %95
  %222 = load i32, i32* %3, align 4
  %223 = call i32 @bus_generic_probe(i32 %222)
  %224 = load i32, i32* %3, align 4
  %225 = call i32 @bus_enumerate_hinted_children(i32 %224)
  %226 = load i32, i32* %3, align 4
  %227 = call i32 @bus_generic_attach(i32 %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %221
  %231 = load i32, i32* %8, align 4
  store i32 %231, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %241

232:                                              ; preds = %221
  %233 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %234 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %233, i32 0, i32 3
  %235 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %236 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %235, i32 0, i32 2
  %237 = call i32 @callout_init_mtx(i32* %234, i32* %236, i32 0)
  %238 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %239 = call i32 @rtl8366rb_tick(%struct.rtl8366rb_softc* %238)
  %240 = load i32, i32* %8, align 4
  store i32 %240, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %241

241:                                              ; preds = %232, %230, %212
  %242 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.rtl8366rb_softc* @device_get_softc(i32) #2

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #2

declare dso_local i32 @rtl8366rb_init(i32) #2

declare dso_local i32 @smi_read(i32, i32, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @resource_int_value(i32, i32, i8*, i64*) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @sprintf(i32, i8*) #2

declare dso_local %struct.TYPE_6__* @if_alloc(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @device_get_nameunit(i32) #2

declare dso_local i32 @malloc(i64, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @bcopy(i8*, i32, i64) #2

declare dso_local i32 @if_initname(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @bus_generic_probe(i32) #2

declare dso_local i32 @bus_enumerate_hinted_children(i32) #2

declare dso_local i32 @bus_generic_attach(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @rtl8366rb_tick(%struct.rtl8366rb_softc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
