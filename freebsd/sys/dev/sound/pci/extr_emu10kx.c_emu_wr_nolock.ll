; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_wr_nolock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_wr_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"emu_rd: NULL sc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emu_sc_info*, i32, i32, i32)* @emu_wr_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_wr_nolock(%struct.emu_sc_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.emu_sc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %10 = icmp ne %struct.emu_sc_info* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %44 [
    i32 1, label %14
    i32 2, label %24
    i32 4, label %34
  ]

14:                                               ; preds = %4
  %15 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %16 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %19 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @bus_space_write_1(i32 %17, i32 %20, i32 %21, i32 %22)
  br label %44

24:                                               ; preds = %4
  %25 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %26 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %29 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @bus_space_write_2(i32 %27, i32 %30, i32 %31, i32 %32)
  br label %44

34:                                               ; preds = %4
  %35 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %36 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %39 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @bus_space_write_4(i32 %37, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %4, %34, %24, %14
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_write_2(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
