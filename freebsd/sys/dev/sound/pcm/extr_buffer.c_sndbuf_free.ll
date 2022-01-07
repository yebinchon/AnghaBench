; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbuf = type { i32, i32*, i32*, i64, i32*, i32*, i32*, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@SNDBUF_F_MANAGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sndbuf_free(%struct.snd_dbuf* %0) #0 {
  %2 = alloca %struct.snd_dbuf*, align 8
  store %struct.snd_dbuf* %0, %struct.snd_dbuf** %2, align 8
  %3 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %4 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %3, i32 0, i32 6
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %9 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %8, i32 0, i32 6
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = call i32 @free(i32* %10, i32 %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %15 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %20 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = call i32 @free(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %26 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %31 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SNDBUF_F_MANAGED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %29
  %37 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %38 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %43 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %46 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @bus_dmamap_unload(i32* %44, i32* %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %51 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %56 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %59 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %62 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @bus_dmamem_free(i32* %57, i32* %60, i32* %63)
  br label %65

65:                                               ; preds = %54, %49
  br label %72

66:                                               ; preds = %29
  %67 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %68 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @M_DEVBUF, align 4
  %71 = call i32 @free(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %65
  br label %73

73:                                               ; preds = %72, %24
  %74 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %75 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %74, i32 0, i32 6
  store i32* null, i32** %75, align 8
  %76 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %77 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %76, i32 0, i32 5
  store i32* null, i32** %77, align 8
  %78 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %79 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  %80 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %81 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %83 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  %84 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %85 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
