; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_subr.c_bcma_dinfo_init_intrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_subr.c_bcma_dinfo_init_intrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_devinfo = type { i64, i32, i32* }
%struct.bcma_intr = type { i32 }

@BCMA_DMP_CONFIG = common dso_local global i32 0, align 4
@BCMA_DMP_CFG_OOB = common dso_local global i32 0, align 4
@BCMA_OOB_BANK_INTR = common dso_local global i32 0, align 4
@BCMA_OOB_NUM_SEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"ignoring invalid OOBOUTWIDTH for core %u: %#x\0A\00", align 1
@UINT_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@BCMA_DMP_OOBSEL_BUSLINE_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"failed allocating interrupt descriptor %#x for core %u\0A\00", align 1
@i_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.bcma_devinfo*)* @bcma_dinfo_init_intrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_dinfo_init_intrs(i32 %0, i32 %1, %struct.bcma_devinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcma_devinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bcma_intr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.bcma_devinfo* %2, %struct.bcma_devinfo** %7, align 8
  %14 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %15 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

19:                                               ; preds = %3
  %20 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %21 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @BCMA_DMP_CONFIG, align 4
  %24 = call i64 @bhnd_bus_read_4(i32* %22, i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* @BCMA_DMP_CFG_OOB, align 4
  %27 = call i32 @BCMA_DMP_GET_FLAG(i64 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %100

30:                                               ; preds = %19
  %31 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %32 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @BCMA_OOB_BANK_INTR, align 4
  %35 = call i32 @BCMA_DMP_OOB_OUTWIDTH(i32 %34)
  %36 = call i64 @bhnd_bus_read_4(i32* %33, i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @BCMA_OOB_NUM_SEL, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %43 = call i64 @BCMA_DINFO_COREIDX(%struct.bcma_devinfo* %42)
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44)
  store i32 0, i32* %4, align 4
  br label %100

46:                                               ; preds = %30
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %96, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %47
  %52 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %53 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UINT_MAX, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOMEM, align 4
  store i32 %58, i32* %4, align 4
  br label %100

59:                                               ; preds = %51
  %60 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %61 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @BCMA_OOB_BANK_INTR, align 4
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @BCMA_DMP_OOBSELOUT(i32 %63, i64 %64)
  %66 = call i64 @bhnd_bus_read_4(i32* %62, i32 %65)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i64 @BCMA_DMP_OOBSEL_SHIFT(i64 %68)
  %70 = ashr i64 %67, %69
  %71 = load i64, i64* @BCMA_DMP_OOBSEL_BUSLINE_MASK, align 8
  %72 = and i64 %70, %71
  store i64 %72, i64* %13, align 8
  %73 = load i32, i32* @BCMA_OOB_BANK_INTR, align 4
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call %struct.bcma_intr* @bcma_alloc_intr(i32 %73, i64 %74, i64 %75)
  store %struct.bcma_intr* %76, %struct.bcma_intr** %11, align 8
  %77 = load %struct.bcma_intr*, %struct.bcma_intr** %11, align 8
  %78 = icmp eq %struct.bcma_intr* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %59
  %80 = load i32, i32* %5, align 4
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %83 = call i64 @BCMA_DINFO_COREIDX(%struct.bcma_devinfo* %82)
  %84 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %81, i64 %83)
  %85 = load i32, i32* @ENOMEM, align 4
  store i32 %85, i32* %4, align 4
  br label %100

86:                                               ; preds = %59
  %87 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %88 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %87, i32 0, i32 1
  %89 = load %struct.bcma_intr*, %struct.bcma_intr** %11, align 8
  %90 = load i32, i32* @i_link, align 4
  %91 = call i32 @STAILQ_INSERT_HEAD(i32* %88, %struct.bcma_intr* %89, i32 %90)
  %92 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %93 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %86
  %97 = load i64, i64* %10, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %10, align 8
  br label %47

99:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %79, %57, %40, %29, %18
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @bhnd_bus_read_4(i32*, i32) #1

declare dso_local i32 @BCMA_DMP_GET_FLAG(i64, i32) #1

declare dso_local i32 @BCMA_DMP_OOB_OUTWIDTH(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #1

declare dso_local i64 @BCMA_DINFO_COREIDX(%struct.bcma_devinfo*) #1

declare dso_local i32 @BCMA_DMP_OOBSELOUT(i32, i64) #1

declare dso_local i64 @BCMA_DMP_OOBSEL_SHIFT(i64) #1

declare dso_local %struct.bcma_intr* @bcma_alloc_intr(i32, i64, i64) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.bcma_intr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
