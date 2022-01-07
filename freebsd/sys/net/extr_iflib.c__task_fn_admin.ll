; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c__task_fn_admin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c__task_fn_admin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_23__*, i32, i32, %struct.TYPE_22__*, %struct.TYPE_24__ }
%struct.TYPE_23__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@hz = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFC_DO_RESET = common dso_local global i32 0, align 4
@IFC_DO_WATCHDOG = common dso_local global i32 0, align 4
@IFC_IN_DETACH = common dso_local global i32 0, align 4
@IFLIB_ADMIN_ALWAYS_RUN = common dso_local global i32 0, align 4
@iflib_timer = common dso_local global i32 0, align 4
@IFLIB_RESTART_BUDGET = common dso_local global i32 0, align 4
@IFCAP_NETMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @_task_fn_admin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_task_fn_admin(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %14, %struct.TYPE_25__** %3, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 5
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %4, align 8
  %17 = load i32, i32* @hz, align 4
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %12, align 4
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %20 = call i32 @STATE_LOCK(%struct.TYPE_25__* %19)
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @if_getdrvflags(i32 %23)
  %25 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @if_getdrvflags(i32 %29)
  %31 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IFC_DO_RESET, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IFC_DO_WATCHDOG, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IFC_IN_DETACH, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @IFC_DO_RESET, align 4
  %49 = load i32, i32* @IFC_DO_WATCHDOG, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %57 = call i32 @STATE_UNLOCK(%struct.TYPE_25__* %56)
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %1
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IFLIB_ADMIN_ALWAYS_RUN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %174

73:                                               ; preds = %63, %60, %1
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %174

77:                                               ; preds = %73
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %79 = call i32 @CTX_LOCK(%struct.TYPE_25__* %78)
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %81, align 8
  store %struct.TYPE_23__* %82, %struct.TYPE_23__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %97, %77
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = call i32 @CALLOUT_LOCK(%struct.TYPE_23__* %90)
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = call i32 @callout_stop(%struct.TYPE_26__* %93)
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %96 = call i32 @CALLOUT_UNLOCK(%struct.TYPE_23__* %95)
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 1
  store %struct.TYPE_23__* %101, %struct.TYPE_23__** %5, align 8
  br label %83

102:                                              ; preds = %83
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %111 = call i32 @IFDI_WATCHDOG_RESET(%struct.TYPE_25__* %110)
  br label %112

112:                                              ; preds = %105, %102
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %114 = call i32 @IFDI_UPDATE_ADMIN_STATUS(%struct.TYPE_25__* %113)
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  store %struct.TYPE_23__* %117, %struct.TYPE_23__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %135, %112
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %118
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @iflib_timer, align 4
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @callout_reset_on(%struct.TYPE_26__* %126, i32 %127, i32 %128, %struct.TYPE_23__* %129, i32 %133)
  br label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 1
  store %struct.TYPE_23__* %139, %struct.TYPE_23__** %5, align 8
  br label %118

140:                                              ; preds = %118
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %142 = call i32 @IFDI_LINK_INTR_ENABLE(%struct.TYPE_25__* %141)
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %147 = call i32 @iflib_if_init_locked(%struct.TYPE_25__* %146)
  br label %148

148:                                              ; preds = %145, %140
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %150 = call i32 @CTX_UNLOCK(%struct.TYPE_25__* %149)
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %152 = call i64 @LINK_ACTIVE(%struct.TYPE_25__* %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %174

155:                                              ; preds = %148
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %157, align 8
  store %struct.TYPE_23__* %158, %struct.TYPE_23__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %169, %155
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %167 = load i32, i32* @IFLIB_RESTART_BUDGET, align 4
  %168 = call i32 @iflib_txq_check_drain(%struct.TYPE_23__* %166, i32 %167)
  br label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 1
  store %struct.TYPE_23__* %173, %struct.TYPE_23__** %5, align 8
  br label %159

174:                                              ; preds = %72, %76, %154, %159
  ret void
}

declare dso_local i32 @STATE_LOCK(%struct.TYPE_25__*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @STATE_UNLOCK(%struct.TYPE_25__*) #1

declare dso_local i32 @CTX_LOCK(%struct.TYPE_25__*) #1

declare dso_local i32 @CALLOUT_LOCK(%struct.TYPE_23__*) #1

declare dso_local i32 @callout_stop(%struct.TYPE_26__*) #1

declare dso_local i32 @CALLOUT_UNLOCK(%struct.TYPE_23__*) #1

declare dso_local i32 @IFDI_WATCHDOG_RESET(%struct.TYPE_25__*) #1

declare dso_local i32 @IFDI_UPDATE_ADMIN_STATUS(%struct.TYPE_25__*) #1

declare dso_local i32 @callout_reset_on(%struct.TYPE_26__*, i32, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @IFDI_LINK_INTR_ENABLE(%struct.TYPE_25__*) #1

declare dso_local i32 @iflib_if_init_locked(%struct.TYPE_25__*) #1

declare dso_local i32 @CTX_UNLOCK(%struct.TYPE_25__*) #1

declare dso_local i64 @LINK_ACTIVE(%struct.TYPE_25__*) #1

declare dso_local i32 @iflib_txq_check_drain(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
