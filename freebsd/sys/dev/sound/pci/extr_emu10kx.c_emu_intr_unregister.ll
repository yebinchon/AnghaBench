; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_intr_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_intr_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32*, i64 }

@EMU_INTE = common dso_local global i32 0, align 4
@EMU_MAX_IRQ_CONSUMERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emu_intr_unregister(%struct.emu_sc_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.emu_sc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %9 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %12 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %22 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %21, i32 0, i32 0
  %23 = call i32 @mtx_unlock(i32* %22)
  store i32 -1, i32* %3, align 4
  br label %105

24:                                               ; preds = %2
  %25 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %26 = load i32, i32* @EMU_INTE, align 4
  %27 = call i32 @emu_rd(%struct.emu_sc_info* %25, i32 %26, i32 4)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %29 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %40 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %47 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %54 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %61 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %93, %24
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @EMU_MAX_IRQ_CONSUMERS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %73 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %83 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %81, %71
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %67

96:                                               ; preds = %67
  %97 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %98 = load i32, i32* @EMU_INTE, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @emu_wr(%struct.emu_sc_info* %97, i32 %98, i32 %99, i32 4)
  %101 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %102 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %101, i32 0, i32 0
  %103 = call i32 @mtx_unlock(i32* %102)
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %96, %20
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @emu_rd(%struct.emu_sc_info*, i32, i32) #1

declare dso_local i32 @emu_wr(%struct.emu_sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
