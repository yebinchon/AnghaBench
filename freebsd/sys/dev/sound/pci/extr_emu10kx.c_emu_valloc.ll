; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_valloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_valloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_voice = type { i32 }
%struct.emu_sc_info = type { i32, %struct.emu_voice* }

@NUM_G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.emu_voice* @emu_valloc(%struct.emu_sc_info* %0) #0 {
  %2 = alloca %struct.emu_sc_info*, align 8
  %3 = alloca %struct.emu_voice*, align 8
  %4 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %2, align 8
  store %struct.emu_voice* null, %struct.emu_voice** %3, align 8
  %5 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %6 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %5, i32 0, i32 0
  %7 = call i32 @mtx_lock(i32* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NUM_G, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %14 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %13, i32 0, i32 1
  %15 = load %struct.emu_voice*, %struct.emu_voice** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %15, i64 %17
  %19 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %12, %8
  %23 = phi i1 [ false, %8 ], [ %21, %12 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %8

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @NUM_G, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %34 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %33, i32 0, i32 1
  %35 = load %struct.emu_voice*, %struct.emu_voice** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %35, i64 %37
  store %struct.emu_voice* %38, %struct.emu_voice** %3, align 8
  %39 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %40 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %28
  %42 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %43 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %42, i32 0, i32 0
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  ret %struct.emu_voice* %45
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
