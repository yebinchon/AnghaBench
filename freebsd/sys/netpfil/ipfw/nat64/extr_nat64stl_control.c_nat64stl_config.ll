; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64stl_control.c_nat64stl_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64stl_control.c_nat64stl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.nat64stl_cfg = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.namedobj_instance = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPFW_MAX_SETS = common dso_local global i64 0, align 8
@SOPT_GET = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@NAT64STL_FLAGSMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @nat64stl_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64stl_config(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.nat64stl_cfg*, align 8
  %11 = alloca %struct.namedobj_instance*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %12 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %13 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 20
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %116

19:                                               ; preds = %3
  %20 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %21 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %20, i32 20)
  %22 = inttoptr i64 %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %8, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 1
  %25 = bitcast %struct.TYPE_10__* %24 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %9, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @ipfw_check_object_name_generic(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %19
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IPFW_MAX_SETS, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32, %19
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %116

41:                                               ; preds = %32
  %42 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %43 = call %struct.namedobj_instance* @CHAIN_TO_SRV(%struct.ip_fw_chain* %42)
  store %struct.namedobj_instance* %43, %struct.namedobj_instance** %11, align 8
  %44 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %45 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SOPT_GET, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %41
  %52 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %53 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %52)
  %54 = load %struct.namedobj_instance*, %struct.namedobj_instance** %11, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.nat64stl_cfg* @nat64stl_find(%struct.namedobj_instance* %54, i32 %58, i64 %62)
  store %struct.nat64stl_cfg* %63, %struct.nat64stl_cfg** %10, align 8
  %64 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %10, align 8
  %65 = icmp eq %struct.nat64stl_cfg* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %51
  %67 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %68 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %67)
  %69 = load i32, i32* @EEXIST, align 4
  store i32 %69, i32* %4, align 4
  br label %116

70:                                               ; preds = %51
  %71 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %72 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %10, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = call i32 @nat64stl_export_config(%struct.ip_fw_chain* %71, %struct.nat64stl_cfg* %72, %struct.TYPE_11__* %73)
  %75 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %76 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %75)
  store i32 0, i32* %4, align 4
  br label %116

77:                                               ; preds = %41
  %78 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %79 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %78)
  %80 = load %struct.namedobj_instance*, %struct.namedobj_instance** %11, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call %struct.nat64stl_cfg* @nat64stl_find(%struct.namedobj_instance* %80, i32 %84, i64 %88)
  store %struct.nat64stl_cfg* %89, %struct.nat64stl_cfg** %10, align 8
  %90 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %10, align 8
  %91 = icmp eq %struct.nat64stl_cfg* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %77
  %93 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %94 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %93)
  %95 = load i32, i32* @EEXIST, align 4
  store i32 %95, i32* %4, align 4
  br label %116

96:                                               ; preds = %77
  %97 = load i32, i32* @NAT64STL_FLAGSMASK, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %10, align 8
  %100 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %98
  store i32 %103, i32* %101, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @NAT64STL_FLAGSMASK, align 4
  %108 = and i32 %106, %107
  %109 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %10, align 8
  %110 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 4
  %114 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %115 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %96, %92, %70, %66, %39, %17
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i64 @ipfw_check_object_name_generic(i32) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.nat64stl_cfg* @nat64stl_find(%struct.namedobj_instance*, i32, i64) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @nat64stl_export_config(%struct.ip_fw_chain*, %struct.nat64stl_cfg*, %struct.TYPE_11__*) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
