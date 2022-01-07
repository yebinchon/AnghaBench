; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_probe_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_probe_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BSR_VAR_MASK = common dso_local global i32 0, align 4
@CRONYX_400 = common dso_local global i32 0, align 4
@BCR0_NORESET = common dso_local global i32 0, align 4
@irqmask = common dso_local global i32* null, align 8
@CCR_CLRCH = common dso_local global i32 0, align 4
@CMR_HDLC = common dso_local global i32 0, align 4
@CCR_INITCH = common dso_local global i32 0, align 4
@CCR_ENTX = common dso_local global i32 0, align 4
@IER_TXMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx_probe_irq(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @BSR(i32 %10)
  %12 = call i32 @inb(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @BSR_VAR_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @CRONYX_400, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CS0(i32 %21)
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CS1(i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i32 [ %22, %18 ], [ %27, %23 ]
  store i32 %29, i32* %7, align 4
  %30 = call i32 @outb(i32 32, i32 10)
  %31 = call i32 @inb(i32 32)
  store i32 %31, i32* %5, align 4
  %32 = call i32 @outb(i32 160, i32 10)
  %33 = call i32 @inb(i32 160)
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %28
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @BCR0(i32 %42)
  %44 = load i32, i32* @BCR0_NORESET, align 4
  %45 = load i32*, i32** @irqmask, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %44, %49
  %51 = call i32 @outb(i32 %43, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @CAR(i32 %52)
  %54 = call i32 @outb(i32 %53, i32 0)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @CCR_CLRCH, align 4
  %57 = call i32 @cx_cmd(i32 %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @CMR(i32 %58)
  %60 = load i32, i32* @CMR_HDLC, align 4
  %61 = call i32 @outb(i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @TCOR(i32 %62)
  %64 = call i32 @outb(i32 %63, i32 0)
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @TBPR(i32 %65)
  %67 = call i32 @outb(i32 %66, i32 1)
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @CCR_INITCH, align 4
  %70 = load i32, i32* @CCR_ENTX, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @cx_cmd(i32 %68, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @IER(i32 %73)
  %75 = load i32, i32* @IER_TXMPTY, align 4
  %76 = call i32 @outb(i32 %74, i32 %75)
  br label %106

77:                                               ; preds = %28
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @cx_reset(i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp sgt i32 %84, 7
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i32, i32* %4, align 4
  %88 = sub nsw i32 0, %87
  %89 = and i32 %88, 7
  %90 = or i32 96, %89
  %91 = call i32 @outb(i32 160, i32 %90)
  %92 = call i32 @outb(i32 32, i32 98)
  br label %98

93:                                               ; preds = %80
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 0, %94
  %96 = or i32 96, %95
  %97 = call i32 @outb(i32 32, i32 %96)
  br label %98

98:                                               ; preds = %93, %86
  br label %105

99:                                               ; preds = %77
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @BCR0(i32 %102)
  %104 = call i32 @outb(i32 %103, i32 0)
  br label %105

105:                                              ; preds = %99, %98
  br label %106

106:                                              ; preds = %105, %39
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @BSR(i32) #1

declare dso_local i32 @CS0(i32) #1

declare dso_local i32 @CS1(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @BCR0(i32) #1

declare dso_local i32 @CAR(i32) #1

declare dso_local i32 @cx_cmd(i32, i32) #1

declare dso_local i32 @CMR(i32) #1

declare dso_local i32 @TCOR(i32) #1

declare dso_local i32 @TBPR(i32) #1

declare dso_local i32 @IER(i32) #1

declare dso_local i32 @cx_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
