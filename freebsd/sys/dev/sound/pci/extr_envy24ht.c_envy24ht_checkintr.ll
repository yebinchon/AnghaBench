; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_checkintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_checkintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@ENVY24HT_MT_INT_STAT = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ENVY24HT_MT_INT_PSTAT = common dso_local global i32 0, align 4
@ENVY24HT_MT_INT_RSTAT = common dso_local global i32 0, align 4
@ENVY24HT_MT_INT_MASK = common dso_local global i32 0, align 4
@ENVY24HT_MT_INT_PMASK = common dso_local global i32 0, align 4
@ENVY24HT_MT_INT_RMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, i32)* @envy24ht_checkintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24ht_checkintr(%struct.sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %10 = load i32, i32* @ENVY24HT_MT_INT_STAT, align 4
  %11 = call i32 @envy24ht_rdmt(%struct.sc_info* %9, i32 %10, i32 1)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PCMDIR_PLAY, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ENVY24HT_MT_INT_PSTAT, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  %21 = load i32, i32* @ENVY24HT_MT_INT_RSTAT, align 4
  %22 = xor i32 %21, -1
  store i32 %22, i32* %5, align 4
  %23 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %24 = call i32 @envy24ht_wrmt(%struct.sc_info* %23, i32 26, i32 1, i32 1)
  %25 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %26 = load i32, i32* @ENVY24HT_MT_INT_STAT, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @ENVY24HT_MT_INT_PSTAT, align 4
  %31 = or i32 %29, %30
  %32 = or i32 %31, 8
  %33 = call i32 @envy24ht_wrmt(%struct.sc_info* %25, i32 %26, i32 %32, i32 1)
  %34 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %35 = load i32, i32* @ENVY24HT_MT_INT_MASK, align 4
  %36 = call i32 @envy24ht_rdmt(%struct.sc_info* %34, i32 %35, i32 1)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %38 = load i32, i32* @ENVY24HT_MT_INT_MASK, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ENVY24HT_MT_INT_PMASK, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @envy24ht_wrmt(%struct.sc_info* %37, i32 %38, i32 %41, i32 1)
  br label %43

43:                                               ; preds = %20, %15
  br label %70

44:                                               ; preds = %2
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @ENVY24HT_MT_INT_RSTAT, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load i32, i32* @ENVY24HT_MT_INT_PSTAT, align 4
  %51 = xor i32 %50, -1
  store i32 %51, i32* %5, align 4
  %52 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %53 = load i32, i32* @ENVY24HT_MT_INT_STAT, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @ENVY24HT_MT_INT_RSTAT, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @envy24ht_wrmt(%struct.sc_info* %52, i32 %53, i32 %58, i32 1)
  %60 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %61 = load i32, i32* @ENVY24HT_MT_INT_MASK, align 4
  %62 = call i32 @envy24ht_rdmt(%struct.sc_info* %60, i32 %61, i32 1)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %64 = load i32, i32* @ENVY24HT_MT_INT_MASK, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ENVY24HT_MT_INT_RMASK, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @envy24ht_wrmt(%struct.sc_info* %63, i32 %64, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %49, %44
  br label %70

70:                                               ; preds = %69, %43
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @envy24ht_rdmt(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @envy24ht_wrmt(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
