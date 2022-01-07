; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_register_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_register_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@NIC_PF_INTR_ID_MBOX0 = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@nic_mbx0_intr_handler = common dso_local global i32 0, align 4
@NIC_PF_INTR_ID_MBOX1 = common dso_local global i32 0, align 4
@nic_mbx1_intr_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicpf*)* @nic_register_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_register_interrupts(%struct.nicpf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  %7 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %8 = call i32 @nic_enable_msix(%struct.nicpf* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %138

13:                                               ; preds = %1
  %14 = load i32, i32* @NIC_PF_INTR_ID_MBOX0, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %18 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SYS_RES_IRQ, align 4
  %21 = load i32, i32* @RF_SHAREABLE, align 4
  %22 = load i32, i32* @RF_ACTIVE, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @bus_alloc_resource_any(i32 %19, i32 %20, i32* %5, i32 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %27 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32* %25, i32** %32, align 8
  %33 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %34 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %13
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %6, align 4
  br label %134

44:                                               ; preds = %13
  %45 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %46 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %49 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @INTR_MPSAFE, align 4
  %57 = load i32, i32* @INTR_TYPE_MISC, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @nic_mbx0_intr_handler, align 4
  %60 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %61 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %62 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @bus_setup_intr(i32 %47, i32* %55, i32 %58, i32* null, i32 %59, %struct.nicpf* %60, i32* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %44
  br label %134

72:                                               ; preds = %44
  %73 = load i32, i32* @NIC_PF_INTR_ID_MBOX1, align 4
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %77 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SYS_RES_IRQ, align 4
  %80 = load i32, i32* @RF_SHAREABLE, align 4
  %81 = load i32, i32* @RF_ACTIVE, align 4
  %82 = or i32 %80, %81
  %83 = call i8* @bus_alloc_resource_any(i32 %78, i32 %79, i32* %5, i32 %82)
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %86 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32* %84, i32** %91, align 8
  %92 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %93 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %72
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %6, align 4
  br label %134

103:                                              ; preds = %72
  %104 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %105 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %108 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* @INTR_MPSAFE, align 4
  %116 = load i32, i32* @INTR_TYPE_MISC, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @nic_mbx1_intr_handler, align 4
  %119 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %120 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %121 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = call i32 @bus_setup_intr(i32 %106, i32* %114, i32 %117, i32* null, i32 %118, %struct.nicpf* %119, i32* %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %103
  br label %134

131:                                              ; preds = %103
  %132 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %133 = call i32 @nic_enable_mbx_intr(%struct.nicpf* %132)
  store i32 0, i32* %2, align 4
  br label %138

134:                                              ; preds = %130, %101, %71, %42
  %135 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %136 = call i32 @nic_free_all_interrupts(%struct.nicpf* %135)
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %131, %11
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @nic_enable_msix(%struct.nicpf*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.nicpf*, i32*) #1

declare dso_local i32 @nic_enable_mbx_intr(%struct.nicpf*) #1

declare dso_local i32 @nic_free_all_interrupts(%struct.nicpf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
