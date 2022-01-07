; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_subr.c_chipc_set_irq_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_subr.c_chipc_set_irq_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i64 }
%struct.chipc_devinfo = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"not a direct child\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"irq already mapped for child\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to map intr %u: %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"failed to set child irq resource %d to %ju: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chipc_set_irq_resource(%struct.chipc_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.chipc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.chipc_devinfo*, align 8
  %11 = alloca i32, align 4
  store %struct.chipc_softc* %0, %struct.chipc_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @device_get_parent(i32 %12)
  %14 = load %struct.chipc_softc*, %struct.chipc_softc** %6, align 8
  %15 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.chipc_devinfo* @device_get_ivars(i32 %20)
  store %struct.chipc_devinfo* %21, %struct.chipc_devinfo** %10, align 8
  %22 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %10, align 8
  %23 = getelementptr inbounds %struct.chipc_devinfo, %struct.chipc_devinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.chipc_softc*, %struct.chipc_softc** %6, align 8
  %28 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i64, i8*, ...) @device_printf(i64 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %5, align 4
  br label %80

32:                                               ; preds = %4
  %33 = load %struct.chipc_softc*, %struct.chipc_softc** %6, align 8
  %34 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %10, align 8
  %38 = getelementptr inbounds %struct.chipc_devinfo, %struct.chipc_devinfo* %37, i32 0, i32 1
  %39 = call i32 @bhnd_map_intr(i64 %35, i32 %36, i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load %struct.chipc_softc*, %struct.chipc_softc** %6, align 8
  %43 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i64, i8*, ...) @device_printf(i64 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %80

49:                                               ; preds = %32
  %50 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %10, align 8
  %51 = getelementptr inbounds %struct.chipc_devinfo, %struct.chipc_devinfo* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SYS_RES_IRQ, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %10, align 8
  %56 = getelementptr inbounds %struct.chipc_devinfo, %struct.chipc_devinfo* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bus_set_resource(i32 %52, i32 %53, i32 %54, i32 %57, i32 1)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %49
  %62 = load %struct.chipc_softc*, %struct.chipc_softc** %6, align 8
  %63 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %10, align 8
  %67 = getelementptr inbounds %struct.chipc_devinfo, %struct.chipc_devinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (i64, i8*, ...) @device_printf(i64 %64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %68, i32 %69)
  %71 = load %struct.chipc_softc*, %struct.chipc_softc** %6, align 8
  %72 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %10, align 8
  %75 = getelementptr inbounds %struct.chipc_devinfo, %struct.chipc_devinfo* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @bhnd_unmap_intr(i64 %73, i32 %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %61, %41, %26
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @device_get_parent(i32) #1

declare dso_local %struct.chipc_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @device_printf(i64, i8*, ...) #1

declare dso_local i32 @bhnd_map_intr(i64, i32, i32*) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bhnd_unmap_intr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
