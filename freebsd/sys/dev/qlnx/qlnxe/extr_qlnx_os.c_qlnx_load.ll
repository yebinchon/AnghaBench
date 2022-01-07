; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__, i32, i32, %struct.ecore_dev, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.ecore_dev = type { i32* }
%struct.TYPE_16__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Allocated %d RSS queues on %d TC/s\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@qlnx_fp_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"could not setup interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"rss_id = %d irq_rid %d \09\09\09 irq %p handle %p\0A\00", align 1
@mp_ncpus = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Start VPORT, RXQ and TXQ succeeded\0A\00", align 1
@QLNX_STATE_OPEN = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@qlnx_timer = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"exit [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @qlnx_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_load(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 5
  store %struct.ecore_dev* %8, %struct.ecore_dev** %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %13 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT2(%struct.TYPE_18__* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %15 = call i32 @qlnx_alloc_mem_arrays(%struct.TYPE_18__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %171

19:                                               ; preds = %1
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %21 = call i32 @qlnx_init_fp(%struct.TYPE_18__* %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %23 = call i32 @qlnx_alloc_mem_load(%struct.TYPE_18__* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %168

27:                                               ; preds = %19
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT2(%struct.TYPE_18__* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %115, %27
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %118

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @INTR_TYPE_NET, align 4
  %53 = load i32, i32* @INTR_MPSAFE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @qlnx_fp_isr, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i64 %60
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = call i32 @bus_setup_intr(i32 %43, i32 %51, i32 %54, i32* null, i32 %55, %struct.TYPE_16__* %61, i32* %68)
  store i32 %69, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %42
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %73 = call i32 @QL_DPRINT1(%struct.TYPE_18__* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %165

74:                                               ; preds = %42
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 6
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT2(%struct.TYPE_18__* %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %84, i32 %92, i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @mp_ncpus, align 4
  %113 = srem i32 %111, %112
  %114 = call i32 @bus_bind_intr(i32 %102, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %74
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %36

118:                                              ; preds = %36
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %120 = call i32 @qlnx_start_queues(%struct.TYPE_18__* %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %165

124:                                              ; preds = %118
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %126 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT2(%struct.TYPE_18__* %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %128 = call i32 @qlnx_set_rx_mode(%struct.TYPE_18__* %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %165

132:                                              ; preds = %124
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %134 = call i32 @qlnx_set_link(%struct.TYPE_18__* %133, i32 1)
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %136 = call i64 @qlnx_vf_device(%struct.TYPE_18__* %135)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = call i32 @qlnx_link_update(i32* %143)
  br label %145

145:                                              ; preds = %138, %132
  %146 = load i32, i32* @QLNX_STATE_OPEN, align 4
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 3
  %151 = call i32 @bzero(i32* %150, i32 4)
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %145
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  %160 = load i32, i32* @hz, align 4
  %161 = load i32, i32* @qlnx_timer, align 4
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %163 = call i32 @callout_reset(i32* %159, i32 %160, i32 %161, %struct.TYPE_18__* %162)
  br label %164

164:                                              ; preds = %157, %145
  br label %171

165:                                              ; preds = %131, %123, %71
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %167 = call i32 @qlnx_free_mem_load(%struct.TYPE_18__* %166)
  br label %168

168:                                              ; preds = %165, %26
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  store i32 0, i32* %170, align 8
  br label %171

171:                                              ; preds = %168, %164, %18
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %173 = load i32, i32* %4, align 4
  %174 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT2(%struct.TYPE_18__* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @QL_DPRINT2(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @qlnx_alloc_mem_arrays(%struct.TYPE_18__*) #1

declare dso_local i32 @qlnx_init_fp(%struct.TYPE_18__*) #1

declare dso_local i32 @qlnx_alloc_mem_load(%struct.TYPE_18__*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @bus_bind_intr(i32, i32, i32) #1

declare dso_local i32 @qlnx_start_queues(%struct.TYPE_18__*) #1

declare dso_local i32 @qlnx_set_rx_mode(%struct.TYPE_18__*) #1

declare dso_local i32 @qlnx_set_link(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @qlnx_vf_device(%struct.TYPE_18__*) #1

declare dso_local i32 @qlnx_link_update(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @qlnx_free_mem_load(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
