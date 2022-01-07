; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.sc_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@envy24ht_speedtab = common dso_local global %struct.TYPE_4__* null, align 8
@ENVY24HT_MT_RATE = common dso_local global i32 0, align 4
@ENVY24HT_CCSM_SCFG_XIN2 = common dso_local global i32 0, align 4
@ENVY24HT_MT_RATE_192000 = common dso_local global i64 0, align 8
@ENVY24HT_MT_RATE_176400 = common dso_local global i64 0, align 8
@ENVY24HT_MT_I2S = common dso_local global i32 0, align 4
@ENVY24HT_MT_I2S_MLR128 = common dso_local global i64 0, align 8
@ENVY24HT_MT_RATE_MASK = common dso_local global i64 0, align 8
@ENVY24HT_MT_RATE_SPDIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sc_info*, i64)* @envy24ht_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @envy24ht_setspeed(%struct.sc_info* %0, i64 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %27, %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @envy24ht_speedtab, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @envy24ht_speedtab, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %30

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

30:                                               ; preds = %25, %8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @envy24ht_speedtab, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp slt i64 %37, 16
  br i1 %38, label %39, label %119

39:                                               ; preds = %30
  %40 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %41 = load i32, i32* @ENVY24HT_MT_RATE, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @envy24ht_wrmt(%struct.sc_info* %40, i32 %41, i64 %42, i32 1)
  %44 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ENVY24HT_CCSM_SCFG_XIN2, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @ENVY24HT_MT_RATE_192000, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52, %39
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @ENVY24HT_MT_RATE_176400, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56, %52
  %61 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %62 = load i32, i32* @ENVY24HT_MT_I2S, align 4
  %63 = call i64 @envy24ht_rdmt(%struct.sc_info* %61, i32 %62, i32 1)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* @ENVY24HT_MT_I2S_MLR128, align 8
  %65 = load i64, i64* %6, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %6, align 8
  %67 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %68 = load i32, i32* @ENVY24HT_MT_I2S, align 4
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @envy24ht_wrmt(%struct.sc_info* %67, i32 %68, i64 %69, i32 1)
  br label %83

71:                                               ; preds = %56
  %72 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %73 = load i32, i32* @ENVY24HT_MT_I2S, align 4
  %74 = call i64 @envy24ht_rdmt(%struct.sc_info* %72, i32 %73, i32 1)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* @ENVY24HT_MT_I2S_MLR128, align 8
  %76 = xor i64 %75, -1
  %77 = load i64, i64* %6, align 8
  %78 = and i64 %77, %76
  store i64 %78, i64* %6, align 8
  %79 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %80 = load i32, i32* @ENVY24HT_MT_I2S, align 4
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @envy24ht_wrmt(%struct.sc_info* %79, i32 %80, i64 %81, i32 1)
  br label %83

83:                                               ; preds = %71, %60
  %84 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %85 = load i32, i32* @ENVY24HT_MT_RATE, align 4
  %86 = call i64 @envy24ht_rdmt(%struct.sc_info* %84, i32 %85, i32 1)
  store i64 %86, i64* %5, align 8
  %87 = load i64, i64* @ENVY24HT_MT_RATE_MASK, align 8
  %88 = load i64, i64* %5, align 8
  %89 = and i64 %88, %87
  store i64 %89, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %109, %83
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @envy24ht_speedtab, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %96, 16
  br i1 %97, label %98, label %112

98:                                               ; preds = %90
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @envy24ht_speedtab, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %112

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %90

112:                                              ; preds = %107, %90
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @envy24ht_speedtab, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %4, align 8
  br label %120

119:                                              ; preds = %30
  store i64 0, i64* %4, align 8
  br label %120

120:                                              ; preds = %119, %112
  %121 = load i64, i64* %4, align 8
  ret i64 %121
}

declare dso_local i32 @envy24ht_wrmt(%struct.sc_info*, i32, i64, i32) #1

declare dso_local i64 @envy24ht_rdmt(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
