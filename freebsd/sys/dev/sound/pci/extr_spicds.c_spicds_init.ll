; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_spicds.c_spicds_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_spicds.c_spicds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spicds_info = type { i64, i32, i32, i32, i32 }

@SPICDS_TYPE_AK4524 = common dso_local global i64 0, align 8
@SPICDS_TYPE_AK4528 = common dso_local global i64 0, align 8
@AK4524_POWER = common dso_local global i32 0, align 4
@AK4524_FORMAT = common dso_local global i32 0, align 4
@AK4524_DVC = common dso_local global i32 0, align 4
@AK452X_POWER_PWDA = common dso_local global i32 0, align 4
@AK452X_POWER_PWAD = common dso_local global i32 0, align 4
@AK452X_POWER_PWVR = common dso_local global i32 0, align 4
@AK4524_RESET = common dso_local global i32 0, align 4
@AK452X_RESET_RSDA = common dso_local global i32 0, align 4
@AK452X_RESET_RSAD = common dso_local global i32 0, align 4
@SPICDS_TYPE_WM8770 = common dso_local global i64 0, align 8
@SPICDS_TYPE_AK4358 = common dso_local global i64 0, align 8
@SPICDS_TYPE_AK4381 = common dso_local global i64 0, align 8
@SPICDS_TYPE_AK4396 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spicds_init(%struct.spicds_info* %0) #0 {
  %2 = alloca %struct.spicds_info*, align 8
  store %struct.spicds_info* %0, %struct.spicds_info** %2, align 8
  %3 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %4 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @snd_mtxlock(i32 %5)
  %7 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %8 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SPICDS_TYPE_AK4524, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %14 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SPICDS_TYPE_AK4528, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %12, %1
  %19 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %20 = load i32, i32* @AK4524_POWER, align 4
  %21 = call i32 @spicds_wrcd(%struct.spicds_info* %19, i32 %20, i32 0)
  %22 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %23 = load i32, i32* @AK4524_FORMAT, align 4
  %24 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %25 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @spicds_wrcd(%struct.spicds_info* %22, i32 %23, i32 %26)
  %28 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %29 = load i32, i32* @AK4524_DVC, align 4
  %30 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %31 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @spicds_wrcd(%struct.spicds_info* %28, i32 %29, i32 %32)
  %34 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %35 = load i32, i32* @AK4524_POWER, align 4
  %36 = load i32, i32* @AK452X_POWER_PWDA, align 4
  %37 = load i32, i32* @AK452X_POWER_PWAD, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @AK452X_POWER_PWVR, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @spicds_wrcd(%struct.spicds_info* %34, i32 %35, i32 %40)
  %42 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %43 = load i32, i32* @AK4524_RESET, align 4
  %44 = load i32, i32* @AK452X_RESET_RSDA, align 4
  %45 = load i32, i32* @AK452X_RESET_RSAD, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @spicds_wrcd(%struct.spicds_info* %42, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %18, %12
  %49 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %50 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SPICDS_TYPE_WM8770, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %56 = call i32 @spicds_wrcd(%struct.spicds_info* %55, i32 27, i32 68)
  %57 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %58 = call i32 @spicds_wrcd(%struct.spicds_info* %57, i32 28, i32 11)
  %59 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %60 = call i32 @spicds_wrcd(%struct.spicds_info* %59, i32 29, i32 9)
  %61 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %62 = call i32 @spicds_wrcd(%struct.spicds_info* %61, i32 24, i32 0)
  %63 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %64 = call i32 @spicds_wrcd(%struct.spicds_info* %63, i32 22, i32 290)
  %65 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %66 = call i32 @spicds_wrcd(%struct.spicds_info* %65, i32 23, i32 34)
  %67 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %68 = call i32 @spicds_wrcd(%struct.spicds_info* %67, i32 25, i32 0)
  %69 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %70 = call i32 @spicds_wrcd(%struct.spicds_info* %69, i32 26, i32 0)
  br label %71

71:                                               ; preds = %54, %48
  %72 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %73 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SPICDS_TYPE_AK4358, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %79 = call i32 @spicds_wrcd(%struct.spicds_info* %78, i32 0, i32 7)
  br label %80

80:                                               ; preds = %77, %71
  %81 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %82 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SPICDS_TYPE_AK4381, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %88 = call i32 @spicds_wrcd(%struct.spicds_info* %87, i32 0, i32 143)
  br label %89

89:                                               ; preds = %86, %80
  %90 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %91 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SPICDS_TYPE_AK4396, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %97 = call i32 @spicds_wrcd(%struct.spicds_info* %96, i32 0, i32 7)
  br label %98

98:                                               ; preds = %95, %89
  %99 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %100 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @snd_mtxunlock(i32 %101)
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @spicds_wrcd(%struct.spicds_info*, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
