; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_SYS_EN.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_SYS_EN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }

@CMD_SYS_EN = common dso_local global i32 0, align 4
@CMD_TIME_CLASS_D = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"SYS_EN DDR error: syn=%x, sock=%d, sladdr=%d, SPD source=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"NVMEM\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DIMM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_SYS_EN(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %6 = load i32, i32* @CMD_SYS_EN, align 4
  %7 = load i32, i32* @CMD_TIME_CLASS_D, align 4
  %8 = call i32 @mthca_cmd_imm(%struct.mthca_dev* %5, i32 0, i32* %3, i32 0, i32 0, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 6
  %17 = and i32 %16, 15
  %18 = load i32, i32* %3, align 4
  %19 = ashr i32 %18, 4
  %20 = and i32 %19, 3
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 1
  %23 = and i32 %22, 7
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %29 = call i32 @mthca_warn(%struct.mthca_dev* %14, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i8* %28)
  br label %30

30:                                               ; preds = %13, %1
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @mthca_cmd_imm(%struct.mthca_dev*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
