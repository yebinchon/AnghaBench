; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_init_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, i32, i64, i32, i32, %struct.TYPE_2__, i32, i32, %struct.al_eth_ring*, i32, i32, %struct.al_eth_ring* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.al_eth_ring = type { i32, i32, i8*, i32, i32, i32, i32, %struct.al_eth_adapter*, i32 }
%struct.unit_regs = type { i32 }

@AL_UDMA_IOFIC_LEVEL_PRIMARY = common dso_local global i32 0, align 4
@AL_INT_GROUP_C = common dso_local global i32 0, align 4
@AL_INT_GROUP_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*)* @al_eth_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_init_rings(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_eth_ring*, align 8
  %5 = alloca %struct.al_eth_ring*, align 8
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %66, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %69

12:                                               ; preds = %6
  %13 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %13, i32 0, i32 11
  %15 = load %struct.al_eth_ring*, %struct.al_eth_ring** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %15, i64 %17
  store %struct.al_eth_ring* %18, %struct.al_eth_ring** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.al_eth_ring*, %struct.al_eth_ring** %4, align 8
  %21 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.al_eth_ring*, %struct.al_eth_ring** %4, align 8
  %26 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 8
  %27 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %28 = load %struct.al_eth_ring*, %struct.al_eth_ring** %4, align 8
  %29 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %28, i32 0, i32 7
  store %struct.al_eth_adapter* %27, %struct.al_eth_adapter** %29, align 8
  %30 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.al_eth_ring*, %struct.al_eth_ring** %4, align 8
  %34 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.al_eth_ring*, %struct.al_eth_ring** %4, align 8
  %40 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %39, i32 0, i32 5
  %41 = call i32 @al_udma_q_handle_get(i32* %37, i32 %38, i32* %40)
  %42 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.al_eth_ring*, %struct.al_eth_ring** %4, align 8
  %46 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.al_eth_ring*, %struct.al_eth_ring** %4, align 8
  %51 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.unit_regs*
  %56 = load i32, i32* @AL_UDMA_IOFIC_LEVEL_PRIMARY, align 4
  %57 = load i32, i32* @AL_INT_GROUP_C, align 4
  %58 = call i8* @al_udma_iofic_unmask_offset_get(%struct.unit_regs* %55, i32 %56, i32 %57)
  %59 = load %struct.al_eth_ring*, %struct.al_eth_ring** %4, align 8
  %60 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %3, align 4
  %62 = shl i32 1, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.al_eth_ring*, %struct.al_eth_ring** %4, align 8
  %65 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %12
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %6

69:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %130, %69
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %133

76:                                               ; preds = %70
  %77 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %77, i32 0, i32 8
  %79 = load %struct.al_eth_ring*, %struct.al_eth_ring** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %79, i64 %81
  store %struct.al_eth_ring* %82, %struct.al_eth_ring** %5, align 8
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %85 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %90 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 8
  %91 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %92 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %93 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %92, i32 0, i32 7
  store %struct.al_eth_adapter* %91, %struct.al_eth_adapter** %93, align 8
  %94 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %98 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  %99 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %100 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %104 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %103, i32 0, i32 5
  %105 = call i32 @al_udma_q_handle_get(i32* %101, i32 %102, i32* %104)
  %106 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %107 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %110 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %112 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %115 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %117 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to %struct.unit_regs*
  %120 = load i32, i32* @AL_UDMA_IOFIC_LEVEL_PRIMARY, align 4
  %121 = load i32, i32* @AL_INT_GROUP_B, align 4
  %122 = call i8* @al_udma_iofic_unmask_offset_get(%struct.unit_regs* %119, i32 %120, i32 %121)
  %123 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %124 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %3, align 4
  %126 = shl i32 1, %125
  %127 = xor i32 %126, -1
  %128 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %129 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %76
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %70

133:                                              ; preds = %70
  ret void
}

declare dso_local i32 @al_udma_q_handle_get(i32*, i32, i32*) #1

declare dso_local i8* @al_udma_iofic_unmask_offset_get(%struct.unit_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
