; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_valloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_valloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_voice = type { i32 }
%struct.sc_info = type { %struct.emu_voice* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.emu_voice* (%struct.sc_info*)* @emu_valloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.emu_voice* @emu_valloc(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca %struct.emu_voice*, align 8
  %4 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  store %struct.emu_voice* null, %struct.emu_voice** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 64
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %10 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %9, i32 0, i32 0
  %11 = load %struct.emu_voice*, %struct.emu_voice** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %11, i64 %13
  %15 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %8, %5
  %19 = phi i1 [ false, %5 ], [ %17, %8 ]
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %5

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 0
  %30 = load %struct.emu_voice*, %struct.emu_voice** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %30, i64 %32
  store %struct.emu_voice* %33, %struct.emu_voice** %3, align 8
  %34 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  %35 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %27, %24
  %37 = load %struct.emu_voice*, %struct.emu_voice** %3, align 8
  ret %struct.emu_voice* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
