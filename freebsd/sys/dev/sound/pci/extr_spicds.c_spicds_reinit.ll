; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_spicds.c_spicds_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_spicds.c_spicds_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spicds_info = type { i64, i32, i32, i32 }

@SPICDS_TYPE_WM8770 = common dso_local global i64 0, align 8
@AK4524_RESET = common dso_local global i32 0, align 4
@AK4524_FORMAT = common dso_local global i32 0, align 4
@AK4524_DVC = common dso_local global i32 0, align 4
@AK452X_RESET_RSDA = common dso_local global i32 0, align 4
@AK452X_RESET_RSAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spicds_reinit(%struct.spicds_info* %0) #0 {
  %2 = alloca %struct.spicds_info*, align 8
  store %struct.spicds_info* %0, %struct.spicds_info** %2, align 8
  %3 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %4 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @snd_mtxlock(i32 %5)
  %7 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %8 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SPICDS_TYPE_WM8770, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %14 = load i32, i32* @AK4524_RESET, align 4
  %15 = call i32 @spicds_wrcd(%struct.spicds_info* %13, i32 %14, i32 0)
  %16 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %17 = load i32, i32* @AK4524_FORMAT, align 4
  %18 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %19 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @spicds_wrcd(%struct.spicds_info* %16, i32 %17, i32 %20)
  %22 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %23 = load i32, i32* @AK4524_DVC, align 4
  %24 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %25 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @spicds_wrcd(%struct.spicds_info* %22, i32 %23, i32 %26)
  %28 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %29 = load i32, i32* @AK4524_RESET, align 4
  %30 = load i32, i32* @AK452X_RESET_RSDA, align 4
  %31 = load i32, i32* @AK452X_RESET_RSAD, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @spicds_wrcd(%struct.spicds_info* %28, i32 %29, i32 %32)
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %12
  %36 = load %struct.spicds_info*, %struct.spicds_info** %2, align 8
  %37 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @snd_mtxunlock(i32 %38)
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
