; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad1816_info = type { i64, i64, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad1816_info*, i32)* @ad1816_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1816_release_resources(%struct.ad1816_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ad1816_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ad1816_info* %0, %struct.ad1816_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %6 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %5, i32 0, i32 8
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %11 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %10, i32 0, i32 10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %17 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %20 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %19, i32 0, i32 10
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @bus_teardown_intr(i32 %15, i32* %18, i64 %21)
  br label %23

23:                                               ; preds = %14, %9
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SYS_RES_IRQ, align 4
  %26 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %27 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %30 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %29, i32 0, i32 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @bus_release_resource(i32 %24, i32 %25, i32 %28, i32* %31)
  %33 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %34 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %33, i32 0, i32 8
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %23, %2
  %36 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %37 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %42 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @rman_get_start(i32* %43)
  %45 = call i32 @isa_dma_release(i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SYS_RES_DRQ, align 4
  %48 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %49 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %52 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @bus_release_resource(i32 %46, i32 %47, i32 %50, i32* %53)
  %55 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %56 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %55, i32 0, i32 6
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %40, %35
  %58 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %59 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %64 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @rman_get_start(i32* %65)
  %67 = call i32 @isa_dma_release(i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SYS_RES_DRQ, align 4
  %70 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %71 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %74 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @bus_release_resource(i32 %68, i32 %69, i32 %72, i32* %75)
  %77 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %78 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %77, i32 0, i32 4
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %62, %57
  %80 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %81 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @SYS_RES_IOPORT, align 4
  %87 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %88 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %91 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @bus_release_resource(i32 %85, i32 %86, i32 %89, i32* %92)
  %94 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %95 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %94, i32 0, i32 2
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %84, %79
  %97 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %98 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %103 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @bus_dma_tag_destroy(i64 %104)
  %106 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %107 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %110 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %115 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @snd_mtxfree(i64 %116)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %120 = load i32, i32* @M_DEVBUF, align 4
  %121 = call i32 @free(%struct.ad1816_info* %119, i32 %120)
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @isa_dma_release(i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @snd_mtxfree(i64) #1

declare dso_local i32 @free(%struct.ad1816_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
