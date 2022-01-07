; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_sas_log_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_sas_log_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%union.loginfo_type = type { i32 }
%struct.anon = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IOP\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"PL\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"IR\00", align 1
@MPR_LOG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"log_info(0x%08x): originator(%s), code(0x%02x), sub_code(0x%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpr_softc*, i32)* @mpr_sas_log_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpr_sas_log_info(%struct.mpr_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.loginfo_type, align 4
  %6 = alloca i8*, align 8
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = bitcast %union.loginfo_type* %5 to i32*
  store i32 %7, i32* %8, align 4
  %9 = bitcast %union.loginfo_type* %5 to %struct.anon*
  %10 = bitcast %struct.anon* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 28
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %54

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 823590912
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %54

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 30050000
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 823394304
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 823328768
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %19
  br label %54

29:                                               ; preds = %25
  %30 = bitcast %union.loginfo_type* %5 to %struct.anon*
  %31 = bitcast %struct.anon* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 4
  %34 = ashr i32 %33, 28
  switch i32 %34, label %38 [
    i32 0, label %35
    i32 1, label %36
    i32 2, label %37
  ]

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %38

36:                                               ; preds = %29
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %38

37:                                               ; preds = %29
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %38

38:                                               ; preds = %29, %37, %36, %35
  %39 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %40 = load i32, i32* @MPR_LOG, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = bitcast %union.loginfo_type* %5 to %struct.anon*
  %44 = bitcast %struct.anon* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = ashr i32 %46, 24
  %48 = bitcast %union.loginfo_type* %5 to %struct.anon*
  %49 = bitcast %struct.anon* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 16
  %52 = ashr i32 %51, 16
  %53 = call i32 @mpr_dprint(%struct.mpr_softc* %39, i32 %40, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %41, i8* %42, i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %38, %28, %18, %14
  ret void
}

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
