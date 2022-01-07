; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_generic_read_board_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_generic_read_board_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_board_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@BOARDVENDOR = common dso_local global i32 0, align 4
@BOARDTYPE = common dso_local global i32 0, align 4
@DEVID = common dso_local global i32 0, align 4
@BOARDREV = common dso_local global i32 0, align 4
@SROMREV = common dso_local global i32 0, align 4
@BOARDFLAGS = common dso_local global i32 0, align 4
@BOARDFLAGS2 = common dso_local global i32 0, align 4
@BOARDFLAGS3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_bus_generic_read_board_info(i32 %0, i32 %1, %struct.bhnd_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_board_info*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.bhnd_board_info* %2, %struct.bhnd_board_info** %6, align 8
  %8 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %9 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BOARDVENDOR, align 4
  %12 = call i32 @OPT_BHND_GV(i32 %10, i32 %11, i32 0)
  %13 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %14 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BOARDTYPE, align 4
  %17 = call i32 @OPT_BHND_GV(i32 %15, i32 %16, i32 0)
  %18 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %19 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DEVID, align 4
  %22 = call i32 @OPT_BHND_GV(i32 %20, i32 %21, i32 0)
  %23 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %24 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BOARDREV, align 4
  %27 = call i32 @REQ_BHND_GV(i32 %25, i32 %26)
  %28 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %29 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SROMREV, align 4
  %32 = call i32 @OPT_BHND_GV(i32 %30, i32 %31, i32 0)
  %33 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %34 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BOARDFLAGS, align 4
  %37 = call i32 @REQ_BHND_GV(i32 %35, i32 %36)
  %38 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %39 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BOARDFLAGS2, align 4
  %42 = call i32 @OPT_BHND_GV(i32 %40, i32 %41, i32 0)
  %43 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %44 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BOARDFLAGS3, align 4
  %47 = call i32 @OPT_BHND_GV(i32 %45, i32 %46, i32 0)
  ret i32 0
}

declare dso_local i32 @OPT_BHND_GV(i32, i32, i32) #1

declare dso_local i32 @REQ_BHND_GV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
