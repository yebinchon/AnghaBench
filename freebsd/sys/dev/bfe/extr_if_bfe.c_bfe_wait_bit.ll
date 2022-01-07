; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_wait_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_wait_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"BUG!  Timeout waiting for bit %08x of register %x to %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfe_softc*, i32, i32, i64, i32)* @bfe_wait_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfe_wait_bit(%struct.bfe_softc* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %41, %5
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @CSR_READ_4(%struct.bfe_softc* %19, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %44

30:                                               ; preds = %24, %18
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %44

39:                                               ; preds = %33, %30
  %40 = call i32 @DELAY(i32 10)
  br label %41

41:                                               ; preds = %39
  %42 = load i64, i64* %12, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %12, align 8
  br label %14

44:                                               ; preds = %38, %29, %14
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  %50 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %58 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i8* %57)
  store i32 -1, i32* %6, align 4
  br label %60

59:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @CSR_READ_4(%struct.bfe_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
