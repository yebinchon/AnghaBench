; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_probe_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_probe_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@BCR0_HDRUN = common dso_local global i32 0, align 4
@irqmask = common dso_local global i32* null, align 8
@HD_TEPR_0R = common dso_local global i32 0, align 4
@HD_TCONR_0R = common dso_local global i32 0, align 4
@HD_TCNT_0R = common dso_local global i32 0, align 4
@HD_TCSR_0R = common dso_local global i32 0, align 4
@TCSR_ENABLE = common dso_local global i32 0, align 4
@TCSR_INTR = common dso_local global i32 0, align 4
@IER2_RX_TME_0 = common dso_local global i32 0, align 4
@DS_IMR2 = common dso_local global i32 0, align 4
@SR2_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_probe_irq(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @outb(i32 32, i32 10)
  %7 = call i32 @inb(i32 32)
  store i32 %7, i32* %5, align 4
  %8 = call i32 @outb(i32 160, i32 10)
  %9 = call i32 @inb(i32 160)
  %10 = shl i32 %9, 8
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BCR0(i32 %18)
  %20 = load i32, i32* @BCR0_HDRUN, align 4
  %21 = load i32*, i32** @irqmask, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %20, %25
  %27 = call i32 @outb(i32 %19, i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HD_TEPR_0R, align 4
  %32 = call i32 @R(i32 %30, i32 %31)
  %33 = call i32 @outb(i32 %32, i32 0)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HD_TCONR_0R, align 4
  %38 = call i32 @R(i32 %36, i32 %37)
  %39 = call i32 @outw(i32 %38, i32 1)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HD_TCNT_0R, align 4
  %44 = call i32 @R(i32 %42, i32 %43)
  %45 = call i32 @outw(i32 %44, i32 0)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HD_TCSR_0R, align 4
  %50 = call i32 @R(i32 %48, i32 %49)
  %51 = load i32, i32* @TCSR_ENABLE, align 4
  %52 = load i32, i32* @TCSR_INTR, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @outb(i32 %50, i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IER2(i32 %57)
  %59 = load i32, i32* @IER2_RX_TME_0, align 4
  %60 = call i32 @outb(i32 %58, i32 %59)
  br label %151

61:                                               ; preds = %2
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %127

64:                                               ; preds = %61
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @BCR0(i32 %67)
  %69 = load i32, i32* @BCR0_HDRUN, align 4
  %70 = load i32*, i32** @irqmask, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 0, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %69, %75
  %77 = call i32 @outb(i32 %68, i32 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @IER0(i32 %80)
  %82 = call i32 @outb(i32 %81, i32 0)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @IER1(i32 %85)
  %87 = call i32 @outb(i32 %86, i32 0)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @IER2(i32 %90)
  %92 = call i32 @outb(i32 %91, i32 0)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @HD_TCSR_0R, align 4
  %97 = call i32 @R(i32 %95, i32 %96)
  %98 = call i32 @outb(i32 %97, i32 0)
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @E1CS0(i32 %101)
  %103 = load i32, i32* @DS_IMR2, align 4
  %104 = call i32 @cte_out(i32 %102, i32 %103, i32 0)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @E1CS1(i32 %107)
  %109 = load i32, i32* @DS_IMR2, align 4
  %110 = call i32 @cte_out(i32 %108, i32 %109, i32 0)
  %111 = load i32, i32* %4, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp sgt i32 %112, 7
  br i1 %113, label %114, label %121

114:                                              ; preds = %64
  %115 = load i32, i32* %4, align 4
  %116 = sub nsw i32 0, %115
  %117 = and i32 %116, 7
  %118 = or i32 96, %117
  %119 = call i32 @outb(i32 160, i32 %118)
  %120 = call i32 @outb(i32 32, i32 98)
  br label %126

121:                                              ; preds = %64
  %122 = load i32, i32* %4, align 4
  %123 = sub nsw i32 0, %122
  %124 = or i32 96, %123
  %125 = call i32 @outb(i32 32, i32 %124)
  br label %126

126:                                              ; preds = %121, %114
  br label %150

127:                                              ; preds = %61
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @BCR0(i32 %130)
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @outb(i32 %131, i32 %134)
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @E1CS0(i32 %138)
  %140 = load i32, i32* @DS_IMR2, align 4
  %141 = load i32, i32* @SR2_SEC, align 4
  %142 = call i32 @cte_out(i32 %139, i32 %140, i32 %141)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @E1CS1(i32 %145)
  %147 = load i32, i32* @DS_IMR2, align 4
  %148 = load i32, i32* @SR2_SEC, align 4
  %149 = call i32 @cte_out(i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %127, %126
  br label %151

151:                                              ; preds = %150, %15
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @BCR0(i32) #1

declare dso_local i32 @R(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @IER2(i32) #1

declare dso_local i32 @IER0(i32) #1

declare dso_local i32 @IER1(i32) #1

declare dso_local i32 @cte_out(i32, i32, i32) #1

declare dso_local i32 @E1CS0(i32) #1

declare dso_local i32 @E1CS1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
