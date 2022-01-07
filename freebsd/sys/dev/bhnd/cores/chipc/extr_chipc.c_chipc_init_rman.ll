; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_init_rman.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_init_rman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32, i64 }

@BHND_PORT_DEVICE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ChipCommon Device Memory\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"could not initialize mem_rman: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"region init failed for %s%u: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chipc_softc*)* @chipc_init_rman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_init_rman(%struct.chipc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.chipc_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.chipc_softc* %0, %struct.chipc_softc** %3, align 8
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %10 = load i32, i32* @BHND_PORT_DEVICE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %12 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %15 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %16 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @RMAN_ARRAY, align 4
  %19 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %25, i32 0, i32 1
  %27 = call i32 @rman_init(%struct.TYPE_2__* %26)
  store i32 %27, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %31 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %87

36:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %79, %36
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %40 = call i64 @nitems(i32* %39)
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %37
  %43 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @bhnd_get_port_count(i32 %45, i32 %48)
  store i64 %49, i64* %4, align 8
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %75, %42
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @chipc_rman_init_regions(%struct.chipc_softc* %55, i32 %58, i64 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %54
  %64 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %65 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bhnd_port_type_name(i32 %69)
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %70, i64 %71, i32 %72)
  br label %83

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  br label %50

78:                                               ; preds = %50
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %7, align 8
  br label %37

82:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %87

83:                                               ; preds = %63
  %84 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %85 = call i32 @chipc_free_rman(%struct.chipc_softc* %84)
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %82, %29
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @rman_init(%struct.TYPE_2__*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i64 @nitems(i32*) #1

declare dso_local i64 @bhnd_get_port_count(i32, i32) #1

declare dso_local i32 @chipc_rman_init_regions(%struct.chipc_softc*, i32, i64) #1

declare dso_local i32 @bhnd_port_type_name(i32) #1

declare dso_local i32 @chipc_free_rman(%struct.chipc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
