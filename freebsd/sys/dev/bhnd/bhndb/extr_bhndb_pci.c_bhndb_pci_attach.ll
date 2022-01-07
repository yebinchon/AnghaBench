; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_softc = type { i64, i32, i32, i32*, i32*, i64, i32 }
%struct.bhnd_chipid = type { i64 }
%struct.bhnd_core_info = type { i32 }
%struct.bhndb_pci_probe = type { %struct.bhnd_core_info, i32*, %struct.bhnd_chipid }

@BHND_CHIPTYPE_SIBA = common dso_local global i64 0, align 8
@bhndb_pci_compat_setregwin = common dso_local global i32* null, align 8
@bhndb_pci_fast_setregwin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Using MSI interrupts on %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Using INTx interrupts on %s\0A\00", align 1
@RM_MAX_END = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to allocate interrupt resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bhndb_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhndb_pci_softc*, align 8
  %5 = alloca %struct.bhnd_chipid, align 8
  %6 = alloca %struct.bhnd_core_info*, align 8
  %7 = alloca %struct.bhnd_core_info, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bhndb_pci_probe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.bhndb_pci_softc* @device_get_softc(i32 %13)
  store %struct.bhndb_pci_softc* %14, %struct.bhndb_pci_softc** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %17 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  %20 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @bhndb_expected_pci_devclass(i32 %22)
  %24 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %25 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %27 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %29 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %28, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %31 = call i32 @BHNDB_PCI_LOCK_INIT(%struct.bhndb_pci_softc* %30)
  store %struct.bhndb_pci_probe* null, %struct.bhndb_pci_probe** %9, align 8
  store %struct.bhnd_core_info* null, %struct.bhnd_core_info** %6, align 8
  %32 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %33 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pci_enable_busmaster(i32 %34)
  %36 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %37 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bhndb_enable_pci_clocks(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  br label %164

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %45 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bhndb_pci_probe_alloc(%struct.bhndb_pci_probe** %9, i32 %43, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %164

51:                                               ; preds = %42
  %52 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %9, align 8
  %53 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %52, i32 0, i32 2
  %54 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %9, align 8
  %55 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %54, i32 0, i32 0
  %56 = call i64 @bhndb_pci_get_core_quirks(%struct.bhnd_chipid* %53, %struct.bhnd_core_info* %55)
  %57 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %58 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %57, i32 0, i32 5
  store i64 %56, i64* %58, align 8
  %59 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %9, align 8
  %60 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BHND_CHIPTYPE_SIBA, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %51
  %66 = load i32*, i32** @bhndb_pci_compat_setregwin, align 8
  %67 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %68 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  br label %73

69:                                               ; preds = %51
  %70 = load i32*, i32** @bhndb_pci_fast_setregwin, align 8
  %71 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %72 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %71, i32 0, i32 4
  store i32* %70, i32** %72, align 8
  br label %73

73:                                               ; preds = %69, %65
  %74 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %75 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %9, align 8
  %76 = call i32 @bhndb_pci_srsh_pi_war(%struct.bhndb_pci_softc* %74, %struct.bhndb_pci_probe* %75)
  store i32 %76, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %164

79:                                               ; preds = %73
  %80 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %81 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %82 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %81, i32 0, i32 0
  %83 = call i64 @bhndb_pci_alloc_msi(%struct.bhndb_pci_softc* %80, i64* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  store i32 1, i32* %11, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %88 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @device_get_nameunit(i32 %89)
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %101

92:                                               ; preds = %79
  %93 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %94 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  store i32 0, i32* %11, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %97 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @device_get_nameunit(i32 %98)
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %92, %85
  %102 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %103 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @RM_MAX_END, align 4
  %107 = load i32, i32* @RF_SHAREABLE, align 4
  %108 = load i32, i32* @RF_ACTIVE, align 4
  %109 = or i32 %107, %108
  %110 = call i32* @bhndb_alloc_intr_isrc(i32 %104, i32 %105, i32 0, i32 %106, i32 1, i32 %109)
  %111 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %112 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %111, i32 0, i32 3
  store i32* %110, i32** %112, align 8
  %113 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %114 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %101
  %118 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %119 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @ENXIO, align 4
  store i32 %122, i32* %12, align 4
  br label %164

123:                                              ; preds = %101
  %124 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %9, align 8
  %125 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %124, i32 0, i32 2
  %126 = bitcast %struct.bhnd_chipid* %5 to i8*
  %127 = bitcast %struct.bhnd_chipid* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 %127, i64 8, i1 false)
  %128 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %9, align 8
  %129 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %8, align 8
  %131 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %9, align 8
  %132 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %131, i32 0, i32 0
  %133 = bitcast %struct.bhnd_core_info* %7 to i8*
  %134 = bitcast %struct.bhnd_core_info* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %133, i8* align 8 %134, i64 4, i1 false)
  %135 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %9, align 8
  %136 = call i32 @bhndb_pci_probe_copy_core_table(%struct.bhndb_pci_probe* %135, %struct.bhnd_core_info** %6, i32* %10)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %123
  store %struct.bhnd_core_info* null, %struct.bhnd_core_info** %6, align 8
  br label %164

140:                                              ; preds = %123
  %141 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %9, align 8
  %142 = call i32 @bhndb_pci_probe_free(%struct.bhndb_pci_probe* %141)
  store %struct.bhndb_pci_probe* null, %struct.bhndb_pci_probe** %9, align 8
  %143 = load i32, i32* %3, align 4
  %144 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %6, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @bhndb_attach(i32 %143, %struct.bhnd_chipid* %5, %struct.bhnd_core_info* %144, i32 %145, %struct.bhnd_core_info* %7, i32* %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %164

151:                                              ; preds = %140
  %152 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %153 = call i32 @bhndb_pci_add_children(%struct.bhndb_pci_softc* %152)
  store i32 %153, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %164

156:                                              ; preds = %151
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @bus_generic_attach(i32 %157)
  store i32 %158, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %164

161:                                              ; preds = %156
  %162 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %6, align 8
  %163 = call i32 @bhndb_pci_probe_free_core_table(%struct.bhnd_core_info* %162)
  store i32 0, i32* %2, align 4
  br label %210

164:                                              ; preds = %160, %155, %150, %139, %117, %78, %50, %41
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @device_delete_children(i32 %165)
  %167 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %168 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %164
  %172 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %173 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @bhndb_free_intr_isrc(i32* %174)
  br label %176

176:                                              ; preds = %171, %164
  %177 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %178 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %183 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @pci_release_msi(i32 %184)
  br label %186

186:                                              ; preds = %181, %176
  %187 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %6, align 8
  %188 = icmp ne %struct.bhnd_core_info* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %6, align 8
  %191 = call i32 @bhndb_pci_probe_free_core_table(%struct.bhnd_core_info* %190)
  br label %192

192:                                              ; preds = %189, %186
  %193 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %9, align 8
  %194 = icmp ne %struct.bhndb_pci_probe* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %9, align 8
  %197 = call i32 @bhndb_pci_probe_free(%struct.bhndb_pci_probe* %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %200 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @bhndb_disable_pci_clocks(i32 %201)
  %203 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %204 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @pci_disable_busmaster(i32 %205)
  %207 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %208 = call i32 @BHNDB_PCI_LOCK_DESTROY(%struct.bhndb_pci_softc* %207)
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %198, %161
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.bhndb_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @bhndb_expected_pci_devclass(i32) #1

declare dso_local i32 @BHNDB_PCI_LOCK_INIT(%struct.bhndb_pci_softc*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @bhndb_enable_pci_clocks(i32) #1

declare dso_local i32 @bhndb_pci_probe_alloc(%struct.bhndb_pci_probe**, i32, i32) #1

declare dso_local i64 @bhndb_pci_get_core_quirks(%struct.bhnd_chipid*, %struct.bhnd_core_info*) #1

declare dso_local i32 @bhndb_pci_srsh_pi_war(%struct.bhndb_pci_softc*, %struct.bhndb_pci_probe*) #1

declare dso_local i64 @bhndb_pci_alloc_msi(%struct.bhndb_pci_softc*, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @bhndb_alloc_intr_isrc(i32, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bhndb_pci_probe_copy_core_table(%struct.bhndb_pci_probe*, %struct.bhnd_core_info**, i32*) #1

declare dso_local i32 @bhndb_pci_probe_free(%struct.bhndb_pci_probe*) #1

declare dso_local i32 @bhndb_attach(i32, %struct.bhnd_chipid*, %struct.bhnd_core_info*, i32, %struct.bhnd_core_info*, i32*) #1

declare dso_local i32 @bhndb_pci_add_children(%struct.bhndb_pci_softc*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @bhndb_pci_probe_free_core_table(%struct.bhnd_core_info*) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @bhndb_free_intr_isrc(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @bhndb_disable_pci_clocks(i32) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

declare dso_local i32 @BHNDB_PCI_LOCK_DESTROY(%struct.bhndb_pci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
