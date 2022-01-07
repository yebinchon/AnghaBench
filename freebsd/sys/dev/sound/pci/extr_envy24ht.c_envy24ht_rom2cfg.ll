; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_rom2cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_rom2cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.cfg_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sc_info = type { i32 }

@ENVY24HT_E2PROM_SIZE = common dso_local global i32 0, align 4
@ENVY24HT_E2PROM_GPIOSTATE = common dso_local global i32 0, align 4
@M_ENVY24HT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENVY24HT_E2PROM_SUBVENDOR = common dso_local global i32 0, align 4
@ENVY24HT_E2PROM_SUBDEVICE = common dso_local global i32 0, align 4
@cfg_table = common dso_local global %struct.TYPE_2__* null, align 8
@ENVY24HT_E2PROM_SCFG = common dso_local global i32 0, align 4
@ENVY24HT_E2PROM_ACL = common dso_local global i32 0, align 4
@ENVY24HT_E2PROM_I2S = common dso_local global i32 0, align 4
@ENVY24HT_E2PROM_SPDIF = common dso_local global i32 0, align 4
@ENVY24HT_E2PROM_GPIOMASK = common dso_local global i32 0, align 4
@ENVY24HT_E2PROM_GPIODIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfg_info* (%struct.sc_info*)* @envy24ht_rom2cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfg_info* @envy24ht_rom2cfg(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.cfg_info*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca %struct.cfg_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %7 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %8 = load i32, i32* @ENVY24HT_E2PROM_SIZE, align 4
  %9 = call i32 @envy24ht_rdrom(%struct.sc_info* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ENVY24HT_E2PROM_GPIOSTATE, align 4
  %12 = add nsw i32 %11, 3
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 120
  br i1 %16, label %17, label %142

17:                                               ; preds = %14, %1
  %18 = load i32, i32* @M_ENVY24HT, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = call %struct.cfg_info* @malloc(i32 68, i32 %18, i32 %19)
  store %struct.cfg_info* %20, %struct.cfg_info** %4, align 8
  %21 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %22 = icmp eq %struct.cfg_info* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.cfg_info* null, %struct.cfg_info** %2, align 8
  br label %314

24:                                               ; preds = %17
  %25 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %26 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %28 = load i32, i32* @ENVY24HT_E2PROM_SUBVENDOR, align 4
  %29 = call i32 @envy24ht_rdrom(%struct.sc_info* %27, i32 %28)
  %30 = shl i32 %29, 8
  %31 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %32 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %34 = load i32, i32* @ENVY24HT_E2PROM_SUBVENDOR, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @envy24ht_rdrom(%struct.sc_info* %33, i32 %35)
  %37 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %38 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %42 = load i32, i32* @ENVY24HT_E2PROM_SUBDEVICE, align 4
  %43 = call i32 @envy24ht_rdrom(%struct.sc_info* %41, i32 %42)
  %44 = shl i32 %43, 8
  %45 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %46 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %48 = load i32, i32* @ENVY24HT_E2PROM_SUBDEVICE, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @envy24ht_rdrom(%struct.sc_info* %47, i32 %49)
  %51 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %52 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %56 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %55, i32 0, i32 3
  store i32 11, i32* %56, align 4
  %57 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %58 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %57, i32 0, i32 4
  store i32 128, i32* %58, align 4
  %59 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %60 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %59, i32 0, i32 5
  store i32 252, i32* %60, align 4
  %61 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %62 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %61, i32 0, i32 6
  store i32 195, i32* %62, align 4
  %63 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %64 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %63, i32 0, i32 7
  store i32 2224127, i32* %64, align 4
  %65 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %66 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %65, i32 0, i32 8
  store i32 8388607, i32* %66, align 4
  %67 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %68 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %67, i32 0, i32 9
  store i32 6164480, i32* %68, align 4
  %69 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %70 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %69, i32 0, i32 10
  store i32 262144, i32* %70, align 4
  %71 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %72 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %71, i32 0, i32 11
  store i32 524288, i32* %72, align 4
  %73 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %74 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %73, i32 0, i32 12
  store i32 4096, i32* %74, align 4
  %75 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %76 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %75, i32 0, i32 13
  store i32 0, i32* %76, align 4
  %77 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %78 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %77, i32 0, i32 14
  store i32 2, i32* %78, align 4
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %121, %24
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %79
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %87, %79
  %96 = phi i1 [ true, %79 ], [ %94, %87 ]
  br i1 %96, label %97, label %124

97:                                               ; preds = %95
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %105 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %97
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %116 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  br label %124

120:                                              ; preds = %108, %97
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %79

124:                                              ; preds = %119, %95
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %132 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %131, i32 0, i32 16
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %140 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %139, i32 0, i32 15
  store i32 %138, i32* %140, align 4
  %141 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  store %struct.cfg_info* %141, %struct.cfg_info** %2, align 8
  br label %314

142:                                              ; preds = %14
  %143 = load i32, i32* @M_ENVY24HT, align 4
  %144 = load i32, i32* @M_NOWAIT, align 4
  %145 = call %struct.cfg_info* @malloc(i32 68, i32 %143, i32 %144)
  store %struct.cfg_info* %145, %struct.cfg_info** %4, align 8
  %146 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %147 = icmp eq %struct.cfg_info* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store %struct.cfg_info* null, %struct.cfg_info** %2, align 8
  br label %314

149:                                              ; preds = %142
  %150 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %151 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %150, i32 0, i32 0
  store i32 1, i32* %151, align 4
  %152 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %153 = load i32, i32* @ENVY24HT_E2PROM_SUBVENDOR, align 4
  %154 = call i32 @envy24ht_rdrom(%struct.sc_info* %152, i32 %153)
  %155 = shl i32 %154, 8
  %156 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %157 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %159 = load i32, i32* @ENVY24HT_E2PROM_SUBVENDOR, align 4
  %160 = add nsw i32 %159, 1
  %161 = call i32 @envy24ht_rdrom(%struct.sc_info* %158, i32 %160)
  %162 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %163 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %167 = load i32, i32* @ENVY24HT_E2PROM_SUBDEVICE, align 4
  %168 = call i32 @envy24ht_rdrom(%struct.sc_info* %166, i32 %167)
  %169 = shl i32 %168, 8
  %170 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %171 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %173 = load i32, i32* @ENVY24HT_E2PROM_SUBDEVICE, align 4
  %174 = add nsw i32 %173, 1
  %175 = call i32 @envy24ht_rdrom(%struct.sc_info* %172, i32 %174)
  %176 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %177 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %181 = load i32, i32* @ENVY24HT_E2PROM_SCFG, align 4
  %182 = call i32 @envy24ht_rdrom(%struct.sc_info* %180, i32 %181)
  %183 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %184 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  %185 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %186 = load i32, i32* @ENVY24HT_E2PROM_ACL, align 4
  %187 = call i32 @envy24ht_rdrom(%struct.sc_info* %185, i32 %186)
  %188 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %189 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 4
  %190 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %191 = load i32, i32* @ENVY24HT_E2PROM_I2S, align 4
  %192 = call i32 @envy24ht_rdrom(%struct.sc_info* %190, i32 %191)
  %193 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %194 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 4
  %195 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %196 = load i32, i32* @ENVY24HT_E2PROM_SPDIF, align 4
  %197 = call i32 @envy24ht_rdrom(%struct.sc_info* %195, i32 %196)
  %198 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %199 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 4
  %200 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %201 = load i32, i32* @ENVY24HT_E2PROM_GPIOMASK, align 4
  %202 = call i32 @envy24ht_rdrom(%struct.sc_info* %200, i32 %201)
  %203 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %204 = load i32, i32* @ENVY24HT_E2PROM_GPIOMASK, align 4
  %205 = add nsw i32 %204, 1
  %206 = call i32 @envy24ht_rdrom(%struct.sc_info* %203, i32 %205)
  %207 = shl i32 %206, 8
  %208 = or i32 %202, %207
  %209 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %210 = load i32, i32* @ENVY24HT_E2PROM_GPIOMASK, align 4
  %211 = add nsw i32 %210, 2
  %212 = call i32 @envy24ht_rdrom(%struct.sc_info* %209, i32 %211)
  %213 = shl i32 %212, 16
  %214 = or i32 %208, %213
  %215 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %216 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 4
  %217 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %218 = load i32, i32* @ENVY24HT_E2PROM_GPIOSTATE, align 4
  %219 = call i32 @envy24ht_rdrom(%struct.sc_info* %217, i32 %218)
  %220 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %221 = load i32, i32* @ENVY24HT_E2PROM_GPIOSTATE, align 4
  %222 = add nsw i32 %221, 1
  %223 = call i32 @envy24ht_rdrom(%struct.sc_info* %220, i32 %222)
  %224 = shl i32 %223, 8
  %225 = or i32 %219, %224
  %226 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %227 = load i32, i32* @ENVY24HT_E2PROM_GPIOSTATE, align 4
  %228 = add nsw i32 %227, 2
  %229 = call i32 @envy24ht_rdrom(%struct.sc_info* %226, i32 %228)
  %230 = shl i32 %229, 16
  %231 = or i32 %225, %230
  %232 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %233 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %232, i32 0, i32 8
  store i32 %231, i32* %233, align 4
  %234 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %235 = load i32, i32* @ENVY24HT_E2PROM_GPIODIR, align 4
  %236 = call i32 @envy24ht_rdrom(%struct.sc_info* %234, i32 %235)
  %237 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %238 = load i32, i32* @ENVY24HT_E2PROM_GPIODIR, align 4
  %239 = add nsw i32 %238, 1
  %240 = call i32 @envy24ht_rdrom(%struct.sc_info* %237, i32 %239)
  %241 = shl i32 %240, 8
  %242 = or i32 %236, %241
  %243 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %244 = load i32, i32* @ENVY24HT_E2PROM_GPIODIR, align 4
  %245 = add nsw i32 %244, 2
  %246 = call i32 @envy24ht_rdrom(%struct.sc_info* %243, i32 %245)
  %247 = shl i32 %246, 16
  %248 = or i32 %242, %247
  %249 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %250 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %249, i32 0, i32 9
  store i32 %248, i32* %250, align 4
  store i32 0, i32* %6, align 4
  br label %251

251:                                              ; preds = %293, %149
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %251
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br label %267

267:                                              ; preds = %259, %251
  %268 = phi i1 [ true, %251 ], [ %266, %259 ]
  br i1 %268, label %269, label %296

269:                                              ; preds = %267
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %277 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %275, %278
  br i1 %279, label %280, label %292

280:                                              ; preds = %269
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %282 = load i32, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %288 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = icmp eq i32 %286, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %280
  br label %296

292:                                              ; preds = %280, %269
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %6, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %6, align 4
  br label %251

296:                                              ; preds = %291, %267
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %304 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %303, i32 0, i32 16
  store i32 %302, i32* %304, align 4
  %305 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %306 = load i32, i32* %6, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %312 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %311, i32 0, i32 15
  store i32 %310, i32* %312, align 4
  %313 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  store %struct.cfg_info* %313, %struct.cfg_info** %2, align 8
  br label %314

314:                                              ; preds = %296, %148, %124, %23
  %315 = load %struct.cfg_info*, %struct.cfg_info** %2, align 8
  ret %struct.cfg_info* %315
}

declare dso_local i32 @envy24ht_rdrom(%struct.sc_info*, i32) #1

declare dso_local %struct.cfg_info* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
