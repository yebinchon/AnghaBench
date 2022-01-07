; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64, i64, i64, i32, i32 }

@ICH_REG_GLOB_CNT = common dso_local global i32 0, align 4
@ICH_GLOB_CTL_COLD = common dso_local global i32 0, align 4
@ICH_REG_GLOB_STA = common dso_local global i32 0, align 4
@ICH_GLOB_STA_PCR = common dso_local global i32 0, align 4
@INTEL_VENDORID = common dso_local global i64 0, align 8
@INTEL_82801DB = common dso_local global i64 0, align 8
@INTEL_82801EB = common dso_local global i64 0, align 8
@INTEL_6300ESB = common dso_local global i64 0, align 8
@INTEL_82801FB = common dso_local global i64 0, align 8
@INTEL_82801GB = common dso_local global i64 0, align 8
@ICH_IGNORE_PCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"primary codec not ready!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ICH_GLOB_CTL_PRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @ich_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ich_init(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %5 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %6 = load i32, i32* @ICH_REG_GLOB_CNT, align 4
  %7 = load i32, i32* @ICH_GLOB_CTL_COLD, align 4
  %8 = call i32 @ich_wr(%struct.sc_info* %5, i32 %6, i32 %7, i32 4)
  %9 = call i32 @DELAY(i32 600000)
  %10 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %11 = load i32, i32* @ICH_REG_GLOB_STA, align 4
  %12 = call i32 @ich_rd(%struct.sc_info* %10, i32 %11, i32 4)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ICH_GLOB_STA_PCR, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %1
  %18 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INTEL_VENDORID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %17
  %24 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %25 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INTEL_82801DB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %53, label %29

29:                                               ; preds = %23
  %30 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %31 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @INTEL_82801EB, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %29
  %36 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @INTEL_6300ESB, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %43 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @INTEL_82801FB, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %49 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @INTEL_82801GB, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47, %41, %35, %29, %23
  %54 = load i32, i32* @ICH_IGNORE_PCR, align 4
  %55 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %60 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %53, %47, %17
  br label %64

64:                                               ; preds = %63, %1
  %65 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %66 = load i32, i32* @ICH_REG_GLOB_CNT, align 4
  %67 = load i32, i32* @ICH_GLOB_CTL_COLD, align 4
  %68 = call i32 @ich_wr(%struct.sc_info* %65, i32 %66, i32 %67, i32 4)
  %69 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %70 = call i64 @ich_resetchan(%struct.sc_info* %69, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %74 = call i64 @ich_resetchan(%struct.sc_info* %73, i32 1)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72, %64
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %2, align 4
  br label %90

78:                                               ; preds = %72
  %79 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %80 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %85 = call i64 @ich_resetchan(%struct.sc_info* %84, i32 2)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @ENXIO, align 4
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %83, %78
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %87, %76
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @ich_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ich_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @ich_resetchan(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
