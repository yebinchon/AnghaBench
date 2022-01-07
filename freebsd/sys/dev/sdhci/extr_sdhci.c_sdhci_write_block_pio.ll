; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_write_block_pio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_write_block_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32, i32, i64 }

@SDHCI_BUFFER = common dso_local global i32 0, align 4
@MMC_DATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*)* @sdhci_write_block_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_write_block_pio(%struct.sdhci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %7 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %14 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 %15
  store i8* %17, i8** %4, align 8
  %18 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %19 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %26 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = call i64 @min(i32 512, i64 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %32 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = and i64 %36, 3
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %43, %39
  %41 = load i64, i64* %5, align 8
  %42 = icmp ugt i64 %41, 3
  br i1 %42, label %43, label %74

43:                                               ; preds = %40
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = shl i32 %51, 8
  %53 = add nsw i32 %47, %52
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = shl i32 %57, 16
  %59 = add nsw i32 %53, %58
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = shl i32 %63, 24
  %65 = add nsw i32 %59, %64
  store i32 %65, i32* %3, align 4
  %66 = load i64, i64* %5, align 8
  %67 = sub i64 %66, 4
  store i64 %67, i64* %5, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  store i8* %69, i8** %4, align 8
  %70 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %71 = load i32, i32* @SDHCI_BUFFER, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @WR4(%struct.sdhci_slot* %70, i32 %71, i32 %72)
  br label %40

74:                                               ; preds = %40
  br label %85

75:                                               ; preds = %1
  %76 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %77 = load i32, i32* @SDHCI_BUFFER, align 4
  %78 = load i8*, i8** %4, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load i64, i64* %5, align 8
  %81 = lshr i64 %80, 2
  %82 = call i32 @WR_MULTI_4(%struct.sdhci_slot* %76, i32 %77, i32* %79, i64 %81)
  %83 = load i64, i64* %5, align 8
  %84 = and i64 %83, 3
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %75, %74
  %86 = load i64, i64* %5, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %92, %88
  %90 = load i64, i64* %5, align 8
  %91 = icmp ugt i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i32, i32* %3, align 4
  %94 = shl i32 %93, 8
  store i32 %94, i32* %3, align 4
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %4, align 8
  %97 = load i8, i8* %95, align 1
  %98 = sext i8 %97 to i32
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %3, align 4
  %101 = load i64, i64* %5, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* %5, align 8
  br label %89

103:                                              ; preds = %89
  %104 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %105 = load i32, i32* @SDHCI_BUFFER, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @WR4(%struct.sdhci_slot* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %85
  ret void
}

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @WR4(%struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @WR_MULTI_4(%struct.sdhci_slot*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
