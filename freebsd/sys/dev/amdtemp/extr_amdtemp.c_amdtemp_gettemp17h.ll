; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_gettemp17h.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_gettemp17h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtemp_softc = type { i32, i32 }

@AMDTEMP_17H_CUR_TMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"amdsmn_read\00", align 1
@AMDTEMP_17H_CUR_TMP_RANGE_SEL = common dso_local global i32 0, align 4
@AMDTEMP_CURTMP_RANGE_ADJUST = common dso_local global i64 0, align 8
@AMDTEMP_ZERO_C_TO_K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @amdtemp_gettemp17h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdtemp_gettemp17h(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdtemp_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.amdtemp_softc* @device_get_softc(i32 %9)
  store %struct.amdtemp_softc* %10, %struct.amdtemp_softc** %5, align 8
  %11 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %5, align 8
  %12 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AMDTEMP_17H_CUR_TMP, align 4
  %15 = call i32 @amdsmn_read(i32 %13, i32 %14, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 21
  %22 = and i32 %21, 2047
  %23 = mul nsw i32 %22, 5
  %24 = sdiv i32 %23, 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @AMDTEMP_17H_CUR_TMP_RANGE_SEL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i64, i64* @AMDTEMP_CURTMP_RANGE_ADJUST, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %29, %2
  %36 = load i64, i64* @AMDTEMP_ZERO_C_TO_K, align 8
  %37 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %5, align 8
  %38 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 10
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %36, %41
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.amdtemp_softc* @device_get_softc(i32) #1

declare dso_local i32 @amdsmn_read(i32, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
