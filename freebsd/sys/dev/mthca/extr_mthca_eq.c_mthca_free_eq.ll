; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_eq.c_mthca_free_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_eq.c_mthca_free_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mthca_eq = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mthca_mailbox = type { i64 }

@MTHCA_EQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"HW2SW_EQ returned %d\0A\00", align 1
@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, %struct.mthca_eq*)* @mthca_free_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mthca_free_eq(%struct.mthca_dev* %0, %struct.mthca_eq* %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_eq*, align 8
  %5 = alloca %struct.mthca_mailbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store %struct.mthca_eq* %1, %struct.mthca_eq** %4, align 8
  %9 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %10 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MTHCA_EQ_ENTRY_SIZE, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = add nsw i32 %13, %14
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %19, i32 %20)
  store %struct.mthca_mailbox* %21, %struct.mthca_mailbox** %5, align 8
  %22 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %5, align 8
  %23 = call i64 @IS_ERR(%struct.mthca_mailbox* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %90

26:                                               ; preds = %2
  %27 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %28 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %5, align 8
  %29 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %30 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mthca_HW2SW_EQ(%struct.mthca_dev* %27, %struct.mthca_mailbox* %28, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @mthca_warn(%struct.mthca_dev* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %26
  %40 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %41 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = xor i32 %42, -1
  %44 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %50 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %51 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %50, i32 0, i32 2
  %52 = call i32 @mthca_free_mr(%struct.mthca_dev* %49, i32* %51)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %79, %39
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %59 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %63 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %71 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = load i32, i32* @mapping, align 4
  %77 = call i32 @dma_unmap_addr(%struct.TYPE_5__* %75, i32 %76)
  %78 = call i32 @pci_free_consistent(i32 %60, i32 %61, i32 %69, i32 %77)
  br label %79

79:                                               ; preds = %57
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %53

82:                                               ; preds = %53
  %83 = load %struct.mthca_eq*, %struct.mthca_eq** %4, align 8
  %84 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @kfree(%struct.TYPE_5__* %85)
  %87 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %88 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %5, align 8
  %89 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %87, %struct.mthca_mailbox* %88)
  br label %90

90:                                               ; preds = %82, %25
  ret void
}

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_HW2SW_EQ(%struct.mthca_dev*, %struct.mthca_mailbox*, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @mthca_free_mr(%struct.mthca_dev*, i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
