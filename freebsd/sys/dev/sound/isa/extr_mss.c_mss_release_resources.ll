; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i64, i64, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mss_info*, i32)* @mss_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mss_release_resources(%struct.mss_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mss_info*, align 8
  %4 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %6 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %5, i32 0, i32 12
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %11 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %10, i32 0, i32 14
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %17 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %16, i32 0, i32 12
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %20 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %19, i32 0, i32 14
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @bus_teardown_intr(i32 %15, i32* %18, i64 %21)
  br label %23

23:                                               ; preds = %14, %9
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SYS_RES_IRQ, align 4
  %26 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %27 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %30 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %29, i32 0, i32 12
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @bus_release_resource(i32 %24, i32 %25, i32 %28, i32* %31)
  %33 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %34 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %33, i32 0, i32 12
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %23, %2
  %36 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %37 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %36, i32 0, i32 10
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %66

40:                                               ; preds = %35
  %41 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %42 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %41, i32 0, i32 10
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %45 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %43, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %40
  %49 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %50 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %49, i32 0, i32 10
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @rman_get_start(i32* %51)
  %53 = call i32 @isa_dma_release(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @SYS_RES_DRQ, align 4
  %56 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %57 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %56, i32 0, i32 11
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %60 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %59, i32 0, i32 10
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @bus_release_resource(i32 %54, i32 %55, i32 %58, i32* %61)
  br label %63

63:                                               ; preds = %48, %40
  %64 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %65 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %64, i32 0, i32 10
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %63, %35
  %67 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %68 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %67, i32 0, i32 8
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %73 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %72, i32 0, i32 8
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @rman_get_start(i32* %74)
  %76 = call i32 @isa_dma_release(i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @SYS_RES_DRQ, align 4
  %79 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %80 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %83 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %82, i32 0, i32 8
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @bus_release_resource(i32 %77, i32 %78, i32 %81, i32* %84)
  %86 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %87 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %86, i32 0, i32 8
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %71, %66
  %89 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %90 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @SYS_RES_IOPORT, align 4
  %96 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %97 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %100 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @bus_release_resource(i32 %94, i32 %95, i32 %98, i32* %101)
  %103 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %104 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %103, i32 0, i32 6
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %93, %88
  %106 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %107 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @SYS_RES_IOPORT, align 4
  %113 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %114 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %117 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @bus_release_resource(i32 %111, i32 %112, i32 %115, i32* %118)
  %120 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %121 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %120, i32 0, i32 4
  store i32* null, i32** %121, align 8
  br label %122

122:                                              ; preds = %110, %105
  %123 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %124 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %122
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @SYS_RES_IOPORT, align 4
  %130 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %131 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %134 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @bus_release_resource(i32 %128, i32 %129, i32 %132, i32* %135)
  %137 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %138 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %137, i32 0, i32 2
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %127, %122
  %140 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %141 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %146 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @bus_dma_tag_destroy(i64 %147)
  %149 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %150 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %144, %139
  %152 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %153 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %158 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @snd_mtxfree(i64 %159)
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %163 = load i32, i32* @M_DEVBUF, align 4
  %164 = call i32 @free(%struct.mss_info* %162, i32 %163)
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @isa_dma_release(i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @snd_mtxfree(i64) #1

declare dso_local i32 @free(%struct.mss_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
