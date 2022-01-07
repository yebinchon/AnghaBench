; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_read_block_pio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_read_block_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32, i32, i64 }

@SDHCI_QUIRK_BROKEN_TIMINGS = common dso_local global i32 0, align 4
@SDHCI_BUFFER = common dso_local global i32 0, align 4
@MMC_DATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*)* @sdhci_read_block_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_read_block_pio(%struct.sdhci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %2, align 8
  %6 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %7 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %14 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 %15
  store i8* %17, i8** %4, align 8
  %18 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %19 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %26 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = call i64 @min(i32 512, i64 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %32 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %36 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SDHCI_QUIRK_BROKEN_TIMINGS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = call i32 @DELAY(i32 10)
  br label %43

43:                                               ; preds = %41, %1
  %44 = load i8*, i8** %4, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = and i64 %45, 3
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %52, %48
  %50 = load i64, i64* %5, align 8
  %51 = icmp ugt i64 %50, 3
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %54 = load i32, i32* @SDHCI_BUFFER, align 4
  %55 = call i32 @RD4(%struct.sdhci_slot* %53, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 %57, i8* %59, align 1
  %60 = load i32, i32* %3, align 4
  %61 = ashr i32 %60, 8
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8 %62, i8* %64, align 1
  %65 = load i32, i32* %3, align 4
  %66 = ashr i32 %65, 16
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  store i8 %67, i8* %69, align 1
  %70 = load i32, i32* %3, align 4
  %71 = ashr i32 %70, 24
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 3
  store i8 %72, i8* %74, align 1
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  store i8* %76, i8** %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = sub i64 %77, 4
  store i64 %78, i64* %5, align 8
  br label %49

79:                                               ; preds = %49
  br label %90

80:                                               ; preds = %43
  %81 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %82 = load i32, i32* @SDHCI_BUFFER, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i64, i64* %5, align 8
  %86 = lshr i64 %85, 2
  %87 = call i32 @RD_MULTI_4(%struct.sdhci_slot* %81, i32 %82, i32* %84, i64 %86)
  %88 = load i64, i64* %5, align 8
  %89 = and i64 %88, 3
  store i64 %89, i64* %5, align 8
  br label %90

90:                                               ; preds = %80, %79
  %91 = load i64, i64* %5, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %95 = load i32, i32* @SDHCI_BUFFER, align 4
  %96 = call i32 @RD4(%struct.sdhci_slot* %94, i32 %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %100, %93
  %98 = load i64, i64* %5, align 8
  %99 = icmp ugt i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %4, align 8
  store i8 %102, i8* %103, align 1
  %105 = load i32, i32* %3, align 4
  %106 = ashr i32 %105, 8
  store i32 %106, i32* %3, align 4
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %5, align 8
  br label %97

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %90
  ret void
}

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @RD4(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @RD_MULTI_4(%struct.sdhci_slot*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
