; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_mpc_agent_validate_phy_configuration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_mpc_agent_validate_phy_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32*, i32*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64, i64 }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"scic_sds_mpc_agent_validate_phy_configuration(0x%08x, 0x%08x) enter\0A\00", align 1
@SCI_MAX_PORTS = common dso_local global i64 0, align 8
@SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @scic_sds_mpc_agent_validate_phy_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scic_sds_mpc_agent_validate_phy_configuration(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %15 = call i32 @sci_base_object_get_logger(%struct.TYPE_22__* %14)
  %16 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %17 = load i32, i32* @SCIC_LOG_OBJECT_PORT, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = ptrtoint %struct.TYPE_21__* %20 to i32
  %22 = call i32 @SCIC_LOG_TRACE(i32 %21)
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %159, %2
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @SCI_MAX_PORTS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %162

27:                                               ; preds = %23
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %158

39:                                               ; preds = %27
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION, align 4
  store i32 %46, i32* %3, align 4
  br label %166

47:                                               ; preds = %39
  store i64 0, i64* %11, align 8
  br label %48

48:                                               ; preds = %87, %47
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @SCI_MAX_PHYS, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = load i64, i64* %11, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 1, %54
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %52
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = call i32 @scic_sds_phy_get_sas_address(i32* %64, %struct.TYPE_20__* %8)
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  store i64 %66, i64* %72, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  store i64 %73, i64* %79, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %59
  %84 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION, align 4
  store i32 %84, i32* %3, align 4
  br label %166

85:                                               ; preds = %59
  br label %90

86:                                               ; preds = %52
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %11, align 8
  br label %48

90:                                               ; preds = %85, %48
  br label %91

91:                                               ; preds = %154, %90
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @SCI_MAX_PHYS, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %157

95:                                               ; preds = %91
  %96 = load i64, i64* %11, align 8
  %97 = trunc i64 %96 to i32
  %98 = shl i32 1, %97
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %154

102:                                              ; preds = %95
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = call i32 @scic_sds_phy_get_sas_address(i32* %107, %struct.TYPE_20__* %9)
  %109 = bitcast %struct.TYPE_20__* %8 to { i64, i64 }*
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = bitcast %struct.TYPE_20__* %9 to { i64, i64 }*
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @sci_sas_address_compare(i64 %111, i64 %113, i64 %116, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %102
  %122 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION, align 4
  store i32 %122, i32* %3, align 4
  br label %166

123:                                              ; preds = %102
  %124 = load i64, i64* %10, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = load i64, i64* %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  store i64 %124, i64* %130, align 8
  %131 = load i64, i64* %11, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = load i64, i64* %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  store i64 %131, i64* %137, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* %10, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* %11, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = call i32 @scic_sds_port_add_phy(i32* %142, i32* %147)
  %149 = load i64, i64* %11, align 8
  %150 = trunc i64 %149 to i32
  %151 = shl i32 1, %150
  %152 = load i32, i32* %7, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %123, %95
  %155 = load i64, i64* %11, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %11, align 8
  br label %91

157:                                              ; preds = %91
  br label %158

158:                                              ; preds = %157, %27
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %10, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %10, align 8
  br label %23

162:                                              ; preds = %23
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %165 = call i32 @scic_sds_port_configuration_agent_validate_ports(%struct.TYPE_22__* %163, %struct.TYPE_21__* %164)
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %162, %121, %83, %45
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_22__*) #1

declare dso_local i32 @scic_sds_phy_get_sas_address(i32*, %struct.TYPE_20__*) #1

declare dso_local i64 @sci_sas_address_compare(i64, i64, i64, i64) #1

declare dso_local i32 @scic_sds_port_add_phy(i32*, i32*) #1

declare dso_local i32 @scic_sds_port_configuration_agent_validate_ports(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
