; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_sx4_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_sx4_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_channel*, i32 (%struct.ata_channel*)* }
%struct.ata_channel = type { i32 }

@ATA_PDC_CHN_OFFSET = common dso_local global i32 0, align 4
@ATA_PDC_HPKT_OFFSET = common dso_local global i64 0, align 8
@ATA_PDC_APKT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ata_promise_sx4_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_promise_sx4_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %8, %struct.ata_pci_controller** %3, align 8
  %9 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %10 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ATA_INL(i32 %11, i32 787584)
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %149, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %16 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %152

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  %23 = shl i32 1, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %19
  %27 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %28 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.ata_channel*, %struct.ata_channel** %33, align 8
  store %struct.ata_channel* %34, %struct.ata_channel** %4, align 8
  %35 = icmp ne %struct.ata_channel* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %38 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (%struct.ata_channel*)*, i32 (%struct.ata_channel*)** %43, align 8
  %45 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %46 = call i32 %44(%struct.ata_channel* %45)
  br label %47

47:                                               ; preds = %36, %26
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 5
  %52 = shl i32 1, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %48
  %56 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %57 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.ata_channel*, %struct.ata_channel** %62, align 8
  store %struct.ata_channel* %63, %struct.ata_channel** %4, align 8
  %64 = icmp ne %struct.ata_channel* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %55
  %66 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %67 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %68 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @ATA_PDC_HPKT_OFFSET, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @htole32(i64 %74)
  %76 = call i32 @ata_promise_queue_hpkt(%struct.ata_pci_controller* %66, i32 %75)
  br label %77

77:                                               ; preds = %65, %55
  br label %78

78:                                               ; preds = %77, %48
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 9
  %82 = shl i32 1, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %78
  %86 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %87 = call i32 @ata_promise_next_hpkt(%struct.ata_pci_controller* %86)
  %88 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %89 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load %struct.ata_channel*, %struct.ata_channel** %94, align 8
  store %struct.ata_channel* %95, %struct.ata_channel** %4, align 8
  %96 = icmp ne %struct.ata_channel* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %85
  %98 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %99 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32 (%struct.ata_channel*)*, i32 (%struct.ata_channel*)** %104, align 8
  %106 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %107 = call i32 %105(%struct.ata_channel* %106)
  br label %108

108:                                              ; preds = %97, %85
  br label %109

109:                                              ; preds = %108, %78
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 13
  %113 = shl i32 1, %112
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %109
  %117 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %118 = call i32 @ata_promise_next_hpkt(%struct.ata_pci_controller* %117)
  %119 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %120 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load %struct.ata_channel*, %struct.ata_channel** %125, align 8
  store %struct.ata_channel* %126, %struct.ata_channel** %4, align 8
  %127 = icmp ne %struct.ata_channel* %126, null
  br i1 %127, label %128, label %147

128:                                              ; preds = %116
  %129 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %130 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %133 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 7
  %136 = add nsw i32 787008, %135
  %137 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %138 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ATA_PDC_CHN_OFFSET, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* @ATA_PDC_APKT_OFFSET, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @htole32(i64 %144)
  %146 = call i32 @ATA_OUTL(i32 %131, i32 %136, i32 %145)
  br label %147

147:                                              ; preds = %128, %116
  br label %148

148:                                              ; preds = %147, %109
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %13

152:                                              ; preds = %13
  ret void
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ata_promise_queue_hpkt(%struct.ata_pci_controller*, i32) #1

declare dso_local i32 @htole32(i64) #1

declare dso_local i32 @ata_promise_next_hpkt(%struct.ata_pci_controller*) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
