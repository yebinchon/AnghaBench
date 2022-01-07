; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbuf = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@SNDBUF_F_MANAGED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sndbuf_setmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sndbuf_alloc(%struct.snd_dbuf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_dbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_dbuf* %0, %struct.snd_dbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %13 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %20 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %23 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %25 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %28 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %30 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @SNDBUF_F_MANAGED, align 4
  %32 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %33 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %37 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %40 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %39, i32 0, i32 4
  %41 = bitcast i32* %40 to i8**
  %42 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %43 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %46 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %45, i32 0, i32 5
  %47 = call i64 @bus_dmamem_alloc(i32 %38, i8** %41, i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %4
  %50 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %51 = call i32 @sndbuf_free(%struct.snd_dbuf* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %5, align 4
  br label %93

53:                                               ; preds = %4
  %54 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %55 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %58 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %61 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %64 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @sndbuf_setmap, align 4
  %67 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %68 = call i64 @bus_dmamap_load(i32 %56, i32 %59, i32 %62, i32 %65, i32 %66, %struct.snd_dbuf* %67, i32 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %53
  %71 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %72 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70, %53
  %76 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %77 = call i32 @sndbuf_free(%struct.snd_dbuf* %76)
  %78 = load i32, i32* @ENOMEM, align 4
  store i32 %78, i32* %5, align 4
  br label %93

79:                                               ; preds = %70
  %80 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %81 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %82 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = udiv i32 %83, 2
  %85 = call i32 @sndbuf_resize(%struct.snd_dbuf* %80, i32 2, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load %struct.snd_dbuf*, %struct.snd_dbuf** %6, align 8
  %90 = call i32 @sndbuf_free(%struct.snd_dbuf* %89)
  br label %91

91:                                               ; preds = %88, %79
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %75, %49
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @sndbuf_free(%struct.snd_dbuf*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.snd_dbuf*, i32) #1

declare dso_local i32 @sndbuf_resize(%struct.snd_dbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
