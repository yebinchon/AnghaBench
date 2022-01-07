; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emumix_set_gpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emumix_set_gpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Zero gpr write access\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emumix_set_gpr(%struct.emu_sc_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.emu_sc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %8 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %16 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %26

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %3
  %21 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @GPR(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @emu_wrptr(%struct.emu_sc_info* %21, i32 0, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %14
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @emu_wrptr(%struct.emu_sc_info*, i32, i32, i32) #1

declare dso_local i32 @GPR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
