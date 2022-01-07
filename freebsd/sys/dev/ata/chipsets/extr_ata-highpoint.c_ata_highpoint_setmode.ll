; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-highpoint.c_ata_highpoint_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-highpoint.c_ata_highpoint_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.ata_pci_controller = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ata_channel = type { i32 }

@ata_highpoint_setmode.timings33 = internal constant [15 x [4 x %struct.TYPE_5__]] [[4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1087416234, i32 110186071, i32 218275166, i32 180483210 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1087416227, i32 110186051, i32 218275110, i32 180483173 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1087416147, i32 105991731, i32 209886374, i32 176288852 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1086891842, i32 105991714, i32 209886340, i32 176288835 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1086891825, i32 105991713, i32 209886306, i32 176288834 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 550021015, i32 642862743, i32 746754606, i32 578847466 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 550020914, i32 642862643, i32 746754662, i32 578847316 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 550020913, i32 642862625, i32 746754658, i32 578847298 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 281585457, i32 374427185, i32 478321762, i32 303596266 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 281782065, i32 374165041, i32 479894626, i32 303333972 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 281716529, i32 373902897, i32 479370338, i32 302809666 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 282044209, i32 376262193, i32 479108194, i32 311198274 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 281650993, i32 373640753, i32 478846050, i32 313295426 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 0, i32 373640753, i32 478846050, i32 310673986 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [4 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 0, i32 0, i32 478583906, i32 310411842 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer]], align 16
@ATA_UDMA5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_highpoint_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_highpoint_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_pci_controller*, align 8
  %9 = alloca %struct.ata_channel*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %15, %struct.ata_pci_controller** %8, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @device_get_softc(i32 %16)
  %18 = bitcast i8* %17 to %struct.ata_channel*
  store %struct.ata_channel* %18, %struct.ata_channel** %9, align 8
  %19 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %20 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %27 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @min(i32 %25, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ata_highpoint_check_80pin(i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ATA_UDMA5, align 4
  %37 = call i32 @min(i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = shl i32 %39, 2
  %41 = add nsw i32 64, %40
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @ata_mode2idx(i32 %42)
  %44 = getelementptr inbounds [15 x [4 x %struct.TYPE_5__]], [15 x [4 x %struct.TYPE_5__]]* @ata_highpoint_setmode.timings33, i64 0, i64 %43
  %45 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %46 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %44, i64 0, i64 %49
  %51 = bitcast %struct.TYPE_5__* %50 to { i64, i64 }*
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 16
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @pci_write_config(i32 %38, i32 %41, i64 %53, i64 %55, i32 4)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ata_highpoint_check_80pin(i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i64, i64, i32) #1

declare dso_local i64 @ata_mode2idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
