; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_device_deregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_device_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqgroup = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_27__*, i32, %struct.TYPE_28__, %struct.TYPE_28__, %struct.TYPE_25__*, %struct.TYPE_24__*, i32*, i32 }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_26__*, %struct.TYPE_28__ }
%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_24__ = type { %struct.TYPE_28__, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Vlan in use, detach first\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IFC_IN_DETACH = common dso_local global i32 0, align 4
@qgroup_if_io_tqg = common dso_local global %struct.taskqgroup* null, align 8
@M_IFLIB = common dso_local global i32 0, align 4
@qgroup_if_config_tqg = common dso_local global %struct.taskqgroup* null, align 8
@IFC_SC_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iflib_device_deregister(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.taskqgroup*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @if_vlantrunkinuse(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EBUSY, align 4
  store i32 %24, i32* %2, align 4
  br label %197

25:                                               ; preds = %1
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %27 = call i32 @STATE_LOCK(%struct.TYPE_27__* %26)
  %28 = load i32, i32* @IFC_IN_DETACH, align 4
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %34 = call i32 @STATE_UNLOCK(%struct.TYPE_27__* %33)
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %36 = call i32 @iflib_unregister_vlan_handlers(%struct.TYPE_27__* %35)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @iflib_netmap_detach(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ether_ifdetach(i32 %39)
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %42 = call i32 @CTX_LOCK(%struct.TYPE_27__* %41)
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %44 = call i32 @iflib_stop(%struct.TYPE_27__* %43)
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %46 = call i32 @CTX_UNLOCK(%struct.TYPE_27__* %45)
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %48 = call i32 @iflib_rem_pfil(%struct.TYPE_27__* %47)
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %25
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 7
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @led_destroy(i32* %56)
  br label %58

58:                                               ; preds = %53, %25
  %59 = load %struct.taskqgroup*, %struct.taskqgroup** @qgroup_if_io_tqg, align 8
  store %struct.taskqgroup* %59, %struct.taskqgroup** %10, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %61, align 8
  store %struct.TYPE_24__* %62, %struct.TYPE_24__** %5, align 8
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %83, %58
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %66 = call i32 @NTXQSETS(%struct.TYPE_27__* %65)
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = call i32 @callout_drain(i32* %70)
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load %struct.taskqgroup*, %struct.taskqgroup** %10, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = call i32 @taskqgroup_detach(%struct.taskqgroup* %78, %struct.TYPE_28__* %80)
  br label %82

82:                                               ; preds = %77, %68
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 1
  store %struct.TYPE_24__* %87, %struct.TYPE_24__** %5, align 8
  br label %63

88:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  store %struct.TYPE_25__* %91, %struct.TYPE_25__** %6, align 8
  br label %92

92:                                               ; preds = %130, %88
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %95 = call i32 @NRXQSETS(%struct.TYPE_27__* %94)
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %135

97:                                               ; preds = %92
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.taskqgroup*, %struct.taskqgroup** %10, align 8
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 2
  %107 = call i32 @taskqgroup_detach(%struct.taskqgroup* %104, %struct.TYPE_28__* %106)
  br label %108

108:                                              ; preds = %103, %97
  store i32 0, i32* %9, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %110, align 8
  store %struct.TYPE_26__* %111, %struct.TYPE_26__** %11, align 8
  br label %112

112:                                              ; preds = %124, %108
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %112
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %120, align 8
  %122 = load i32, i32* @M_IFLIB, align 4
  %123 = call i32 @free(%struct.TYPE_27__* %121, i32 %122)
  br label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 1
  store %struct.TYPE_26__* %128, %struct.TYPE_26__** %11, align 8
  br label %112

129:                                              ; preds = %112
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 1
  store %struct.TYPE_25__* %134, %struct.TYPE_25__** %6, align 8
  br label %92

135:                                              ; preds = %92
  %136 = load %struct.taskqgroup*, %struct.taskqgroup** @qgroup_if_config_tqg, align 8
  store %struct.taskqgroup* %136, %struct.taskqgroup** %10, align 8
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load %struct.taskqgroup*, %struct.taskqgroup** %10, align 8
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 4
  %146 = call i32 @taskqgroup_detach(%struct.taskqgroup* %143, %struct.TYPE_28__* %145)
  br label %147

147:                                              ; preds = %142, %135
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load %struct.taskqgroup*, %struct.taskqgroup** %10, align 8
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 3
  %157 = call i32 @taskqgroup_detach(%struct.taskqgroup* %154, %struct.TYPE_28__* %156)
  br label %158

158:                                              ; preds = %153, %147
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %160 = call i32 @CTX_LOCK(%struct.TYPE_27__* %159)
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %162 = call i32 @IFDI_DETACH(%struct.TYPE_27__* %161)
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %164 = call i32 @CTX_UNLOCK(%struct.TYPE_27__* %163)
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %166 = call i32 @iflib_free_intr_mem(%struct.TYPE_27__* %165)
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @bus_generic_detach(i32 %167)
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %170 = call i32 @iflib_tx_structures_free(%struct.TYPE_27__* %169)
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %172 = call i32 @iflib_rx_structures_free(%struct.TYPE_27__* %171)
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %174 = call i32 @iflib_deregister(%struct.TYPE_27__* %173)
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @device_set_softc(i32 %177, i32* null)
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IFC_SC_ALLOCATED, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %158
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %187, align 8
  %189 = load i32, i32* @M_IFLIB, align 4
  %190 = call i32 @free(%struct.TYPE_27__* %188, i32 %189)
  br label %191

191:                                              ; preds = %185, %158
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %193 = call i32 @unref_ctx_core_offset(%struct.TYPE_27__* %192)
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %195 = load i32, i32* @M_IFLIB, align 4
  %196 = call i32 @free(%struct.TYPE_27__* %194, i32 %195)
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %191, %21
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i64 @if_vlantrunkinuse(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @STATE_LOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @STATE_UNLOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @iflib_unregister_vlan_handlers(%struct.TYPE_27__*) #1

declare dso_local i32 @iflib_netmap_detach(i32) #1

declare dso_local i32 @ether_ifdetach(i32) #1

declare dso_local i32 @CTX_LOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @iflib_stop(%struct.TYPE_27__*) #1

declare dso_local i32 @CTX_UNLOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @iflib_rem_pfil(%struct.TYPE_27__*) #1

declare dso_local i32 @led_destroy(i32*) #1

declare dso_local i32 @NTXQSETS(%struct.TYPE_27__*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqgroup_detach(%struct.taskqgroup*, %struct.TYPE_28__*) #1

declare dso_local i32 @NRXQSETS(%struct.TYPE_27__*) #1

declare dso_local i32 @free(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @IFDI_DETACH(%struct.TYPE_27__*) #1

declare dso_local i32 @iflib_free_intr_mem(%struct.TYPE_27__*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @iflib_tx_structures_free(%struct.TYPE_27__*) #1

declare dso_local i32 @iflib_rx_structures_free(%struct.TYPE_27__*) #1

declare dso_local i32 @iflib_deregister(%struct.TYPE_27__*) #1

declare dso_local i32 @device_set_softc(i32, i32*) #1

declare dso_local i32 @unref_ctx_core_offset(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
