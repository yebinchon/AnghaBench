; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_apc_agent_configure_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_apc_agent_configure_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64 }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PORT = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"scic_sds_apc_agent_configure_ports(0x%08x, 0x%08x, 0x%08x, %d) enter\0A\00", align 1
@SCI_INVALID_HANDLE = common dso_local global %struct.TYPE_16__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_17__*, %struct.TYPE_18__*, i64)* @scic_sds_apc_agent_configure_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_apc_agent_configure_ports(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 129, i32* %13, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @sci_base_object_get_logger(i32* %14)
  %16 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %17 = load i32, i32* @SCIC_LOG_OBJECT_PORT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %20 = or i32 %18, %19
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @SCIC_LOG_TRACE(i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %29 = call %struct.TYPE_16__* @scic_sds_port_configuration_agent_find_port(i32* %27, %struct.TYPE_18__* %28)
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %11, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SCI_INVALID_HANDLE, align 8
  %32 = icmp ne %struct.TYPE_16__* %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @scic_sds_port_is_valid_phy_assignment(%struct.TYPE_16__* %34, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 130, i32* %13, align 4
  br label %42

41:                                               ; preds = %33
  store i32 129, i32* %13, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %121

43:                                               ; preds = %4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %117, %43
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sle i64 %54, %63
  br i1 %64, label %65, label %120

65:                                               ; preds = %53
  %66 = load i32*, i32** %5, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @scic_controller_get_port_handle(i32* %66, i64 %67, i64* %12)
  %69 = load i64, i64* %12, align 8
  %70 = inttoptr i64 %69 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %11, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @scic_sds_port_is_valid_phy_assignment(%struct.TYPE_16__* %71, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %65
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = shl i32 1, %84
  %86 = icmp sgt i32 %80, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 129, i32* %13, align 4
  br label %120

88:                                               ; preds = %77
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 128
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 130, i32* %13, align 4
  br label %101

101:                                              ; preds = %100, %97
  br label %120

102:                                              ; preds = %88
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 128, i32* %13, align 4
  br label %108

108:                                              ; preds = %107, %102
  br label %116

109:                                              ; preds = %65
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 129, i32* %13, align 4
  br label %115

115:                                              ; preds = %114, %109
  br label %116

116:                                              ; preds = %115, %108
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %9, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %9, align 8
  br label %53

120:                                              ; preds = %101, %87, %53
  br label %121

121:                                              ; preds = %120, %42
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* @FALSE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 128
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 130, i32* %13, align 4
  br label %129

129:                                              ; preds = %128, %125, %121
  %130 = load i32, i32* %13, align 4
  switch i32 %130, label %156 [
    i32 130, label %131
    i32 128, label %149
    i32 129, label %155
  ]

131:                                              ; preds = %129
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %134 = call i32 @scic_sds_port_add_phy(%struct.TYPE_16__* %132, %struct.TYPE_18__* %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @SCI_SUCCESS, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %131
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = shl i32 1, %142
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %138, %131
  br label %157

149:                                              ; preds = %129
  %150 = load i32*, i32** %5, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %153 = load i32, i32* @SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION, align 4
  %154 = call i32 @scic_sds_apc_agent_start_timer(i32* %150, %struct.TYPE_17__* %151, %struct.TYPE_18__* %152, i32 %153)
  br label %157

155:                                              ; preds = %129
  br label %156

156:                                              ; preds = %129, %155
  br label %157

157:                                              ; preds = %156, %149, %148
  ret void
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local %struct.TYPE_16__* @scic_sds_port_configuration_agent_find_port(i32*, %struct.TYPE_18__*) #1

declare dso_local i64 @scic_sds_port_is_valid_phy_assignment(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @scic_controller_get_port_handle(i32*, i64, i64*) #1

declare dso_local i32 @scic_sds_port_add_phy(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @scic_sds_apc_agent_start_timer(i32*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
