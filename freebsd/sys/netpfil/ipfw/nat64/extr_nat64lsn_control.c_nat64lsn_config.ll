; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nat64lsn_cfg = type { %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.namedobj_instance = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPFW_MAX_SETS = common dso_local global i64 0, align 8
@SOPT_GET = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NAT64LSN_FLAGSMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @nat64lsn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64lsn_config(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.nat64lsn_cfg*, align 8
  %11 = alloca %struct.namedobj_instance*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %12 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %13 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 56
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %163

19:                                               ; preds = %3
  %20 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %21 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %20, i32 56)
  %22 = inttoptr i64 %21 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %8, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 1
  %25 = bitcast %struct.TYPE_11__* %24 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %9, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @ipfw_check_object_name_generic(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %19
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IPFW_MAX_SETS, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32, %19
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %163

41:                                               ; preds = %32
  %42 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %43 = call %struct.namedobj_instance* @CHAIN_TO_SRV(%struct.ip_fw_chain* %42)
  store %struct.namedobj_instance* %43, %struct.namedobj_instance** %11, align 8
  %44 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %45 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SOPT_GET, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %41
  %52 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %53 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %52)
  %54 = load %struct.namedobj_instance*, %struct.namedobj_instance** %11, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.nat64lsn_cfg* @nat64lsn_find(%struct.namedobj_instance* %54, i32 %58, i64 %62)
  store %struct.nat64lsn_cfg* %63, %struct.nat64lsn_cfg** %10, align 8
  %64 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %65 = icmp eq %struct.nat64lsn_cfg* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %51
  %67 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %68 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %67)
  %69 = load i32, i32* @ENOENT, align 4
  store i32 %69, i32* %4, align 4
  br label %163

70:                                               ; preds = %51
  %71 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %72 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = call i32 @nat64lsn_export_config(%struct.ip_fw_chain* %71, %struct.nat64lsn_cfg* %72, %struct.TYPE_12__* %73)
  %75 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %76 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %75)
  store i32 0, i32* %4, align 4
  br label %163

77:                                               ; preds = %41
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %79 = call i32 @nat64lsn_default_config(%struct.TYPE_12__* %78)
  %80 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %81 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %80)
  %82 = load %struct.namedobj_instance*, %struct.namedobj_instance** %11, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call %struct.nat64lsn_cfg* @nat64lsn_find(%struct.namedobj_instance* %82, i32 %86, i64 %90)
  store %struct.nat64lsn_cfg* %91, %struct.nat64lsn_cfg** %10, align 8
  %92 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %93 = icmp eq %struct.nat64lsn_cfg* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %77
  %95 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %96 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %95)
  %97 = load i32, i32* @ENOENT, align 4
  store i32 %97, i32* %4, align 4
  br label %163

98:                                               ; preds = %77
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %103 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %108 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %113 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %118 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %123 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %128 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %133 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %138 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %143 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @NAT64LSN_FLAGSMASK, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %147 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, %145
  store i32 %150, i32* %148, align 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @NAT64LSN_FLAGSMASK, align 4
  %155 = and i32 %153, %154
  %156 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %157 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %155
  store i32 %160, i32* %158, align 4
  %161 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %162 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %161)
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %98, %94, %70, %66, %39, %17
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i64 @ipfw_check_object_name_generic(i32) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.nat64lsn_cfg* @nat64lsn_find(%struct.namedobj_instance*, i32, i64) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @nat64lsn_export_config(%struct.ip_fw_chain*, %struct.nat64lsn_cfg*, %struct.TYPE_12__*) #1

declare dso_local i32 @nat64lsn_default_config(%struct.TYPE_12__*) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
