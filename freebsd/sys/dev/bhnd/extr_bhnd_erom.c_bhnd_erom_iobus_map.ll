; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iobus_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iobus_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_erom_io = type { i32 }
%struct.bhnd_erom_iobus = type { i64, i64, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@BHND_ADDR_MAX = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_erom_io*, i64, i64)* @bhnd_erom_iobus_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_erom_iobus_map(%struct.bhnd_erom_io* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_erom_io*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bhnd_erom_iobus*, align 8
  store %struct.bhnd_erom_io* %0, %struct.bhnd_erom_io** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %5, align 8
  %10 = bitcast %struct.bhnd_erom_io* %9 to %struct.bhnd_erom_iobus*
  store %struct.bhnd_erom_iobus* %10, %struct.bhnd_erom_iobus** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %80

15:                                               ; preds = %3
  %16 = load i64, i64* @BHND_ADDR_MAX, align 8
  %17 = load i64, i64* %7, align 8
  %18 = sub nsw i64 %16, %17
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %80

23:                                               ; preds = %15
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %26 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %32 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %23
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %4, align 4
  br label %80

37:                                               ; preds = %29
  %38 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %39 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %43 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = sub nsw i64 %40, %45
  %47 = load i64, i64* %7, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %4, align 4
  br label %80

51:                                               ; preds = %37
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %54 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load i64, i64* @BUS_SPACE_MAXSIZE, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %4, align 4
  br label %80

61:                                               ; preds = %51
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @BUS_SPACE_MAXSIZE, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %4, align 4
  br label %80

67:                                               ; preds = %61
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %70 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %74 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %77 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  %78 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %79 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %67, %65, %59, %49, %35, %21, %13
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
