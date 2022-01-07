; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_mcast_validate_e1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_mcast_validate_e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_mcast_ramrod_params = type { i32, %struct.ecore_mcast_obj* }
%struct.ecore_mcast_obj = type { i32 (%struct.ecore_mcast_obj*)*, i64, i32, i32 (%struct.ecore_mcast_obj*, i64)* }

@.str = private unnamed_addr constant [34 x i8] c"Command %d, p->mcast_list_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Can't configure more than %d multicast MACs on 57710\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"p->mcast_list_len=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Unknown command: %d\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*, i32)* @ecore_mcast_validate_e1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_mcast_validate_e1(%struct.bxe_softc* %0, %struct.ecore_mcast_ramrod_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.ecore_mcast_ramrod_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_mcast_obj*, align 8
  %9 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.ecore_mcast_ramrod_params* %1, %struct.ecore_mcast_ramrod_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %11 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %10, i32 0, i32 1
  %12 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %11, align 8
  store %struct.ecore_mcast_obj* %12, %struct.ecore_mcast_obj** %8, align 8
  %13 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %14 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %13, i32 0, i32 0
  %15 = load i32 (%struct.ecore_mcast_obj*)*, i32 (%struct.ecore_mcast_obj*)** %14, align 8
  %16 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %17 = call i32 %15(%struct.ecore_mcast_obj* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %74 [
    i32 129, label %19
    i32 128, label %25
    i32 131, label %36
    i32 130, label %36
  ]

19:                                               ; preds = %3
  %20 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %21 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %20, i32 0, i32 3
  %22 = load i32 (%struct.ecore_mcast_obj*, i64)*, i32 (%struct.ecore_mcast_obj*, i64)** %21, align 8
  %23 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %24 = call i32 %22(%struct.ecore_mcast_obj* %23, i64 0)
  br label %25

25:                                               ; preds = %3, %19
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %33 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.bxe_softc*, i8*, i64, ...) @ECORE_MSG(%struct.bxe_softc* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %34)
  br label %78

36:                                               ; preds = %3, %3
  %37 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %38 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %42 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %47 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %51, i32* %4, align 4
  br label %95

52:                                               ; preds = %36
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %54 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %55 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = call i32 (%struct.bxe_softc*, i8*, i64, ...) @ECORE_MSG(%struct.bxe_softc* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %60 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %52
  %64 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %65 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %64, i32 0, i32 3
  %66 = load i32 (%struct.ecore_mcast_obj*, i64)*, i32 (%struct.ecore_mcast_obj*, i64)** %65, align 8
  %67 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %68 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %69 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = call i32 %66(%struct.ecore_mcast_obj* %67, i64 %71)
  br label %73

73:                                               ; preds = %63, %52
  br label %78

74:                                               ; preds = %3
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %77, i32* %4, align 4
  br label %95

78:                                               ; preds = %73, %25
  %79 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %80 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %85 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %88 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 8
  br label %93

93:                                               ; preds = %83, %78
  %94 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %74, %45
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i64, ...) #1

declare dso_local i32 @ECORE_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
