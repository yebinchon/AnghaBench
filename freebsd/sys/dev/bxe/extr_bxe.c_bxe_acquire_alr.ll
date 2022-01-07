; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_acquire_alr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_acquire_alr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@GRCBASE_MCP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Cannot acquire MCP access lock register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_acquire_alr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_acquire_alr(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 1000
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  store i32 -2147483648, i32* %5, align 4
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = load i64, i64* @GRCBASE_MCP, align 8
  %12 = add nsw i64 %11, 156
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @REG_WR(%struct.bxe_softc* %10, i64 %12, i32 %13)
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = load i64, i64* @GRCBASE_MCP, align 8
  %17 = add nsw i64 %16, 156
  %18 = call i32 @REG_RD(%struct.bxe_softc* %15, i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = and i64 %20, 2147483648
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  br label %29

24:                                               ; preds = %9
  %25 = call i32 @DELAY(i32 5000)
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %6

29:                                               ; preds = %23, %6
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = and i64 %31, 2147483648
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %36 = call i32 @BLOGE(%struct.bxe_softc* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %38

37:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
