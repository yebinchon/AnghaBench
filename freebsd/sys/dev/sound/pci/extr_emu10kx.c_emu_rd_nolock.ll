; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_rd_nolock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_rd_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"emu_rd: NULL sc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emu_sc_info*, i32, i32)* @emu_rd_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_rd_nolock(%struct.emu_sc_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.emu_sc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %9 = icmp ne %struct.emu_sc_info* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %40 [
    i32 1, label %13
    i32 2, label %22
    i32 4, label %31
  ]

13:                                               ; preds = %3
  %14 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %15 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %18 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @bus_space_read_1(i32 %16, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %3
  %23 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %24 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %27 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @bus_space_read_2(i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %41

31:                                               ; preds = %3
  %32 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %33 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %36 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @bus_space_read_4(i32 %34, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %31, %22, %13
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @bus_space_read_2(i32, i32, i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
