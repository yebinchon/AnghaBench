; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb_info = type { i32, i8*, i8*, i8* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sb_info*, i32)* @sb_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_alloc_resources(%struct.sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sb_info* %0, %struct.sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %8 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %7, i32 0, i32 3
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SYS_RES_IOPORT, align 4
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i8* @bus_alloc_resource_any(i32 %12, i32 %13, i32* %6, i32 %14)
  %16 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %17 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  br label %18

18:                                               ; preds = %11, %2
  store i32 0, i32* %6, align 4
  %19 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %20 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SYS_RES_IRQ, align 4
  %26 = load i32, i32* @RF_ACTIVE, align 4
  %27 = call i8* @bus_alloc_resource_any(i32 %24, i32 %25, i32* %6, i32 %26)
  %28 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %29 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %23, %18
  store i32 0, i32* %6, align 4
  %31 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %32 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SYS_RES_DRQ, align 4
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call i8* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %6, i32 %38)
  %40 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %41 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %44 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %49 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %54 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %59 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @rman_get_start(i8* %60)
  %62 = call i32 @isa_dma_acquire(i32 %61)
  %63 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %64 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @rman_get_start(i8* %65)
  %67 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %68 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @isa_dmainit(i32 %66, i32 %69)
  store i32 0, i32* %3, align 4
  br label %73

71:                                               ; preds = %52, %47, %42
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %57
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @isa_dma_acquire(i32) #1

declare dso_local i32 @rman_get_start(i8*) #1

declare dso_local i32 @isa_dmainit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
