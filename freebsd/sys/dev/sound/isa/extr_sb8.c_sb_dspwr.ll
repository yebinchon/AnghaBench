; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_dspwr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_dspwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb_info = type { i32 }

@SBDSP_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"sb_dspwr(0x%02x) timed out.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sb_info*, i32)* @sb_dspwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_dspwr(%struct.sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sb_info* %0, %struct.sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 1000
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %12 = call i64 @sb_dspready(%struct.sb_info* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %16 = load i32, i32* @SBDSP_CMD, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sb_wr(%struct.sb_info* %15, i32 %16, i32 %17)
  store i32 1, i32* %3, align 4
  br label %35

19:                                               ; preds = %10
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 10
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 100
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1000, i32 10
  %27 = call i32 @DELAY(i32 %26)
  br label %28

28:                                               ; preds = %22, %19
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %7

32:                                               ; preds = %7
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @sb_dspready(%struct.sb_info*) #1

declare dso_local i32 @sb_wr(%struct.sb_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
