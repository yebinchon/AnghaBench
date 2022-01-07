; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pchan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pchan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pchinfo = type { i32, i64, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"m3_pchan_setspeed(dac=%d, speed=%d)\0A\00", align 1
@CDATA_FREQUENCY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @m3_pchan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m3_pchan_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_pchinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sc_pchinfo*
  store %struct.sc_pchinfo* %11, %struct.sc_pchinfo** %7, align 8
  %12 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %7, align 8
  %13 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %12, i32 0, i32 3
  %14 = load %struct.sc_info*, %struct.sc_info** %13, align 8
  store %struct.sc_info* %14, %struct.sc_info** %8, align 8
  %15 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %16 = call i32 @M3_LOCK(%struct.sc_info* %15)
  %17 = load i32, i32* @CHANGE, align 4
  %18 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %7, align 8
  %19 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @M3_DEBUG(i32 %17, i8* %23)
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 15
  %27 = add nsw i32 %26, 24000
  %28 = sdiv i32 %27, 48000
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %3
  %34 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %35 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %7, align 8
  %36 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CDATA_FREQUENCY, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @m3_wr_assp_data(%struct.sc_info* %34, i64 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %7, align 8
  %44 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %46 = call i32 @M3_UNLOCK(%struct.sc_info* %45)
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @M3_LOCK(%struct.sc_info*) #1

declare dso_local i32 @M3_DEBUG(i32, i8*) #1

declare dso_local i32 @m3_wr_assp_data(%struct.sc_info*, i64, i32) #1

declare dso_local i32 @M3_UNLOCK(%struct.sc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
