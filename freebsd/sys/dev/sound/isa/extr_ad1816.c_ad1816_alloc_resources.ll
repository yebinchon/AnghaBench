; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad1816_info = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@SD_F_SIMPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad1816_info*, i32)* @ad1816_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1816_alloc_resources(%struct.ad1816_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ad1816_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ad1816_info* %0, %struct.ad1816_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %8 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %9 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %8, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SYS_RES_IOPORT, align 4
  %15 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %16 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %15, i32 0, i32 8
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i8* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %16, i32 %17)
  %19 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %20 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %23 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SYS_RES_IRQ, align 4
  %29 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %30 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %29, i32 0, i32 7
  %31 = load i32, i32* @RF_ACTIVE, align 4
  %32 = call i8* @bus_alloc_resource_any(i32 %27, i32 %28, i32* %30, i32 %31)
  %33 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %34 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %26, %21
  %36 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %37 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SYS_RES_DRQ, align 4
  %43 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %44 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %43, i32 0, i32 6
  %45 = load i32, i32* @RF_ACTIVE, align 4
  %46 = call i8* @bus_alloc_resource_any(i32 %41, i32 %42, i32* %44, i32 %45)
  %47 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %48 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %40, %35
  %50 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %51 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SYS_RES_DRQ, align 4
  %57 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %58 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %57, i32 0, i32 5
  %59 = load i32, i32* @RF_ACTIVE, align 4
  %60 = call i8* @bus_alloc_resource_any(i32 %55, i32 %56, i32* %58, i32 %59)
  %61 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %62 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %54, %49
  %64 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %65 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %70 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %75 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73, %68, %63
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %124

82:                                               ; preds = %79
  %83 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %84 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @rman_get_start(i8* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @isa_dma_acquire(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %91 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @isa_dmainit(i32 %89, i32 %92)
  %94 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %95 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %82
  %99 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %100 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @rman_get_start(i8* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @isa_dma_acquire(i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %107 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @isa_dmainit(i32 %105, i32 %108)
  br label %112

110:                                              ; preds = %82
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %110, %98
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @pcm_getflags(i32 %118)
  %120 = load i32, i32* @SD_F_SIMPLEX, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @pcm_setflags(i32 %117, i32 %121)
  br label %123

123:                                              ; preds = %116, %112
  br label %124

124:                                              ; preds = %123, %79
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_start(i8*) #1

declare dso_local i32 @isa_dma_acquire(i32) #1

declare dso_local i32 @isa_dmainit(i32, i32) #1

declare dso_local i32 @pcm_setflags(i32, i32) #1

declare dso_local i32 @pcm_getflags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
