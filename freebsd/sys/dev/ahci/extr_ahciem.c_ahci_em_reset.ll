; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahci_em_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahci_em_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_enclosure = type { i32, i32 }

@AHCI_EM_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"EM timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_em_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_em_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_enclosure*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ahci_enclosure* @device_get_softc(i32 %7)
  store %struct.ahci_enclosure* %8, %struct.ahci_enclosure** %4, align 8
  %9 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %4, align 8
  %10 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AHCI_EM_RST, align 4
  %13 = call i32 @ATA_OUTL(i32 %11, i32 0, i32 %12)
  store i32 1000, i32* %6, align 4
  br label %14

14:                                               ; preds = %28, %1
  %15 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %4, align 8
  %16 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ATA_INL(i32 %17, i32 0)
  %19 = load i32, i32* @AHCI_EM_RST, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi i1 [ false, %14 ], [ %25, %22 ]
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = call i32 @DELAY(i32 1000)
  br label %14

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %51

36:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %4, align 8
  %40 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ahci_em_setleds(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %37

50:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.ahci_enclosure* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ahci_em_setleds(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
