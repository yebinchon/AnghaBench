; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i8*, i8*, i32, %struct.TYPE_26__*, i32, i32, i32, i32 }

@OCE_TX_RING_SIZE = common dso_local global i32 0, align 4
@OCE_RX_RING_SIZE = common dso_local global i32 0, align 4
@oce_rq_buf_size = common dso_local global i32 0, align 4
@OCE_DEFAULT_FLOW_CONTROL = common dso_local global i32 0, align 4
@OCE_DEFAULT_PROMISCUOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Mailbox_lock\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Device_lock\00", align 1
@vlan_config = common dso_local global i32 0, align 4
@oce_add_vlan = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_FIRST = common dso_local global i32 0, align 4
@vlan_unconfig = common dso_local global i32 0, align 4
@oce_del_vlan = common dso_local global i32 0, align 4
@CALLOUT_MPSAFE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@oce_local_timer = common dso_local global i32 0, align 4
@softc_tail = common dso_local global %struct.TYPE_26__* null, align 8
@softc_head = common dso_local global %struct.TYPE_26__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @oce_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oce_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.TYPE_26__* @device_get_softc(i32 %6)
  store %struct.TYPE_26__* %7, %struct.TYPE_26__** %4, align 8
  %8 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %9 = call i32 @oce_hw_pci_alloc(%struct.TYPE_26__* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %184

14:                                               ; preds = %1
  %15 = load i32, i32* @OCE_TX_RING_SIZE, align 4
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @OCE_RX_RING_SIZE, align 4
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @oce_rq_buf_size, align 4
  %22 = sdiv i32 %21, 2048
  %23 = mul nsw i32 %22, 2048
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @OCE_DEFAULT_FLOW_CONTROL, align 4
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @OCE_DEFAULT_PROMISCUOUS, align 4
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 1
  %34 = call i32 @LOCK_CREATE(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 2
  %37 = call i32 @LOCK_CREATE(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %39 = call i32 @oce_hw_init(%struct.TYPE_26__* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %14
  br label %174

43:                                               ; preds = %14
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %45 = call i32 @oce_read_env_variables(%struct.TYPE_26__* %44)
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %47 = call i32 @oce_get_config(%struct.TYPE_26__* %46)
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %49 = call i32 @setup_max_queues_want(%struct.TYPE_26__* %48)
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %51 = call i32 @oce_setup_intr(%struct.TYPE_26__* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %169

55:                                               ; preds = %43
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %57 = call i32 @oce_queue_init_all(%struct.TYPE_26__* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %166

61:                                               ; preds = %55
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %63 = call i32 @oce_attach_ifp(%struct.TYPE_26__* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %163

67:                                               ; preds = %61
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %69 = call i32 @oce_hw_start(%struct.TYPE_26__* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %154

73:                                               ; preds = %67
  %74 = load i32, i32* @vlan_config, align 4
  %75 = load i32, i32* @oce_add_vlan, align 4
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %77 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %78 = call i8* @EVENTHANDLER_REGISTER(i32 %74, i32 %75, %struct.TYPE_26__* %76, i32 %77)
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @vlan_unconfig, align 4
  %82 = load i32, i32* @oce_del_vlan, align 4
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %84 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %85 = call i8* @EVENTHANDLER_REGISTER(i32 %81, i32 %82, %struct.TYPE_26__* %83, i32 %84)
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %89 = call i32 @oce_stats_init(%struct.TYPE_26__* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  br label %129

93:                                               ; preds = %73
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %95 = call i32 @oce_add_sysctls(%struct.TYPE_26__* %94)
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 7
  %98 = load i32, i32* @CALLOUT_MPSAFE, align 4
  %99 = call i32 @callout_init(i32* %97, i32 %98)
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 7
  %102 = load i32, i32* @hz, align 4
  %103 = mul nsw i32 2, %102
  %104 = load i32, i32* @oce_local_timer, align 4
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %106 = call i32 @callout_reset(i32* %101, i32 %103, i32 %104, %struct.TYPE_26__* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %93
  br label %123

110:                                              ; preds = %93
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %112, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** @softc_tail, align 8
  %114 = icmp ne %struct.TYPE_26__* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** @softc_tail, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 8
  store %struct.TYPE_26__* %116, %struct.TYPE_26__** %118, align 8
  br label %121

119:                                              ; preds = %110
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_26__* %120, %struct.TYPE_26__** @softc_head, align 8
  br label %121

121:                                              ; preds = %119, %115
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_26__* %122, %struct.TYPE_26__** @softc_tail, align 8
  store i32 0, i32* %2, align 4
  br label %184

123:                                              ; preds = %109
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 7
  %126 = call i32 @callout_drain(i32* %125)
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %128 = call i32 @oce_stats_free(%struct.TYPE_26__* %127)
  br label %129

129:                                              ; preds = %123, %92
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 6
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @vlan_config, align 4
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 6
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @EVENTHANDLER_DEREGISTER(i32 %135, i8* %138)
  br label %140

140:                                              ; preds = %134, %129
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 5
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32, i32* @vlan_unconfig, align 4
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 5
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @EVENTHANDLER_DEREGISTER(i32 %146, i8* %149)
  br label %151

151:                                              ; preds = %145, %140
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %153 = call i32 @oce_hw_intr_disable(%struct.TYPE_26__* %152)
  br label %154

154:                                              ; preds = %151, %72
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ether_ifdetach(i32 %157)
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @if_free(i32 %161)
  br label %163

163:                                              ; preds = %154, %66
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %165 = call i32 @oce_queue_release_all(%struct.TYPE_26__* %164)
  br label %166

166:                                              ; preds = %163, %60
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %168 = call i32 @oce_intr_free(%struct.TYPE_26__* %167)
  br label %169

169:                                              ; preds = %166, %54
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 3
  %173 = call i32 @oce_dma_free(%struct.TYPE_26__* %170, i32* %172)
  br label %174

174:                                              ; preds = %169, %42
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %176 = call i32 @oce_hw_pci_free(%struct.TYPE_26__* %175)
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 2
  %179 = call i32 @LOCK_DESTROY(i32* %178)
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 1
  %182 = call i32 @LOCK_DESTROY(i32* %181)
  %183 = load i32, i32* %5, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %174, %121, %12
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.TYPE_26__* @device_get_softc(i32) #1

declare dso_local i32 @oce_hw_pci_alloc(%struct.TYPE_26__*) #1

declare dso_local i32 @LOCK_CREATE(i32*, i8*) #1

declare dso_local i32 @oce_hw_init(%struct.TYPE_26__*) #1

declare dso_local i32 @oce_read_env_variables(%struct.TYPE_26__*) #1

declare dso_local i32 @oce_get_config(%struct.TYPE_26__*) #1

declare dso_local i32 @setup_max_queues_want(%struct.TYPE_26__*) #1

declare dso_local i32 @oce_setup_intr(%struct.TYPE_26__*) #1

declare dso_local i32 @oce_queue_init_all(%struct.TYPE_26__*) #1

declare dso_local i32 @oce_attach_ifp(%struct.TYPE_26__*) #1

declare dso_local i32 @oce_hw_start(%struct.TYPE_26__*) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @oce_stats_init(%struct.TYPE_26__*) #1

declare dso_local i32 @oce_add_sysctls(%struct.TYPE_26__*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @oce_stats_free(%struct.TYPE_26__*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i8*) #1

declare dso_local i32 @oce_hw_intr_disable(%struct.TYPE_26__*) #1

declare dso_local i32 @ether_ifdetach(i32) #1

declare dso_local i32 @if_free(i32) #1

declare dso_local i32 @oce_queue_release_all(%struct.TYPE_26__*) #1

declare dso_local i32 @oce_intr_free(%struct.TYPE_26__*) #1

declare dso_local i32 @oce_dma_free(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @oce_hw_pci_free(%struct.TYPE_26__*) #1

declare dso_local i32 @LOCK_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
