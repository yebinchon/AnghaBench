; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ismt/extr_ismt.c_ismt_alloc_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ismt/extr_ismt.c_ismt_alloc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ismt_desc = type { i32 }
%struct.ismt_softc = type { i64, i64, %struct.ismt_desc* }

@curthread = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"curthread %p did not request bus (%p has reserved)\0A\00", align 1
@ISMT_DESC_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ismt_desc* (%struct.ismt_softc*)* @ismt_alloc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ismt_desc* @ismt_alloc_desc(%struct.ismt_softc* %0) #0 {
  %2 = alloca %struct.ismt_softc*, align 8
  %3 = alloca %struct.ismt_desc*, align 8
  store %struct.ismt_softc* %0, %struct.ismt_softc** %2, align 8
  %4 = load %struct.ismt_softc*, %struct.ismt_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @curthread, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* @curthread, align 8
  %11 = load %struct.ismt_softc*, %struct.ismt_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @KASSERT(i32 %9, i8* %14)
  %16 = load %struct.ismt_softc*, %struct.ismt_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %16, i32 0, i32 2
  %18 = load %struct.ismt_desc*, %struct.ismt_desc** %17, align 8
  %19 = load %struct.ismt_softc*, %struct.ismt_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %18, i64 %21
  store %struct.ismt_desc* %23, %struct.ismt_desc** %3, align 8
  %24 = load %struct.ismt_softc*, %struct.ismt_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ISMT_DESC_ENTRIES, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.ismt_softc*, %struct.ismt_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.ismt_desc*, %struct.ismt_desc** %3, align 8
  %34 = call i32 @memset(%struct.ismt_desc* %33, i32 0, i32 4)
  %35 = load %struct.ismt_desc*, %struct.ismt_desc** %3, align 8
  ret %struct.ismt_desc* %35
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memset(%struct.ismt_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
