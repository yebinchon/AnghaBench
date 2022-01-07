; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.sc_info = type { i32 }

@ENVY24_MT_RATE_SPDIF = common dso_local global i64 0, align 8
@envy24_speedtab = common dso_local global %struct.TYPE_2__* null, align 8
@ENVY24_MT_RATE = common dso_local global i32 0, align 4
@ENVY24_MT_RATE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sc_info*, i64)* @envy24_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @envy24_setspeed(%struct.sc_info* %0, i64 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* @ENVY24_MT_RATE_SPDIF, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %12 = call i32 @envy24_slavecd(%struct.sc_info* %11)
  br label %43

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %33, %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envy24_speedtab, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envy24_speedtab, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %36

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %14

36:                                               ; preds = %31, %14
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envy24_speedtab, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %36, %9
  %44 = load i64, i64* %5, align 8
  %45 = icmp slt i64 %44, 16
  br i1 %45, label %46, label %86

46:                                               ; preds = %43
  %47 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %48 = load i32, i32* @ENVY24_MT_RATE, align 4
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @envy24_wrmt(%struct.sc_info* %47, i32 %48, i64 %49, i32 1)
  %51 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %52 = load i32, i32* @ENVY24_MT_RATE, align 4
  %53 = call i64 @envy24_rdmt(%struct.sc_info* %51, i32 %52, i32 1)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* @ENVY24_MT_RATE_MASK, align 8
  %55 = load i64, i64* %5, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %76, %46
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envy24_speedtab, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 16
  br i1 %64, label %65, label %79

65:                                               ; preds = %57
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envy24_speedtab, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %79

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %57

79:                                               ; preds = %74, %57
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envy24_speedtab, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %4, align 8
  br label %87

86:                                               ; preds = %43
  store i64 0, i64* %4, align 8
  br label %87

87:                                               ; preds = %86, %79
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

declare dso_local i32 @envy24_slavecd(%struct.sc_info*) #1

declare dso_local i32 @envy24_wrmt(%struct.sc_info*, i32, i64, i32) #1

declare dso_local i64 @envy24_rdmt(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
