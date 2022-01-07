; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_rom2cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_rom2cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.cfg_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sc_info = type { i32 }

@ENVY24_E2PROM_SIZE = common dso_local global i32 0, align 4
@ENVY24_E2PROM_GPIODIR = common dso_local global i32 0, align 4
@M_ENVY24 = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENVY24_E2PROM_SUBVENDOR = common dso_local global i32 0, align 4
@ENVY24_E2PROM_SUBDEVICE = common dso_local global i32 0, align 4
@ENVY24_E2PROM_SCFG = common dso_local global i32 0, align 4
@ENVY24_E2PROM_ACL = common dso_local global i32 0, align 4
@ENVY24_E2PROM_I2S = common dso_local global i32 0, align 4
@ENVY24_E2PROM_SPDIF = common dso_local global i32 0, align 4
@ENVY24_E2PROM_GPIOMASK = common dso_local global i32 0, align 4
@ENVY24_E2PROM_GPIOSTATE = common dso_local global i32 0, align 4
@cfg_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfg_info* (%struct.sc_info*)* @envy24_rom2cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfg_info* @envy24_rom2cfg(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.cfg_info*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca %struct.cfg_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %7 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %8 = load i32, i32* @ENVY24_E2PROM_SIZE, align 4
  %9 = call i32 @envy24_rdrom(%struct.sc_info* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ENVY24_E2PROM_GPIODIR, align 4
  %12 = add nsw i32 %11, 1
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.cfg_info* null, %struct.cfg_info** %2, align 8
  br label %151

15:                                               ; preds = %1
  %16 = load i32, i32* @M_ENVY24, align 4
  %17 = load i32, i32* @M_NOWAIT, align 4
  %18 = call %struct.cfg_info* @malloc(i32 48, i32 %16, i32 %17)
  store %struct.cfg_info* %18, %struct.cfg_info** %4, align 8
  %19 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %20 = icmp eq %struct.cfg_info* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store %struct.cfg_info* null, %struct.cfg_info** %2, align 8
  br label %151

22:                                               ; preds = %15
  %23 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %24 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %26 = load i32, i32* @ENVY24_E2PROM_SUBVENDOR, align 4
  %27 = call i32 @envy24_rdrom(%struct.sc_info* %25, i32 %26)
  %28 = shl i32 %27, 8
  %29 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %30 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %32 = load i32, i32* @ENVY24_E2PROM_SUBVENDOR, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @envy24_rdrom(%struct.sc_info* %31, i32 %33)
  %35 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %36 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %40 = load i32, i32* @ENVY24_E2PROM_SUBDEVICE, align 4
  %41 = call i32 @envy24_rdrom(%struct.sc_info* %39, i32 %40)
  %42 = shl i32 %41, 8
  %43 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %44 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %46 = load i32, i32* @ENVY24_E2PROM_SUBDEVICE, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @envy24_rdrom(%struct.sc_info* %45, i32 %47)
  %49 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %50 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %54 = load i32, i32* @ENVY24_E2PROM_SCFG, align 4
  %55 = call i32 @envy24_rdrom(%struct.sc_info* %53, i32 %54)
  %56 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %57 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %59 = load i32, i32* @ENVY24_E2PROM_ACL, align 4
  %60 = call i32 @envy24_rdrom(%struct.sc_info* %58, i32 %59)
  %61 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %62 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %64 = load i32, i32* @ENVY24_E2PROM_I2S, align 4
  %65 = call i32 @envy24_rdrom(%struct.sc_info* %63, i32 %64)
  %66 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %67 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %69 = load i32, i32* @ENVY24_E2PROM_SPDIF, align 4
  %70 = call i32 @envy24_rdrom(%struct.sc_info* %68, i32 %69)
  %71 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %72 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %74 = load i32, i32* @ENVY24_E2PROM_GPIOMASK, align 4
  %75 = call i32 @envy24_rdrom(%struct.sc_info* %73, i32 %74)
  %76 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %77 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %79 = load i32, i32* @ENVY24_E2PROM_GPIOSTATE, align 4
  %80 = call i32 @envy24_rdrom(%struct.sc_info* %78, i32 %79)
  %81 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %82 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 4
  %83 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %84 = load i32, i32* @ENVY24_E2PROM_GPIODIR, align 4
  %85 = call i32 @envy24_rdrom(%struct.sc_info* %83, i32 %84)
  %86 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %87 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %130, %22
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %88
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br label %104

104:                                              ; preds = %96, %88
  %105 = phi i1 [ true, %88 ], [ %103, %96 ]
  br i1 %105, label %106, label %133

106:                                              ; preds = %104
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %114 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %106
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %125 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %133

129:                                              ; preds = %117, %106
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %88

133:                                              ; preds = %128, %104
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %141 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %140, i32 0, i32 11
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_table, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  %149 = getelementptr inbounds %struct.cfg_info, %struct.cfg_info* %148, i32 0, i32 10
  store i32 %147, i32* %149, align 4
  %150 = load %struct.cfg_info*, %struct.cfg_info** %4, align 8
  store %struct.cfg_info* %150, %struct.cfg_info** %2, align 8
  br label %151

151:                                              ; preds = %133, %21, %14
  %152 = load %struct.cfg_info*, %struct.cfg_info** %2, align 8
  ret %struct.cfg_info* %152
}

declare dso_local i32 @envy24_rdrom(%struct.sc_info*, i32) #1

declare dso_local %struct.cfg_info* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
