; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_irq = type { i64 }

@MAX_XIVE_IRQS = common dso_local global i64 0, align 8
@xive_ipi_vector = common dso_local global i32 0, align 4
@hwref = common dso_local global i32 0, align 4
@OPAL_XIVE_SET_IRQ_CONFIG = common dso_local global i32 0, align 4
@XIVE_PRIORITY = common dso_local global i32 0, align 4
@OPAL_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"OPAL_SET_XIVE IRQ %d -> cpu %d failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i8**)* @xive_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_enable(i32 %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.xive_irq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @MAX_XIVE_IRQS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i32, i32* @xive_ipi_vector, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @xive_ipi_vector, align 4
  br label %21

21:                                               ; preds = %18, %15
  br label %66

22:                                               ; preds = %4
  %23 = load i8**, i8*** %8, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = call i8* @xive_configure_irq(i64 %27)
  %29 = load i8**, i8*** %8, align 8
  store i8* %28, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i8**, i8*** %8, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.xive_irq*
  store %struct.xive_irq* %33, %struct.xive_irq** %9, align 8
  %34 = load i32, i32* @hwref, align 4
  %35 = call i64 @PCPU_GET(i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.xive_irq*, %struct.xive_irq** %9, align 8
  %38 = getelementptr inbounds %struct.xive_irq, %struct.xive_irq* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %50, %30
  %40 = load i32, i32* @OPAL_XIVE_SET_IRQ_CONFIG, align 4
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* @XIVE_PRIORITY, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @opal_call(i32 %40, i64 %41, i64 %42, i32 %43, i64 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @OPAL_BUSY, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %52

50:                                               ; preds = %39
  %51 = call i32 @DELAY(i32 10)
  br label %39

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %6, align 8
  %63 = load i8**, i8*** %8, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @xive_unmask(i32 %61, i64 %62, i8* %64)
  br label %66

66:                                               ; preds = %60, %21
  ret void
}

declare dso_local i8* @xive_configure_irq(i64) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i64 @opal_call(i32, i64, i64, i32, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @panic(i8*, i64, i64, i64) #1

declare dso_local i32 @xive_unmask(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
