; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atpic.c_atpic_register_sources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atpic.c_atpic_register_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atpic = type { i32 }
%struct.atpic_intsrc = type { i32 }
%struct.pic = type { i32 }

@atpics = common dso_local global %struct.atpic* null, align 8
@MASTER = common dso_local global i64 0, align 8
@NUM_ISA_IRQS = common dso_local global i32 0, align 4
@atintrs = common dso_local global %struct.atpic_intsrc* null, align 8
@ICU_SLAVEID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pic*)* @atpic_register_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atpic_register_sources(%struct.pic* %0) #0 {
  %2 = alloca %struct.pic*, align 8
  %3 = alloca %struct.atpic*, align 8
  %4 = alloca %struct.atpic_intsrc*, align 8
  %5 = alloca i32, align 4
  store %struct.pic* %0, %struct.pic** %2, align 8
  %6 = load %struct.pic*, %struct.pic** %2, align 8
  %7 = bitcast %struct.pic* %6 to %struct.atpic*
  store %struct.atpic* %7, %struct.atpic** %3, align 8
  %8 = load %struct.atpic*, %struct.atpic** %3, align 8
  %9 = load %struct.atpic*, %struct.atpic** @atpics, align 8
  %10 = load i64, i64* @MASTER, align 8
  %11 = getelementptr inbounds %struct.atpic, %struct.atpic* %9, i64 %10
  %12 = icmp ne %struct.atpic* %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %48

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NUM_ISA_IRQS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i32* @intr_lookup_source(i32 %20)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %48

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %15

28:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  %29 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** @atintrs, align 8
  store %struct.atpic_intsrc* %29, %struct.atpic_intsrc** %4, align 8
  br label %30

30:                                               ; preds = %43, %28
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @NUM_ISA_IRQS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ICU_SLAVEID, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %43

39:                                               ; preds = %34
  %40 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %4, align 8
  %41 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %40, i32 0, i32 0
  %42 = call i32 @intr_register_source(i32* %41)
  br label %43

43:                                               ; preds = %39, %38
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  %46 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %4, align 8
  %47 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %46, i32 1
  store %struct.atpic_intsrc* %47, %struct.atpic_intsrc** %4, align 8
  br label %30

48:                                               ; preds = %13, %23, %30
  ret void
}

declare dso_local i32* @intr_lookup_source(i32) #1

declare dso_local i32 @intr_register_source(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
