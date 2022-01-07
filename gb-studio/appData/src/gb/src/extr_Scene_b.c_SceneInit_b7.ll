; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneInit_b7.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneInit_b7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@DATA_PTRS_BANK = common dso_local global i32 0, align 4
@tileset_bank_ptrs = common dso_local global i32* null, align 8
@tileset_index = common dso_local global i64 0, align 8
@bank_data_ptrs = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneInit_b7() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @DATA_PTRS_BANK, align 4
  %5 = load i32*, i32** @tileset_bank_ptrs, align 8
  %6 = load i64, i64* @tileset_index, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = call i32 @ReadBankedBankPtr(i32 %4, %struct.TYPE_3__* %1, i32* %7)
  %9 = load i64*, i64** @bank_data_ptrs, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %13, %15
  store i64 %16, i64* %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @ReadBankedUBYTE(i64 %18, i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i64, i64* %2, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @SetBankedBkgData(i64 %22, i32 0, i32 %23, i64 %25)
  ret void
}

declare dso_local i32 @ReadBankedBankPtr(i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @ReadBankedUBYTE(i64, i64) #1

declare dso_local i32 @SetBankedBkgData(i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
