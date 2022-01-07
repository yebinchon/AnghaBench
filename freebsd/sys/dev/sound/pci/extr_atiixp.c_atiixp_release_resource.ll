; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i64, i32*, i32*, i32*, i32, i64, i32*, i32*, i32, i32, i32*, i32, i32, i32*, i32*, i32, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atiixp_info*)* @atiixp_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_release_resource(%struct.atiixp_info* %0) #0 {
  %2 = alloca %struct.atiixp_info*, align 8
  store %struct.atiixp_info* %0, %struct.atiixp_info** %2, align 8
  %3 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %4 = icmp eq %struct.atiixp_info* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %167

6:                                                ; preds = %1
  %7 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %8 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %13 = call i32 @atiixp_lock(%struct.atiixp_info* %12)
  %14 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %15 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %14, i32 0, i32 16
  store i64 0, i64* %15, align 8
  %16 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %17 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %16, i32 0, i32 15
  %18 = call i32 @callout_stop(i32* %17)
  %19 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %20 = call i32 @atiixp_unlock(%struct.atiixp_info* %19)
  %21 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %22 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %21, i32 0, i32 15
  %23 = call i32 @callout_drain(i32* %22)
  br label %24

24:                                               ; preds = %11, %6
  %25 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %26 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %25, i32 0, i32 14
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %31 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %30, i32 0, i32 14
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @ac97_destroy(i32* %32)
  %34 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %35 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %34, i32 0, i32 14
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %38 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %37, i32 0, i32 13
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %43 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %46 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %45, i32 0, i32 7
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %49 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %48, i32 0, i32 13
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @bus_teardown_intr(i32 %44, i32* %47, i32* %50)
  %52 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %53 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %52, i32 0, i32 13
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %41, %36
  %55 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %56 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %55, i32 0, i32 10
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %61 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %64 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %67 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %70 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %69, i32 0, i32 10
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @bus_release_resource(i32 %62, i32 %65, i32 %68, i32* %71)
  %73 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %74 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %73, i32 0, i32 10
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %59, %54
  %76 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %77 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %82 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SYS_RES_IRQ, align 4
  %85 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %86 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %89 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %88, i32 0, i32 7
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @bus_release_resource(i32 %83, i32 %84, i32 %87, i32* %90)
  %92 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %93 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %92, i32 0, i32 7
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %80, %75
  %95 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %96 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %95, i32 0, i32 6
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %101 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @bus_dma_tag_destroy(i32* %102)
  %104 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %105 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %104, i32 0, i32 6
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %99, %94
  %107 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %108 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %113 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %116 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @bus_dmamap_unload(i32* %114, i32 %117)
  %119 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %120 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %119, i32 0, i32 5
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %111, %106
  %122 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %123 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %128 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %131 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %134 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @bus_dmamem_free(i32* %129, i32* %132, i32 %135)
  %137 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %138 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %137, i32 0, i32 3
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %126, %121
  %140 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %141 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %146 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @bus_dma_tag_destroy(i32* %147)
  %149 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %150 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %149, i32 0, i32 2
  store i32* null, i32** %150, align 8
  br label %151

151:                                              ; preds = %144, %139
  %152 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %153 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %158 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @snd_mtxfree(i32* %159)
  %161 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %162 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %161, i32 0, i32 1
  store i32* null, i32** %162, align 8
  br label %163

163:                                              ; preds = %156, %151
  %164 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %165 = load i32, i32* @M_DEVBUF, align 4
  %166 = call i32 @free(%struct.atiixp_info* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %5
  ret void
}

declare dso_local i32 @atiixp_lock(%struct.atiixp_info*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @atiixp_unlock(%struct.atiixp_info*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ac97_destroy(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @snd_mtxfree(i32*) #1

declare dso_local i32 @free(%struct.atiixp_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
