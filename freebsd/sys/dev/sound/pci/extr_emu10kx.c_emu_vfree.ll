; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_vfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_vfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i32, %struct.emu_voice* }
%struct.emu_voice = type { i32, i32*, i64 }

@NUM_G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_vfree(%struct.emu_sc_info* %0, %struct.emu_voice* %1) #0 {
  %3 = alloca %struct.emu_sc_info*, align 8
  %4 = alloca %struct.emu_voice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %3, align 8
  store %struct.emu_voice* %1, %struct.emu_voice** %4, align 8
  %7 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %8 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %49, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NUM_G, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %16 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %17 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %16, i32 0, i32 2
  %18 = load %struct.emu_voice*, %struct.emu_voice** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %18, i64 %20
  %22 = icmp eq %struct.emu_voice* %15, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %14
  %24 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %25 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %24, i32 0, i32 2
  %26 = load %struct.emu_voice*, %struct.emu_voice** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %26, i64 %28
  %30 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %23
  %34 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %35 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %37 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %42 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %41, i32 0, i32 1
  %43 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %44 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @emu_memfree(i32* %42, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %40, %33
  br label %48

48:                                               ; preds = %47, %23, %14
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %10

52:                                               ; preds = %10
  %53 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %54 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %53, i32 0, i32 0
  %55 = call i32 @mtx_unlock(i32* %54)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @emu_memfree(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
