; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_info = type { i32*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ess_info*, i32)* @ess_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ess_release_resources(%struct.ess_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ess_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ess_info* %0, %struct.ess_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %6 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %5, i32 0, i32 7
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %11 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %17 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %20 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @bus_teardown_intr(i32 %15, i32* %18, i64 %21)
  br label %23

23:                                               ; preds = %14, %9
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SYS_RES_IRQ, align 4
  %26 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %27 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @bus_release_resource(i32 %24, i32 %25, i32 0, i32* %28)
  %30 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %31 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %30, i32 0, i32 7
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %23, %2
  %33 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %34 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SYS_RES_IOPORT, align 4
  %40 = call i32 @PCIR_BAR(i32 0)
  %41 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %42 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @bus_release_resource(i32 %38, i32 %39, i32 %40, i32* %43)
  %45 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %46 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %45, i32 0, i32 6
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %37, %32
  %48 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %49 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @SYS_RES_IOPORT, align 4
  %55 = call i32 @PCIR_BAR(i32 1)
  %56 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %57 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @bus_release_resource(i32 %53, i32 %54, i32 %55, i32* %58)
  %60 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %61 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %60, i32 0, i32 5
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %52, %47
  %63 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %64 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SYS_RES_IOPORT, align 4
  %70 = call i32 @PCIR_BAR(i32 2)
  %71 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %72 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bus_release_resource(i32 %68, i32 %69, i32 %70, i32* %73)
  %75 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %76 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %75, i32 0, i32 4
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %67, %62
  %78 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %79 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @SYS_RES_IOPORT, align 4
  %85 = call i32 @PCIR_BAR(i32 3)
  %86 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %87 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @bus_release_resource(i32 %83, i32 %84, i32 %85, i32* %88)
  %90 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %91 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %90, i32 0, i32 3
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %82, %77
  %93 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %94 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @SYS_RES_IOPORT, align 4
  %100 = call i32 @PCIR_BAR(i32 4)
  %101 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %102 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @bus_release_resource(i32 %98, i32 %99, i32 %100, i32* %103)
  %105 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %106 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %105, i32 0, i32 2
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %97, %92
  %108 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %109 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %114 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @bus_dma_tag_destroy(i64 %115)
  %117 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %118 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %112, %107
  %120 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %121 = load i32, i32* @M_DEVBUF, align 4
  %122 = call i32 @free(%struct.ess_info* %120, i32 %121)
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @free(%struct.ess_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
