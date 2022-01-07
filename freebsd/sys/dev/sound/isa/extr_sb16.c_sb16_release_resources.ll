; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb16_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb16_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb_info = type { i64, i32*, i32*, i32*, i32*, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sb_info*, i32)* @sb16_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb16_release_resources(%struct.sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sb_info* %0, %struct.sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %6 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %17 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @bus_teardown_intr(i32 %15, i32* %18, i64 %21)
  br label %23

23:                                               ; preds = %14, %9
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SYS_RES_IRQ, align 4
  %26 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %27 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @bus_release_resource(i32 %24, i32 %25, i32 0, i32* %28)
  %30 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %31 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %30, i32 0, i32 4
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %23, %2
  %33 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %34 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %39 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %42 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %40, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %47 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @rman_get_start(i32* %48)
  %50 = call i32 @isa_dma_release(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @SYS_RES_DRQ, align 4
  %53 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %54 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @bus_release_resource(i32 %51, i32 %52, i32 1, i32* %55)
  br label %57

57:                                               ; preds = %45, %37
  %58 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %59 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %57, %32
  %61 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %62 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %67 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @rman_get_start(i32* %68)
  %70 = call i32 @isa_dma_release(i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @SYS_RES_DRQ, align 4
  %73 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %74 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @bus_release_resource(i32 %71, i32 %72, i32 0, i32* %75)
  %77 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %78 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %65, %60
  %80 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %81 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @SYS_RES_IOPORT, align 4
  %87 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %88 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @bus_release_resource(i32 %85, i32 %86, i32 0, i32* %89)
  %91 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %92 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %84, %79
  %94 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %95 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %100 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @bus_dma_tag_destroy(i64 %101)
  %103 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %104 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %98, %93
  %106 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %107 = load i32, i32* @M_DEVBUF, align 4
  %108 = call i32 @free(%struct.sb_info* %106, i32 %107)
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @isa_dma_release(i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @free(%struct.sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
