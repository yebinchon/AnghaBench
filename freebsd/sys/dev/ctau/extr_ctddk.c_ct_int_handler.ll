; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_int_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32, i32 }

@BSR0_INTR = common dso_local global i8 0, align 1
@BSR0_RDYERR = common dso_local global i8 0, align 1
@BSR0_GINT = common dso_local global i8 0, align 1
@B_TAU_E1 = common dso_local global i64 0, align 8
@B_TAU_E1C = common dso_local global i64 0, align 8
@B_TAU_E1D = common dso_local global i64 0, align 8
@B_TAU2_E1 = common dso_local global i64 0, align 8
@B_TAU2_E1D = common dso_local global i64 0, align 8
@BSR0_HDINT = common dso_local global i8 0, align 1
@IMVR_CHAN1 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_int_handler(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  br label %6

6:                                                ; preds = %105, %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @BSR0(i32 %9)
  %11 = call zeroext i8 @inb(i32 %10)
  store i8 %11, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @BSR0_INTR, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %106

17:                                               ; preds = %6
  %18 = load i8, i8* %3, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @BSR0_RDYERR, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @BCR1(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @outb(i32 %28, i32 %31)
  br label %105

33:                                               ; preds = %17
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @BSR0_GINT, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %33
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @B_TAU_E1, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %70, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @B_TAU_E1C, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %70, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @B_TAU_E1D, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @B_TAU2_E1, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @B_TAU2_E1D, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64, %58, %52, %46, %40
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %72 = call i32 @ct_e1_interrupt(%struct.TYPE_4__* %71)
  br label %73

73:                                               ; preds = %70, %64
  br label %104

74:                                               ; preds = %33
  %75 = load i8, i8* %3, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @BSR0_HDINT, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %74
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @IACK(i32 %84)
  %86 = call zeroext i8 @inb(i32 %85)
  store i8 %86, i8* %4, align 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i8, i8* %4, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @IMVR_CHAN1, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 1, i32 0
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %89, i64 %98
  store i32* %99, i32** %5, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i8, i8* %4, align 1
  %102 = call i32 @ct_hdlc_interrupt(i32* %100, i8 zeroext %101)
  br label %103

103:                                              ; preds = %81, %74
  br label %104

104:                                              ; preds = %103, %73
  br label %105

105:                                              ; preds = %104, %24
  br label %6

106:                                              ; preds = %6
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @BSR0(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @BCR1(i32) #1

declare dso_local i32 @ct_e1_interrupt(%struct.TYPE_4__*) #1

declare dso_local i32 @IACK(i32) #1

declare dso_local i32 @ct_hdlc_interrupt(i32*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
