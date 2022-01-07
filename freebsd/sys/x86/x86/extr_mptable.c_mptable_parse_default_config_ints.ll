; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_parse_default_config_ints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_parse_default_config_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.INTENTRY = type { i32, i32, i32, i32, i8*, i64, i32 }

@MPCT_ENTRY_INT = common dso_local global i32 0, align 4
@INTENTRY_FLAGS_POLARITY_CONFORM = common dso_local global i32 0, align 4
@INTENTRY_FLAGS_TRIGGER_CONFORM = common dso_local global i32 0, align 4
@INTENTRY_TYPE_EXTINT = common dso_local global i8* null, align 8
@INTENTRY_TYPE_INT = common dso_local global i8* null, align 8
@mpfps = common dso_local global %struct.TYPE_2__* null, align 8
@ioapics = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mptable_parse_default_config_ints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptable_parse_default_config_ints() #0 {
  %1 = alloca %struct.INTENTRY, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MPCT_ENTRY_INT, align 4
  %4 = getelementptr inbounds %struct.INTENTRY, %struct.INTENTRY* %1, i32 0, i32 6
  store i32 %3, i32* %4, align 8
  %5 = load i32, i32* @INTENTRY_FLAGS_POLARITY_CONFORM, align 4
  %6 = load i32, i32* @INTENTRY_FLAGS_TRIGGER_CONFORM, align 4
  %7 = or i32 %5, %6
  %8 = getelementptr inbounds %struct.INTENTRY, %struct.INTENTRY* %1, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.INTENTRY, %struct.INTENTRY* %1, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.INTENTRY, %struct.INTENTRY* %1, i32 0, i32 1
  store i32 2, i32* %10, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %32, %0
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = getelementptr inbounds %struct.INTENTRY, %struct.INTENTRY* %1, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %2, align 4
  switch i32 %17, label %25 [
    i32 0, label %18
    i32 2, label %21
  ]

18:                                               ; preds = %14
  %19 = load i8*, i8** @INTENTRY_TYPE_EXTINT, align 8
  %20 = getelementptr inbounds %struct.INTENTRY, %struct.INTENTRY* %1, i32 0, i32 4
  store i8* %19, i8** %20, align 8
  br label %30

21:                                               ; preds = %14
  %22 = load i8*, i8** @INTENTRY_TYPE_INT, align 8
  %23 = getelementptr inbounds %struct.INTENTRY, %struct.INTENTRY* %1, i32 0, i32 4
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.INTENTRY, %struct.INTENTRY* %1, i32 0, i32 3
  store i32 0, i32* %24, align 4
  br label %30

25:                                               ; preds = %14
  %26 = load i8*, i8** @INTENTRY_TYPE_INT, align 8
  %27 = getelementptr inbounds %struct.INTENTRY, %struct.INTENTRY* %1, i32 0, i32 4
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %2, align 4
  %29 = getelementptr inbounds %struct.INTENTRY, %struct.INTENTRY* %1, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %21, %18
  %31 = call i32 @mptable_parse_io_int(%struct.INTENTRY* %1)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpfps, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 7
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32*, i32** @ioapics, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ioapic_disable_pin(i32 %43, i32 0)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpfps, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32*, i32** @ioapics, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ioapic_disable_pin(i32 %53, i32 2)
  %55 = load i32*, i32** @ioapics, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ioapic_disable_pin(i32 %57, i32 13)
  br label %59

59:                                               ; preds = %50, %45
  ret void
}

declare dso_local i32 @mptable_parse_io_int(%struct.INTENTRY*) #1

declare dso_local i32 @ioapic_disable_pin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
