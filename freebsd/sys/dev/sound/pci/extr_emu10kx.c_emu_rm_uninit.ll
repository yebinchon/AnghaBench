; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_rm_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_rm_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"rm: gpr %d not free before uninit\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emu_rm_uninit(%struct.emu_sc_info* %0) #0 {
  %2 = alloca %struct.emu_sc_info*, align 8
  %3 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %2, align 8
  %4 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %5 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %49

8:                                                ; preds = %1
  %9 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %10 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = call i32 @mtx_lock(i32* %12)
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %40, %8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %17 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %14
  %23 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %24 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %35 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %14

43:                                               ; preds = %14
  %44 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %45 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = call i32 @mtx_unlock(i32* %47)
  br label %49

49:                                               ; preds = %43, %1
  %50 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %51 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = call i32 @mtx_destroy(i32* %53)
  %55 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %56 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* @M_DEVBUF, align 4
  %59 = call i32 @free(%struct.TYPE_2__* %57, i32 %58)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
