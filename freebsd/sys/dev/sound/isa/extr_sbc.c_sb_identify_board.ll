; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sb_identify_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sb_identify_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@DSP_CMD_GETVER = common dso_local global i32 0, align 4
@DSP_CMD_GETID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*)* @sb_identify_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_identify_board(%struct.resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.resource* %0, %struct.resource** %3, align 8
  %7 = load %struct.resource*, %struct.resource** %3, align 8
  %8 = load i32, i32* @DSP_CMD_GETVER, align 4
  %9 = call i32 @sb_cmd(%struct.resource* %7, i32 %8)
  %10 = load %struct.resource*, %struct.resource** %3, align 8
  %11 = call i32 @sb_get_byte(%struct.resource* %10)
  %12 = shl i32 %11, 8
  %13 = load %struct.resource*, %struct.resource** %3, align 8
  %14 = call i32 @sb_get_byte(%struct.resource* %13)
  %15 = or i32 %12, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 1279
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %54

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 769
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load %struct.resource*, %struct.resource** %3, align 8
  %27 = load i32, i32* @DSP_CMD_GETID, align 4
  %28 = call i32 @sb_cmd(%struct.resource* %26, i32 %27)
  %29 = load %struct.resource*, %struct.resource** %3, align 8
  %30 = call i32 @sb_get_byte(%struct.resource* %29)
  %31 = shl i32 %30, 8
  %32 = load %struct.resource*, %struct.resource** %3, align 8
  %33 = call i32 @sb_get_byte(%struct.resource* %32)
  %34 = or i32 %31, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 15
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 65520
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 18560
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, 4096
  store i32 %43, i32* %4, align 4
  br label %51

44:                                               ; preds = %25
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 26752
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = or i32 1280, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %41
  br label %52

52:                                               ; preds = %51, %22
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %21
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @sb_cmd(%struct.resource*, i32) #1

declare dso_local i32 @sb_get_byte(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
