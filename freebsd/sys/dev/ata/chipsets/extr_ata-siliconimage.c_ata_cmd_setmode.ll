; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-siliconimage.c_ata_cmd_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-siliconimage.c_ata_cmd_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_channel = type { i32 }

@ata_cmd_setmode.piotimings = internal constant [8 x i32] [i32 169, i32 87, i32 68, i32 50, i32 63, i32 135, i32 50, i32 63], align 16
@ata_cmd_setmode.udmatimings = internal constant [6 x [2 x i32]] [[2 x i32] [i32 49, i32 194], [2 x i32] [i32 33, i32 130], [2 x i32] [i32 17, i32 66], [2 x i32] [i32 37, i32 138], [2 x i32] [i32 21, i32 74], [2 x i32] [i32 5, i32 10]], align 16
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_cmd_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_cmd_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_pci_controller*, align 8
  %9 = alloca %struct.ata_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @device_get_softc(i32 %17)
  %19 = bitcast i8* %18 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %19, %struct.ata_pci_controller** %8, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @device_get_softc(i32 %20)
  %22 = bitcast i8* %21 to %struct.ata_channel*
  store %struct.ata_channel* %22, %struct.ata_channel** %9, align 8
  %23 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %24 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 1
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = shl i32 %32, 1
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 7, %34 ]
  %37 = add nsw i32 84, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %39 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 123, i32 115
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %46 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @min(i32 %44, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ATA_UDMA0, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %35
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @pci_read_config(i32 %55, i32 %56, i32 1)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 53, i32 202
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %14, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ATA_MODE_MASK, align 4
  %67 = and i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* @ata_cmd_setmode.udmatimings, i64 0, i64 %68
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %69, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @pci_write_config(i32 %76, i32 %77, i32 %78, i32 1)
  %80 = load i32, i32* @ATA_PIO4, align 4
  store i32 %80, i32* %13, align 4
  br label %95

81:                                               ; preds = %35
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @pci_read_config(i32 %84, i32 %85, i32 1)
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 53, i32 202
  %91 = xor i32 %90, -1
  %92 = and i32 %86, %91
  %93 = call i32 @pci_write_config(i32 %82, i32 %83, i32 %92, i32 1)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %81, %54
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @ata_mode2idx(i32 %98)
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* @ata_cmd_setmode.piotimings, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @pci_write_config(i32 %96, i32 %97, i32 %101, i32 1)
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i64 @ata_mode2idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
