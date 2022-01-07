; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_vsetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_vsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_voice = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AFMT_16BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_vsetup(%struct.emu_voice* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.emu_voice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.emu_voice* %0, %struct.emu_voice** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AFMT_16BIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  %16 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %17 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @AFMT_CHANNEL(i32 %18)
  %20 = icmp sgt i32 %19, 1
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %24 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %26 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %9
  %30 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %31 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %34 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %38 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %41 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %29, %9
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %51 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %53 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %58 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %61 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %48
  br label %65

65:                                               ; preds = %64, %45
  ret void
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
