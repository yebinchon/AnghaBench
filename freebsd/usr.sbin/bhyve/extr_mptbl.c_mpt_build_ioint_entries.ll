; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mptbl.c_mpt_build_ioint_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mptbl.c_mpt_build_ioint_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i8*, i32 }

@MPCT_ENTRY_INT = common dso_local global i32 0, align 4
@INTENTRY_TYPE_EXTINT = common dso_local global i8* null, align 8
@INTENTRY_TYPE_INT = common dso_local global i8* null, align 8
@INTENTRY_FLAGS_POLARITY_ACTIVELO = common dso_local global i32 0, align 4
@INTENTRY_FLAGS_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@PCI_BUSMAX = common dso_local global i32 0, align 4
@mpt_generate_pci_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @mpt_build_ioint_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_build_ioint_entries(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %56, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %59

10:                                               ; preds = %7
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = call i32 @memset(%struct.TYPE_5__* %11, i32 0, i32 40)
  %13 = load i32, i32* @MPCT_ENTRY_INT, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %46 [
    i32 0, label %25
    i32 2, label %29
    i32 128, label %35
  ]

25:                                               ; preds = %10
  %26 = load i8*, i8** @INTENTRY_TYPE_EXTINT, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  br label %53

29:                                               ; preds = %10
  %30 = load i8*, i8** @INTENTRY_TYPE_INT, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  store i32 0, i32* %34, align 4
  br label %53

35:                                               ; preds = %10
  %36 = load i32, i32* @INTENTRY_FLAGS_POLARITY_ACTIVELO, align 4
  %37 = load i32, i32* @INTENTRY_FLAGS_TRIGGER_LEVEL, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** @INTENTRY_TYPE_INT, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i32 128, i32* %45, align 4
  br label %53

46:                                               ; preds = %10
  %47 = load i8*, i8** @INTENTRY_TYPE_INT, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %35, %29, %25
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 1
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %3, align 8
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %7

59:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %68, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @PCI_BUSMAX, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @mpt_generate_pci_int, align 4
  %67 = call i32 @pci_walk_lintr(i32 %65, i32 %66, %struct.TYPE_5__** %3)
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %60

71:                                               ; preds = %60
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @pci_walk_lintr(i32, i32, %struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
