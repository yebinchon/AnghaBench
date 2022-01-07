; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_vsetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_vsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pchinfo = type { i32, i64, %struct.emu_voice* }
%struct.emu_voice = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@AFMT_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_pchinfo*)* @emu_vsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_vsetup(%struct.sc_pchinfo* %0) #0 {
  %2 = alloca %struct.sc_pchinfo*, align 8
  %3 = alloca %struct.emu_voice*, align 8
  store %struct.sc_pchinfo* %0, %struct.sc_pchinfo** %2, align 8
  %4 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %5 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %4, i32 0, i32 2
  %6 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  store %struct.emu_voice* %6, %struct.emu_voice** %3, align 8
  %7 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %8 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %1
  %12 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %13 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @AFMT_16BIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %21 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %23 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @AFMT_CHANNEL(i32 %24)
  %26 = icmp sgt i32 %25, 1
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %30 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %32 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %11
  %36 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %37 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %40 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %44 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %47 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %35, %11
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %53 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %58 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %61 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %63 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = icmp ne %struct.TYPE_2__* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  %67 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %68 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %71 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i64 %69, i64* %73, align 8
  br label %74

74:                                               ; preds = %66, %56
  br label %75

75:                                               ; preds = %74, %51
  ret void
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
