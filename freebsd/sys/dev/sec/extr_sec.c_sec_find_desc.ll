; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_find_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_find_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_desc = type { i64 }
%struct.sec_softc = type { %struct.sec_desc* }

@descriptors = common dso_local global i32 0, align 4
@SEC_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sec_desc* (%struct.sec_softc*, i64)* @sec_find_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sec_desc* @sec_find_desc(%struct.sec_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.sec_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sec_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.sec_softc* %0, %struct.sec_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.sec_desc* null, %struct.sec_desc** %5, align 8
  %7 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %8 = load i32, i32* @descriptors, align 4
  %9 = call i32 @SEC_LOCK_ASSERT(%struct.sec_softc* %7, i32 %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %33, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SEC_CHANNELS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %16 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %15, i32 0, i32 0
  %17 = load %struct.sec_desc*, %struct.sec_desc** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %17, i64 %19
  %21 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %27 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %26, i32 0, i32 0
  %28 = load %struct.sec_desc*, %struct.sec_desc** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %28, i64 %30
  store %struct.sec_desc* %31, %struct.sec_desc** %5, align 8
  br label %36

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %10

36:                                               ; preds = %25, %10
  %37 = load %struct.sec_desc*, %struct.sec_desc** %5, align 8
  ret %struct.sec_desc* %37
}

declare dso_local i32 @SEC_LOCK_ASSERT(%struct.sec_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
