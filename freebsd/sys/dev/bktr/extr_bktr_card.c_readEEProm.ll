; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_card.c_readEEProm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_card.c_readEEProm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@EEPROMBLOCKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readEEProm(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %64

22:                                               ; preds = %4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EEPROMBLOCKSIZE, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %12, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %64

35:                                               ; preds = %22
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @i2cWrite(%struct.TYPE_7__* %36, i32 %37, i32 %38, i32 -1)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %64

42:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, 1
  %51 = call i32 @i2cRead(%struct.TYPE_7__* %48, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 -1, i32* %5, align 4
  br label %64

54:                                               ; preds = %47
  %55 = load i32, i32* %13, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %43

63:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %53, %41, %34, %21
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @i2cWrite(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @i2cRead(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
