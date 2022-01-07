; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb16_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb16_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb_info = type { i8*, i8*, i32, i8*, i8* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@SD_F_SIMPLEX = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sb_info*, i32)* @sb16_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb16_alloc_resources(%struct.sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sb_info* %0, %struct.sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %8 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %7, i32 0, i32 4
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SYS_RES_IOPORT, align 4
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i8* @bus_alloc_resource_any(i32 %12, i32 %13, i32* %6, i32 %14)
  %16 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %17 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  br label %18

18:                                               ; preds = %11, %2
  store i32 0, i32* %6, align 4
  %19 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %20 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SYS_RES_IRQ, align 4
  %26 = load i32, i32* @RF_ACTIVE, align 4
  %27 = call i8* @bus_alloc_resource_any(i32 %24, i32 %25, i32* %6, i32 %26)
  %28 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %29 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %23, %18
  store i32 0, i32* %6, align 4
  %31 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %32 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SYS_RES_DRQ, align 4
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call i8* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %6, i32 %38)
  %40 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %41 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  store i32 1, i32* %6, align 4
  %43 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %44 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SYS_RES_DRQ, align 4
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = call i8* @bus_alloc_resource_any(i32 %48, i32 %49, i32* %6, i32 %50)
  %52 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %53 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %56 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %114

59:                                               ; preds = %54
  %60 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %61 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %114

64:                                               ; preds = %59
  %65 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %66 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %114

69:                                               ; preds = %64
  %70 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %71 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @rman_get_start(i8* %72)
  %74 = call i32 @isa_dma_acquire(i32 %73)
  %75 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %76 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @rman_get_start(i8* %77)
  %79 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %80 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @isa_dmainit(i32 %78, i32 %81)
  %83 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %84 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %69
  %88 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %89 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @rman_get_start(i8* %90)
  %92 = call i32 @isa_dma_acquire(i32 %91)
  %93 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %94 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @rman_get_start(i8* %95)
  %97 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %98 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @isa_dmainit(i32 %96, i32 %99)
  br label %113

101:                                              ; preds = %69
  %102 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %103 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %106 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @pcm_getflags(i32 %108)
  %110 = load i32, i32* @SD_F_SIMPLEX, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @pcm_setflags(i32 %107, i32 %111)
  br label %113

113:                                              ; preds = %101, %87
  store i32 0, i32* %3, align 4
  br label %116

114:                                              ; preds = %64, %59, %54
  %115 = load i32, i32* @ENXIO, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %113
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @isa_dma_acquire(i32) #1

declare dso_local i32 @rman_get_start(i8*) #1

declare dso_local i32 @isa_dmainit(i32, i32) #1

declare dso_local i32 @pcm_setflags(i32, i32) #1

declare dso_local i32 @pcm_getflags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
