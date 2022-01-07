; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman_fdt.c_bman_portals_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman_fdt.c_bman_portals_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_portals_softc = type { i64, i8*, i32 }
%struct.resource_list_entry = type { i64, i8* }
%struct.dpaa_portals_devinfo = type { i32, i32 }
%struct.ofw_bus_devinfo = type { i32 }

@mp_ncpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fsl,bman-portal\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"cpu-handle\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Could not retrieve CPU number.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"could not set up devinfo\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"%s: could not process 'reg' property\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"%s: could not process 'interrupts' property\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bman_portals_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bman_portals_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpaa_portals_softc*, align 8
  %5 = alloca %struct.resource_list_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dpaa_portals_devinfo, align 4
  %18 = alloca %struct.ofw_bus_devinfo, align 4
  store i32 %0, i32* %3, align 4
  %19 = bitcast %struct.ofw_bus_devinfo* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.dpaa_portals_softc* @device_get_softc(i32 %20)
  store %struct.dpaa_portals_softc* %21, %struct.dpaa_portals_softc** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %24 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @ofw_bus_get_node(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @get_addr_props(i64 %27, i32* %11, i32* %12)
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @OF_child(i64 %29)
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %152, %1
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %155

34:                                               ; preds = %31
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @mp_ncpus, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %155

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @ofw_bus_node_is_compatible(i64 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %152

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = bitcast i64* %13 to i8*
  %47 = call i64 @OF_getprop(i64 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 8)
  %48 = icmp sle i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* %15, align 4
  %51 = call i64 @bman_portal_find_cpu(i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %152

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i64, i64* %13, align 8
  %58 = call i64 @OF_instance_to_package(i64 %57)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @OF_getencprop(i64 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %14, i32 4)
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %2, align 4
  br label %166

66:                                               ; preds = %56
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @ofw_bus_gen_setup_devinfo(%struct.ofw_bus_devinfo* %18, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %3, align 4
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %152

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %17, i32 0, i32 1
  %77 = call i32 @resource_list_init(i32* %76)
  %78 = load i32, i32* %3, align 4
  %79 = load i64, i64* %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %17, i32 0, i32 1
  %83 = call i64 @ofw_bus_reg_to_rl(i32 %78, i64 %79, i32 %80, i32 %81, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load i32, i32* %3, align 4
  %87 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %18, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo* %18)
  br label %152

91:                                               ; preds = %75
  %92 = load i32, i32* %3, align 4
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %17, i32 0, i32 1
  %95 = call i64 @ofw_bus_intr_to_rl(i32 %92, i64 %93, i32* %94, i32* %16)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load i32, i32* %3, align 4
  %99 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %18, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %17, i32 0, i32 1
  %103 = call i32 @resource_list_free(i32* %102)
  %104 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo* %18)
  br label %152

105:                                              ; preds = %91
  %106 = load i32, i32* %16, align 4
  %107 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %17, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @ofw_reg_to_paddr(i64 %108, i32 0, i64* %9, i8** %10, i32* null)
  %110 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %17, i32 0, i32 1
  %111 = load i32, i32* @SYS_RES_MEMORY, align 4
  %112 = call %struct.resource_list_entry* @resource_list_find(i32* %110, i32 %111, i32 0)
  store %struct.resource_list_entry* %112, %struct.resource_list_entry** %5, align 8
  %113 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %114 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %105
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.resource_list_entry*, %struct.resource_list_entry** %5, align 8
  %120 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %118, %121
  %123 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %124 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %117, %105
  %126 = load %struct.resource_list_entry*, %struct.resource_list_entry** %5, align 8
  %127 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr i8, i8* %128, i64 1
  store i8* %129, i8** %10, align 8
  %130 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %17, i32 0, i32 1
  %131 = load i32, i32* @SYS_RES_MEMORY, align 4
  %132 = call %struct.resource_list_entry* @resource_list_find(i32* %130, i32 %131, i32 1)
  store %struct.resource_list_entry* %132, %struct.resource_list_entry** %5, align 8
  %133 = load %struct.resource_list_entry*, %struct.resource_list_entry** %5, align 8
  %134 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr i8, i8* %135, i64 1
  %137 = load i8*, i8** %10, align 8
  %138 = call i8* @ulmax(i8* %136, i8* %137)
  store i8* %138, i8** %10, align 8
  %139 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %140 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = call i8* @ulmax(i8* %141, i8* %142)
  %144 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %145 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i64 @dpaa_portal_alloc_res(i32 %146, %struct.dpaa_portals_devinfo* %17, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %125
  br label %159

151:                                              ; preds = %125
  br label %152

152:                                              ; preds = %151, %97, %85, %72, %54, %43
  %153 = load i64, i64* %7, align 8
  %154 = call i64 @OF_peer(i64 %153)
  store i64 %154, i64* %7, align 8
  br label %31

155:                                              ; preds = %38, %31
  %156 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo* %18)
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @bman_portals_attach(i32 %157)
  store i32 %158, i32* %2, align 4
  br label %166

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %17, i32 0, i32 1
  %161 = call i32 @resource_list_free(i32* %160)
  %162 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo* %18)
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @bman_portals_detach(i32 %163)
  %165 = load i32, i32* @ENXIO, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %159, %155, %62
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.dpaa_portals_softc* @device_get_softc(i32) #2

declare dso_local i64 @ofw_bus_get_node(i32) #2

declare dso_local i32 @get_addr_props(i64, i32*, i32*) #2

declare dso_local i64 @OF_child(i64) #2

declare dso_local i32 @ofw_bus_node_is_compatible(i64, i8*) #2

declare dso_local i64 @OF_getprop(i64, i8*, i8*, i32) #2

declare dso_local i64 @bman_portal_find_cpu(i32) #2

declare dso_local i64 @OF_instance_to_package(i64) #2

declare dso_local i64 @OF_getencprop(i64, i8*, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.ofw_bus_devinfo*, i64) #2

declare dso_local i32 @resource_list_init(i32*) #2

declare dso_local i64 @ofw_bus_reg_to_rl(i32, i64, i32, i32, i32*) #2

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo*) #2

declare dso_local i64 @ofw_bus_intr_to_rl(i32, i64, i32*, i32*) #2

declare dso_local i32 @resource_list_free(i32*) #2

declare dso_local i32 @ofw_reg_to_paddr(i64, i32, i64*, i8**, i32*) #2

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #2

declare dso_local i8* @ulmax(i8*, i8*) #2

declare dso_local i64 @dpaa_portal_alloc_res(i32, %struct.dpaa_portals_devinfo*, i32) #2

declare dso_local i64 @OF_peer(i64) #2

declare dso_local i32 @bman_portals_attach(i32) #2

declare dso_local i32 @bman_portals_detach(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
