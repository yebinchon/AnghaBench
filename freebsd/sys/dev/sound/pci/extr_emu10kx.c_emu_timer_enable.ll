; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_timer_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_timer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i64*, i64, i32 }

@EMU_MAX_IRQ_CONSUMERS = common dso_local global i32 0, align 4
@EMU_TIMER = common dso_local global i32 0, align 4
@EMU_INTE = common dso_local global i32 0, align 4
@EMU_INTE_INTERTIMERENB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emu_timer_enable(%struct.emu_sc_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.emu_sc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %154

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @EMU_MAX_IRQ_CONSUMERS, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @RANGE(i32 %15, i32 0, i32 %17)
  %19 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %20 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %19, i32 0, i32 2
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %48

24:                                               ; preds = %14
  %25 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %26 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %35 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 0, %40
  %42 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %43 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %41, i64* %47, align 8
  br label %48

48:                                               ; preds = %33, %24, %14
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %53 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %51
  %61 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %62 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 0, %67
  %69 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %70 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %68, i64* %74, align 8
  br label %75

75:                                               ; preds = %60, %51, %48
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %113, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @EMU_MAX_IRQ_CONSUMERS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %116

80:                                               ; preds = %76
  %81 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %82 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %85 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %83, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %80
  %93 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %94 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %101 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %92, %80
  %103 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %104 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store i32 1, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %102
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %76

116:                                              ; preds = %76
  %117 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %118 = load i32, i32* @EMU_TIMER, align 4
  %119 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %120 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = and i64 %121, 1023
  %123 = trunc i64 %122 to i32
  %124 = call i32 @emu_wr(%struct.emu_sc_info* %117, i32 %118, i32 %123, i32 2)
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %138

127:                                              ; preds = %116
  %128 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %129 = load i32, i32* @EMU_INTE, align 4
  %130 = call i32 @emu_rd(%struct.emu_sc_info* %128, i32 %129, i32 4)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* @EMU_INTE_INTERTIMERENB, align 4
  %132 = load i32, i32* %8, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %135 = load i32, i32* @EMU_INTE, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @emu_wr(%struct.emu_sc_info* %134, i32 %135, i32 %136, i32 4)
  br label %150

138:                                              ; preds = %116
  %139 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %140 = load i32, i32* @EMU_INTE, align 4
  %141 = call i32 @emu_rd(%struct.emu_sc_info* %139, i32 %140, i32 4)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* @EMU_INTE_INTERTIMERENB, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %8, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %8, align 4
  %146 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %147 = load i32, i32* @EMU_INTE, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @emu_wr(%struct.emu_sc_info* %146, i32 %147, i32 %148, i32 4)
  br label %150

150:                                              ; preds = %138, %127
  %151 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %152 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %151, i32 0, i32 2
  %153 = call i32 @mtx_unlock(i32* %152)
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %150, %13
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @RANGE(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @emu_wr(%struct.emu_sc_info*, i32, i32, i32) #1

declare dso_local i32 @emu_rd(%struct.emu_sc_info*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
