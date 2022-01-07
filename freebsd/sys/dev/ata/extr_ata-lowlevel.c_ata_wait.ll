; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-lowlevel.c_ata_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-lowlevel.c_ata_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32 }

@ATA_ALTSTAT = common dso_local global i32 0, align 4
@ATA_DRIVE = common dso_local global i32 0, align 4
@ATA_D_IBM = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_channel*, i32, i32)* @ata_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_wait(%struct.ata_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_channel* %0, %struct.ata_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32 @DELAY(i32 1)
  br label %11

11:                                               ; preds = %48, %20, %3
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 1000000
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %16 = load i32, i32* @ATA_ALTSTAT, align 4
  %17 = call i32 @ATA_IDX_INB(%struct.ata_channel* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %22 = load i32, i32* @ATA_DRIVE, align 4
  %23 = load i32, i32* @ATA_D_IBM, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ATA_DEV(i32 %24)
  %26 = or i32 %23, %25
  %27 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %21, i32 %22, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1000
  store i32 %29, i32* %9, align 4
  %30 = call i32 @DELAY(i32 1000)
  br label %11

31:                                               ; preds = %14
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ATA_S_BUSY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %49

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 1000
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1000
  store i32 %42, i32* %9, align 4
  %43 = call i32 @DELAY(i32 1000)
  br label %48

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 10
  store i32 %46, i32* %9, align 4
  %47 = call i32 @DELAY(i32 10)
  br label %48

48:                                               ; preds = %44, %40
  br label %11

49:                                               ; preds = %36, %11
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 1000000
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 -2, i32* %4, align 4
  br label %82

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @ATA_S_ERROR, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %4, align 4
  br label %82

60:                                               ; preds = %53
  %61 = call i32 @DELAY(i32 1)
  store i32 5000, i32* %9, align 4
  br label %62

62:                                               ; preds = %79, %60
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %9, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %68 = load i32, i32* @ATA_ALTSTAT, align 4
  %69 = call i32 @ATA_IDX_INB(%struct.ata_channel* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @ATA_S_ERROR, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %4, align 4
  br label %82

79:                                               ; preds = %66
  %80 = call i32 @DELAY(i32 10)
  br label %62

81:                                               ; preds = %62
  store i32 -3, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %75, %56, %52
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_DEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
