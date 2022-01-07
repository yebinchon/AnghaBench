; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_powerup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, i32, i32 }

@HDA_CMD_POWER_STATE_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_powerup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_powerup(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %4 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %5 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %8 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HDA_CMD_POWER_STATE_D0, align 4
  %11 = call i32 @HDA_CMD_SET_POWER_STATE(i32 0, i32 %9, i32 %10)
  %12 = call i32 @hda_command(i32 %6, i32 %11)
  %13 = call i32 @DELAY(i32 100)
  %14 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %15 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %20 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %25 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @HDA_CMD_POWER_STATE_D0, align 4
  %29 = call i32 @HDA_CMD_SET_POWER_STATE(i32 0, i32 %27, i32 %28)
  %30 = call i32 @hda_command(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %17

34:                                               ; preds = %17
  %35 = call i32 @DELAY(i32 1000)
  ret void
}

declare dso_local i32 @hda_command(i32, i32) #1

declare dso_local i32 @HDA_CMD_SET_POWER_STATE(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
