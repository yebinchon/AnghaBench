; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_read_chipid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_read_chipid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_erom_io = type { i32 }
%struct.bhnd_chipid = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }

@CHIPC_ID = common dso_local global i32 0, align 4
@CHIPC_ID_CHIP = common dso_local global i32 0, align 4
@CHIPC_ID_PKG = common dso_local global i32 0, align 4
@CHIPC_ID_REV = common dso_local global i32 0, align 4
@CHIPC_ID_BUS = common dso_local global i32 0, align 4
@CHIPC_ID_NUMCORE = common dso_local global i32 0, align 4
@CHIPC_EROMPTR = common dso_local global i32 0, align 4
@CHIPC_CAPABILITIES = common dso_local global i32 0, align 4
@CHIPC_CAP_BKPLN64 = common dso_local global i32 0, align 4
@BHND_CAP_BP64 = common dso_local global i32 0, align 4
@CHIPC_CAP_PMU = common dso_local global i32 0, align 4
@BHND_CAP_PMU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_erom_read_chipid(%struct.bhnd_erom_io* %0, %struct.bhnd_chipid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_erom_io*, align 8
  %5 = alloca %struct.bhnd_chipid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bhnd_erom_io* %0, %struct.bhnd_erom_io** %4, align 8
  store %struct.bhnd_chipid* %1, %struct.bhnd_chipid** %5, align 8
  %11 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %4, align 8
  %12 = call i32 @bhnd_erom_io_tell(%struct.bhnd_erom_io* %11, i8** %6, i32* %7)
  store i32 %12, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %3, align 4
  br label %90

16:                                               ; preds = %2
  %17 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %4, align 8
  %18 = load i32, i32* @CHIPC_ID, align 4
  %19 = call i8* @bhnd_erom_io_read(%struct.bhnd_erom_io* %17, i32 %18, i32 4)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @CHIPC_ID_CHIP, align 4
  %23 = call i8* @CHIPC_GET_BITS(i32 %21, i32 %22)
  %24 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %5, align 8
  %25 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CHIPC_ID_PKG, align 4
  %28 = call i8* @CHIPC_GET_BITS(i32 %26, i32 %27)
  %29 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %5, align 8
  %30 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @CHIPC_ID_REV, align 4
  %33 = call i8* @CHIPC_GET_BITS(i32 %31, i32 %32)
  %34 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %5, align 8
  %35 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @CHIPC_ID_BUS, align 4
  %38 = call i8* @CHIPC_GET_BITS(i32 %36, i32 %37)
  %39 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %5, align 8
  %40 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @CHIPC_ID_NUMCORE, align 4
  %43 = call i8* @CHIPC_GET_BITS(i32 %41, i32 %42)
  %44 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %5, align 8
  %45 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %5, align 8
  %47 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @BHND_CHIPTYPE_HAS_EROM(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %16
  %52 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %4, align 8
  %53 = load i32, i32* @CHIPC_EROMPTR, align 4
  %54 = call i8* @bhnd_erom_io_read(%struct.bhnd_erom_io* %52, i32 %53, i32 4)
  %55 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %5, align 8
  %56 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %61

57:                                               ; preds = %16
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %5, align 8
  %60 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %4, align 8
  %63 = load i32, i32* @CHIPC_CAPABILITIES, align 4
  %64 = call i8* @bhnd_erom_io_read(%struct.bhnd_erom_io* %62, i32 %63, i32 4)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %5, align 8
  %67 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @CHIPC_CAP_BKPLN64, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load i32, i32* @BHND_CAP_BP64, align 4
  %74 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %5, align 8
  %75 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %61
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @CHIPC_CAP_PMU, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @BHND_CAP_PMU, align 4
  %85 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %5, align 8
  %86 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %78
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @bhnd_erom_io_tell(%struct.bhnd_erom_io*, i8**, i32*) #1

declare dso_local i8* @bhnd_erom_io_read(%struct.bhnd_erom_io*, i32, i32) #1

declare dso_local i8* @CHIPC_GET_BITS(i32, i32) #1

declare dso_local i64 @BHND_CHIPTYPE_HAS_EROM(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
