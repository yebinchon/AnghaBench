; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-lowlevel.c_ata_generic_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-lowlevel.c_ata_generic_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32 }

@ATA_ALTSTAT = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_generic_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_generic_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ata_channel* @device_get_softc(i32 %5)
  store %struct.ata_channel* %6, %struct.ata_channel** %4, align 8
  %7 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %8 = load i32, i32* @ATA_ALTSTAT, align 4
  %9 = call i32 @ATA_IDX_INB(%struct.ata_channel* %7, i32 %8)
  %10 = load i32, i32* @ATA_S_BUSY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = call i32 @DELAY(i32 100)
  %15 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %16 = load i32, i32* @ATA_ALTSTAT, align 4
  %17 = call i32 @ATA_IDX_INB(%struct.ata_channel* %15, i32 %16)
  %18 = load i32, i32* @ATA_S_BUSY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %24

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %1
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %21
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
