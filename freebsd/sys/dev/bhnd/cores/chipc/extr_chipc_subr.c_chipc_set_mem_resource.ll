; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_subr.c_chipc_set_mem_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_subr.c_chipc_set_mem_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"not a direct child\00", align 1
@BHND_PORT_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"lookup of %s%u.%u failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"%s%u.%u region cannot map requested range %#jx+%#jx\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chipc_set_mem_resource(%struct.chipc_softc* %0, i32 %1, i32 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.chipc_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.chipc_softc* %0, %struct.chipc_softc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @device_get_parent(i32 %20)
  %22 = load %struct.chipc_softc*, %struct.chipc_softc** %9, align 8
  %23 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @RMAN_IS_DEFAULT_RANGE(i64 %28, i64 %29)
  store i32 %30, i32* %18, align 4
  %31 = load %struct.chipc_softc*, %struct.chipc_softc** %9, align 8
  %32 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @BHND_PORT_DEVICE, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @bhnd_get_region_addr(i64 %33, i32 %34, i32 %35, i32 %36, i64* %16, i64* %17)
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %7
  %41 = load %struct.chipc_softc*, %struct.chipc_softc** %9, align 8
  %42 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @BHND_PORT_DEVICE, align 4
  %45 = call i32 @bhnd_port_type_name(i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = call i32 (i64, i8*, i32, i32, i32, i64, ...) @device_printf(i64 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %47, i64 %49)
  %51 = load i32, i32* %19, align 4
  store i32 %51, i32* %8, align 4
  br label %88

52:                                               ; preds = %7
  %53 = load i32, i32* %18, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  store i64 0, i64* %12, align 8
  %56 = load i64, i64* %17, align 8
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %17, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %17, align 8
  %63 = load i64, i64* %12, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load i64, i64* %13, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61, %57
  %68 = load %struct.chipc_softc*, %struct.chipc_softc** %9, align 8
  %69 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @BHND_PORT_DEVICE, align 4
  %72 = call i32 @bhnd_port_type_name(i32 %71)
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 (i64, i8*, i32, i32, i32, i64, ...) @device_printf(i64 %70, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %73, i32 %74, i64 %75, i64 %76)
  %78 = load i32, i32* @ERANGE, align 4
  store i32 %78, i32* %8, align 4
  br label %88

79:                                               ; preds = %61
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @SYS_RES_MEMORY, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @bus_set_resource(i32 %80, i32 %81, i32 %82, i64 %85, i64 %86)
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %79, %67, %40
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @device_get_parent(i32) #1

declare dso_local i32 @RMAN_IS_DEFAULT_RANGE(i64, i64) #1

declare dso_local i32 @bhnd_get_region_addr(i64, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @device_printf(i64, i8*, i32, i32, i32, i64, ...) #1

declare dso_local i32 @bhnd_port_type_name(i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
