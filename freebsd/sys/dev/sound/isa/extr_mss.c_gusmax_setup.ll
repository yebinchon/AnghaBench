; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_gusmax_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_gusmax_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { %struct.resource* }
%struct.resource = type { i32 }

@gusmax_setup.irq_bits = internal constant [16 x i8] c"\00\00\00\03\00\02\00\04\00\01\00\05\06\00\00\07", align 16
@gusmax_setup.dma_bits = internal constant [8 x i8] c"\00\01\00\02\00\03\04\05", align 1
@DV_F_DUAL_DMA = common dso_local global i32 0, align 4
@DV_F_DRQ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mss_info*, i32, %struct.resource*)* @gusmax_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gusmax_setup(%struct.mss_info* %0, i32 %1, %struct.resource* %2) #0 {
  %4 = alloca %struct.mss_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.resource* %2, %struct.resource** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = call i32 (...) @splhigh()
  store i32 %13, i32* %10, align 4
  %14 = load %struct.resource*, %struct.resource** %6, align 8
  %15 = call i32 @port_wr(%struct.resource* %14, i32 15, i32 5)
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = call i32 @port_wr(%struct.resource* %16, i32 0, i32 12)
  %18 = load %struct.resource*, %struct.resource** %6, align 8
  %19 = call i32 @port_wr(%struct.resource* %18, i32 11, i32 0)
  %20 = load %struct.resource*, %struct.resource** %6, align 8
  %21 = call i32 @port_wr(%struct.resource* %20, i32 15, i32 0)
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @isa_get_irq(i32 %22)
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* @gusmax_setup.irq_bits, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %8, align 1
  %26 = load i8, i8* %8, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, 64
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %8, align 1
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @isa_get_drq(i32 %30)
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* @gusmax_setup.dma_bits, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %9, align 1
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @device_get_flags(i32 %34)
  %36 = load i32, i32* @DV_F_DUAL_DMA, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @device_get_flags(i32 %41)
  %43 = load i64, i64* @DV_F_DRQ_MASK, align 8
  %44 = and i64 %42, %43
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* @gusmax_setup.dma_bits, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 3
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %9, align 1
  br label %53

53:                                               ; preds = %40, %3
  %54 = load %struct.resource*, %struct.resource** %6, align 8
  %55 = call i32 @port_wr(%struct.resource* %54, i32 0, i32 12)
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = load i8, i8* %9, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, 128
  %60 = call i32 @port_wr(%struct.resource* %56, i32 11, i32 %59)
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = call i32 @port_wr(%struct.resource* %61, i32 0, i32 76)
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = load i8, i8* %8, align 1
  %65 = zext i8 %64 to i32
  %66 = call i32 @port_wr(%struct.resource* %63, i32 11, i32 %65)
  %67 = load %struct.resource*, %struct.resource** %6, align 8
  %68 = call i32 @port_wr(%struct.resource* %67, i32 0, i32 12)
  %69 = load %struct.resource*, %struct.resource** %6, align 8
  %70 = load i8, i8* %9, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 @port_wr(%struct.resource* %69, i32 11, i32 %71)
  %73 = load %struct.resource*, %struct.resource** %6, align 8
  %74 = call i32 @port_wr(%struct.resource* %73, i32 0, i32 76)
  %75 = load %struct.resource*, %struct.resource** %6, align 8
  %76 = load i8, i8* %8, align 1
  %77 = zext i8 %76 to i32
  %78 = call i32 @port_wr(%struct.resource* %75, i32 11, i32 %77)
  %79 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %80 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %79, i32 0, i32 0
  %81 = load %struct.resource*, %struct.resource** %80, align 8
  %82 = call i32 @port_wr(%struct.resource* %81, i32 2, i32 0)
  %83 = load %struct.resource*, %struct.resource** %6, align 8
  %84 = call i32 @port_wr(%struct.resource* %83, i32 0, i32 12)
  %85 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %86 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %85, i32 0, i32 0
  %87 = load %struct.resource*, %struct.resource** %86, align 8
  %88 = call i32 @port_wr(%struct.resource* %87, i32 2, i32 0)
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @splx(i32 %89)
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @port_wr(%struct.resource*, i32, i32) #1

declare dso_local i64 @isa_get_irq(i32) #1

declare dso_local i64 @isa_get_drq(i32) #1

declare dso_local i64 @device_get_flags(i32) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
