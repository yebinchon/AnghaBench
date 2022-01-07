; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_qman_fdt.c_qman_portals_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_qman_fdt.c_qman_portals_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_portals_softc = type { i32, i32, i32 }
%struct.dpaa_portals_devinfo = type { i32, i32 }
%struct.ofw_bus_devinfo = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"fsl,qman-portal\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cpu-handle\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not retrieve CPU number.\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"could not set up devinfo\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%s: could not process 'reg' property\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"%s: could not process 'interrupts' property\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qman_portals_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_portals_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpaa_portals_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dpaa_portals_devinfo, align 4
  %19 = alloca %struct.ofw_bus_devinfo, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %23 = bitcast %struct.ofw_bus_devinfo* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.dpaa_portals_softc* @device_get_softc(i32 %24)
  store %struct.dpaa_portals_softc* %25, %struct.dpaa_portals_softc** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %28 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @ofw_bus_get_node(i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_get_parent(i32 %31)
  %33 = call i64 @ofw_bus_get_node(i32 %32)
  %34 = call i32 @get_addr_props(i64 %33, i32* %12, i32* %13)
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @get_addr_props(i64 %35, i32* %11, i32* %13)
  %37 = load i64, i64* %5, align 8
  %38 = bitcast i32** %20 to i8**
  %39 = call i32 @OF_getencprop_alloc_multi(i64 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4, i8** %38)
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %43, %44
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %220

49:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %22, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %55, 32
  store i32 %56, i32* %8, align 4
  %57 = load i32*, i32** %20, align 8
  %58 = load i32, i32* %22, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %22, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %22, align 4
  br label %50

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %84, %67
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %70, %71
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 %75, 32
  store i32 %76, i32* %9, align 4
  %77 = load i32*, i32** %20, align 8
  %78 = load i32, i32* %22, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %22, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %22, align 4
  br label %68

87:                                               ; preds = %68
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %109, %87
  %92 = load i32, i32* %22, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %95, %96
  %98 = icmp slt i32 %92, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %91
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 %100, 32
  store i32 %101, i32* %10, align 4
  %102 = load i32*, i32** %20, align 8
  %103 = load i32, i32* %22, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %22, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %22, align 4
  br label %91

112:                                              ; preds = %91
  %113 = load i32*, i32** %20, align 8
  %114 = call i32 @OF_prop_free(i32* %113)
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %117 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %120 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i64, i64* %5, align 8
  %122 = call i64 @OF_child(i64 %121)
  store i64 %122, i64* %6, align 8
  br label %123

123:                                              ; preds = %206, %112
  %124 = load i64, i64* %6, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %209

126:                                              ; preds = %123
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* @mp_ncpus, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %209

131:                                              ; preds = %126
  %132 = load i64, i64* %6, align 8
  %133 = call i32 @ofw_bus_node_is_compatible(i64 %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  br label %206

136:                                              ; preds = %131
  %137 = load i64, i64* %6, align 8
  %138 = bitcast i64* %14 to i8*
  %139 = call i64 @OF_getprop(i64 %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %138, i32 8)
  %140 = icmp sle i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load i32, i32* %16, align 4
  %143 = call i64 @qman_portal_find_cpu(i32 %142)
  store i64 %143, i64* %14, align 8
  %144 = load i64, i64* %14, align 8
  %145 = icmp sle i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %206

147:                                              ; preds = %141
  br label %148

148:                                              ; preds = %147, %136
  %149 = load i64, i64* %14, align 8
  %150 = call i64 @OF_instance_to_package(i64 %149)
  store i64 %150, i64* %7, align 8
  %151 = load i64, i64* %7, align 8
  %152 = call i64 @OF_getencprop(i64 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %15, i32 4)
  %153 = icmp sle i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i32, i32* %3, align 4
  %156 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %157 = load i32, i32* @ENXIO, align 4
  store i32 %157, i32* %2, align 4
  br label %220

158:                                              ; preds = %148
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %16, align 4
  %161 = load i64, i64* %6, align 8
  %162 = call i64 @ofw_bus_gen_setup_devinfo(%struct.ofw_bus_devinfo* %19, i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i32, i32* %3, align 4
  %166 = call i32 (i32, i8*, ...) @device_printf(i32 %165, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %206

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %18, i32 0, i32 1
  %169 = call i32 @resource_list_init(i32* %168)
  %170 = load i32, i32* %3, align 4
  %171 = load i64, i64* %6, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %13, align 4
  %174 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %18, i32 0, i32 1
  %175 = call i64 @ofw_bus_reg_to_rl(i32 %170, i64 %171, i32 %172, i32 %173, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %167
  %178 = load i32, i32* %3, align 4
  %179 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %19, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32, i8*, ...) @device_printf(i32 %178, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %180)
  %182 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo* %19)
  br label %206

183:                                              ; preds = %167
  %184 = load i32, i32* %3, align 4
  %185 = load i64, i64* %6, align 8
  %186 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %18, i32 0, i32 1
  %187 = call i64 @ofw_bus_intr_to_rl(i32 %184, i64 %185, i32* %186, i32* %17)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %183
  %190 = load i32, i32* %3, align 4
  %191 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %19, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i32, i8*, ...) @device_printf(i32 %190, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %192)
  %194 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %18, i32 0, i32 1
  %195 = call i32 @resource_list_free(i32* %194)
  %196 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo* %19)
  br label %206

197:                                              ; preds = %183
  %198 = load i32, i32* %17, align 4
  %199 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %18, i32 0, i32 0
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* %15, align 4
  %202 = call i64 @dpaa_portal_alloc_res(i32 %200, %struct.dpaa_portals_devinfo* %18, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  br label %213

205:                                              ; preds = %197
  br label %206

206:                                              ; preds = %205, %189, %177, %164, %146, %135
  %207 = load i64, i64* %6, align 8
  %208 = call i64 @OF_peer(i64 %207)
  store i64 %208, i64* %6, align 8
  br label %123

209:                                              ; preds = %130, %123
  %210 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo* %19)
  %211 = load i32, i32* %3, align 4
  %212 = call i32 @qman_portals_attach(i32 %211)
  store i32 %212, i32* %2, align 4
  br label %220

213:                                              ; preds = %204
  %214 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %18, i32 0, i32 1
  %215 = call i32 @resource_list_free(i32* %214)
  %216 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo* %19)
  %217 = load i32, i32* %3, align 4
  %218 = call i32 @qman_portals_detach(i32 %217)
  %219 = load i32, i32* @ENXIO, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %213, %209, %154, %47
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.dpaa_portals_softc* @device_get_softc(i32) #2

declare dso_local i64 @ofw_bus_get_node(i32) #2

declare dso_local i32 @get_addr_props(i64, i32*, i32*) #2

declare dso_local i32 @device_get_parent(i32) #2

declare dso_local i32 @OF_getencprop_alloc_multi(i64, i8*, i32, i8**) #2

declare dso_local i32 @OF_prop_free(i32*) #2

declare dso_local i64 @OF_child(i64) #2

declare dso_local i32 @ofw_bus_node_is_compatible(i64, i8*) #2

declare dso_local i64 @OF_getprop(i64, i8*, i8*, i32) #2

declare dso_local i64 @qman_portal_find_cpu(i32) #2

declare dso_local i64 @OF_instance_to_package(i64) #2

declare dso_local i64 @OF_getencprop(i64, i8*, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.ofw_bus_devinfo*, i64) #2

declare dso_local i32 @resource_list_init(i32*) #2

declare dso_local i64 @ofw_bus_reg_to_rl(i32, i64, i32, i32, i32*) #2

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo*) #2

declare dso_local i64 @ofw_bus_intr_to_rl(i32, i64, i32*, i32*) #2

declare dso_local i32 @resource_list_free(i32*) #2

declare dso_local i64 @dpaa_portal_alloc_res(i32, %struct.dpaa_portals_devinfo*, i32) #2

declare dso_local i64 @OF_peer(i64) #2

declare dso_local i32 @qman_portals_attach(i32) #2

declare dso_local i32 @qman_portals_detach(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
