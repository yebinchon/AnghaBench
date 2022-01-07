; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_request_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, i32, i32, %struct.al_eth_irq* }
%struct.al_eth_irq = type { i32, i32*, i32, i32, i32, i32 }

@AL_ETH_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i64 0, align 8
@RF_SHAREABLE = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not allocate irq vector=%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"failed to register interrupt handler for irq %ju: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to tear down irq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"exit_intr: releasing irq %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"exit_res: releasing resource for irq %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"dev has no parent while releasing res for irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_eth_adapter*)* @al_eth_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_request_irq(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.al_eth_irq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @AL_ETH_FLAG_MSIX_ENABLED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @RF_ACTIVE, align 8
  store i64 %17, i64* %3, align 8
  br label %22

18:                                               ; preds = %1
  %19 = load i64, i64* @RF_ACTIVE, align 8
  %20 = load i64, i64* @RF_SHAREABLE, align 8
  %21 = or i64 %19, %20
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %18, %16
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %99, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %102

29:                                               ; preds = %23
  %30 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %30, i32 0, i32 3
  %32 = load %struct.al_eth_irq*, %struct.al_eth_irq** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %32, i64 %34
  store %struct.al_eth_irq* %35, %struct.al_eth_irq** %4, align 8
  %36 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %37 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %99

41:                                               ; preds = %29
  %42 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SYS_RES_IRQ, align 4
  %46 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %47 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %46, i32 0, i32 2
  %48 = load i64, i64* %3, align 8
  %49 = call i32* @bus_alloc_resource_any(i32 %44, i32 %45, i32* %47, i64 %48)
  %50 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %51 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %53 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %41
  %57 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %61 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %5, align 4
  br label %148

65:                                               ; preds = %41
  %66 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %70 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @INTR_TYPE_NET, align 4
  %73 = load i32, i32* @INTR_MPSAFE, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %76 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %79 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %82 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %81, i32 0, i32 3
  %83 = call i32 @bus_setup_intr(i32 %68, i32* %71, i32 %74, i32 %77, i32* null, i32 %80, i32* %82)
  store i32 %83, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %65
  %86 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %90 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @rman_get_start(i32* %91)
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  br label %103

96:                                               ; preds = %65
  %97 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %98 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %40
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %23

102:                                              ; preds = %23
  br label %194

103:                                              ; preds = %85
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %137, %103
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %7, align 4
  %109 = icmp sge i32 %107, 0
  br i1 %109, label %110, label %147

110:                                              ; preds = %106
  %111 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %112 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %111, i32 0, i32 3
  %113 = load %struct.al_eth_irq*, %struct.al_eth_irq** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %113, i64 %115
  store %struct.al_eth_irq* %116, %struct.al_eth_irq** %4, align 8
  %117 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %118 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %121 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %124 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @bus_teardown_intr(i32 %119, i32* %122, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %110
  %130 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %131 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %134 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %129, %110
  %138 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %139 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %141 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %144 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @device_printf_dbg(i32 %142, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  br label %106

147:                                              ; preds = %106
  br label %148

148:                                              ; preds = %147, %56
  %149 = load i32, i32* %6, align 4
  %150 = sub nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %190, %148
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %7, align 4
  %154 = icmp sge i32 %152, 0
  br i1 %154, label %155, label %193

155:                                              ; preds = %151
  %156 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %157 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %156, i32 0, i32 3
  %158 = load %struct.al_eth_irq*, %struct.al_eth_irq** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %158, i64 %160
  store %struct.al_eth_irq* %161, %struct.al_eth_irq** %4, align 8
  %162 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %163 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %166 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @device_printf_dbg(i32 %164, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  %169 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %170 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @SYS_RES_IRQ, align 4
  %173 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %174 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %177 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @bus_release_resource(i32 %171, i32 %172, i32 %175, i32* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %155
  %183 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %184 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %187 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %185, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %182, %155
  %191 = load %struct.al_eth_irq*, %struct.al_eth_irq** %4, align 8
  %192 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %191, i32 0, i32 1
  store i32* null, i32** %192, align 8
  br label %151

193:                                              ; preds = %151
  br label %194

194:                                              ; preds = %193, %102
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @rman_get_start(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @device_printf_dbg(i32, i8*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
