; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_pci.c_mpt_set_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_pci.c_mpt_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"msi_enable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*)* @mpt_set_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_set_options(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @device_get_name(i32 %6)
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = call i64 @resource_int_value(i32 %7, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %3)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %17, %14, %1
  store i32 -1, i32* %3, align 4
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_get_name(i32 %24)
  %26 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %27 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @device_get_unit(i32 %28)
  %30 = call i64 @resource_int_value(i32 %25, i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = icmp sle i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %41 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %43 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %38, %35, %32, %21
  store i32 0, i32* %3, align 4
  %45 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %46 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %45, i32 0, i32 3
  store i32 0, i32* %46, align 4
  %47 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %53 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %56 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @device_get_name(i32 %57)
  %59 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %60 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @device_get_unit(i32 %61)
  %63 = call i64 @resource_int_value(i32 %58, i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %68 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %54
  ret void
}

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
