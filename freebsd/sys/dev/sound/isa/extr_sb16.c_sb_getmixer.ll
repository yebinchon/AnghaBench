; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb_getmixer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb_getmixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb_info = type { i32 }

@SB_MIX_ADDR = common dso_local global i32 0, align 4
@SB_MIX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sb_info*, i32)* @sb_getmixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_getmixer(%struct.sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sb_info* %0, %struct.sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %7 = call i32 @sb_lockassert(%struct.sb_info* %6)
  %8 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %9 = load i32, i32* @SB_MIX_ADDR, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 255
  %12 = call i32 @sb_wr(%struct.sb_info* %8, i32 %9, i32 %11)
  %13 = call i32 @DELAY(i32 10)
  %14 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %15 = load i32, i32* @SB_MIX_DATA, align 4
  %16 = call i32 @sb_rd(%struct.sb_info* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = call i32 @DELAY(i32 10)
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @sb_lockassert(%struct.sb_info*) #1

declare dso_local i32 @sb_wr(%struct.sb_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @sb_rd(%struct.sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
