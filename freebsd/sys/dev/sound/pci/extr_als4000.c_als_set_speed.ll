; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_set_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, i64, i32, %struct.sc_info* }
%struct.sc_info = type { %struct.sc_chinfo, %struct.sc_chinfo }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@ALS_ESP_SAMPLE_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"speed locked at %d (tried %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_chinfo*)* @als_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @als_set_speed(%struct.sc_chinfo* %0) #0 {
  %2 = alloca %struct.sc_chinfo*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca %struct.sc_chinfo*, align 8
  store %struct.sc_chinfo* %0, %struct.sc_chinfo** %2, align 8
  %5 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %6 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %5, i32 0, i32 3
  %7 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  store %struct.sc_info* %7, %struct.sc_info** %3, align 8
  %8 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %9 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCMDIR_PLAY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %15 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %14, i32 0, i32 1
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %18 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %17, i32 0, i32 0
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi %struct.sc_chinfo* [ %15, %13 ], [ %18, %16 ]
  store %struct.sc_chinfo* %20, %struct.sc_chinfo** %4, align 8
  %21 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %22 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %27 = load i32, i32* @ALS_ESP_SAMPLE_RATE, align 4
  %28 = call i32 @als_esp_wr(%struct.sc_info* %26, i32 %27)
  %29 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %30 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %31 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 8
  %34 = call i32 @als_esp_wr(%struct.sc_info* %29, i32 %33)
  %35 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %36 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %37 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 255
  %40 = call i32 @als_esp_wr(%struct.sc_info* %35, i32 %39)
  br label %50

41:                                               ; preds = %19
  %42 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %43 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %46 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = call i32 @DEB(i32 %48)
  br label %50

50:                                               ; preds = %41, %25
  ret void
}

declare dso_local i32 @als_esp_wr(%struct.sc_info*, i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
