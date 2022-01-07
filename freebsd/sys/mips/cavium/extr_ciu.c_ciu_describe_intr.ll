; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_ciu.c_ciu_describe_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_ciu.c_ciu_describe_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { i32 }
%struct.resource = type { i32 }

@CIU_IRQ_EN0_END = common dso_local global i32 0, align 4
@ciu_en0_intr_events = common dso_local global %struct.intr_event** null, align 8
@CIU_IRQ_EN0_BEGIN = common dso_local global i32 0, align 4
@ciu_en0_intrcnt = common dso_local global i32* null, align 8
@ciu_en1_intr_events = common dso_local global %struct.intr_event** null, align 8
@CIU_IRQ_EN1_BEGIN = common dso_local global i32 0, align 4
@ciu_en1_intrcnt = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i8*, i8*)* @ciu_describe_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciu_describe_intr(i32 %0, i32 %1, %struct.resource* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.intr_event*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.resource* %2, %struct.resource** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load %struct.resource*, %struct.resource** %9, align 8
  %17 = call i32 @rman_get_start(%struct.resource* %16)
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* @CIU_IRQ_EN0_END, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %5
  %22 = load %struct.intr_event**, %struct.intr_event*** @ciu_en0_intr_events, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @CIU_IRQ_EN0_BEGIN, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %22, i64 %26
  %28 = load %struct.intr_event*, %struct.intr_event** %27, align 8
  store %struct.intr_event* %28, %struct.intr_event** %12, align 8
  %29 = load i32*, i32** @ciu_en0_intrcnt, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @CIU_IRQ_EN0_BEGIN, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  br label %51

36:                                               ; preds = %5
  %37 = load %struct.intr_event**, %struct.intr_event*** @ciu_en1_intr_events, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @CIU_IRQ_EN1_BEGIN, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %37, i64 %41
  %43 = load %struct.intr_event*, %struct.intr_event** %42, align 8
  store %struct.intr_event* %43, %struct.intr_event** %12, align 8
  %44 = load i32*, i32** @ciu_en1_intrcnt, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @CIU_IRQ_EN1_BEGIN, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %36, %21
  %52 = load %struct.intr_event*, %struct.intr_event** %12, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @intr_event_describe_handler(%struct.intr_event* %52, i8* %53, i8* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %6, align 4
  br label %66

60:                                               ; preds = %51
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.intr_event*, %struct.intr_event** %12, align 8
  %63 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mips_intrcnt_setname(i32 %61, i32 %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %60, %58
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @intr_event_describe_handler(%struct.intr_event*, i8*, i8*) #1

declare dso_local i32 @mips_intrcnt_setname(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
