; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_nvram_cfe.c_bcm_nvram_find_cfedev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_nvram_cfe.c_bcm_nvram_find_cfedev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_nvram_iocfe = type { i32 }

@nvram_cfe_fmts = common dso_local global i8** null, align 8
@nvram_cfe_devs = common dso_local global i8** null, align 8
@CFE_ERR_DEVNOTFOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cfe_getdevinfo(%s) failed: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_nvram_find_cfedev(%struct.bcm_nvram_iocfe* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_nvram_iocfe*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.bcm_nvram_iocfe* %0, %struct.bcm_nvram_iocfe** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %69, %2
  %13 = load i64, i64* %10, align 8
  %14 = load i8**, i8*** @nvram_cfe_fmts, align 8
  %15 = call i64 @nitems(i8** %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %12
  %18 = load i8**, i8*** @nvram_cfe_fmts, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32**, i32*** %5, align 8
  store i32* %22, i32** %23, align 8
  store i64 0, i64* %11, align 8
  br label %24

24:                                               ; preds = %65, %17
  %25 = load i64, i64* %11, align 8
  %26 = load i8**, i8*** @nvram_cfe_devs, align 8
  %27 = call i64 @nitems(i8** %26)
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %24
  %30 = load i8**, i8*** @nvram_cfe_devs, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @cfe_getdevinfo(i8* %34)
  store i32 %35, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @CFE_ERR_DEVNOTFOUND, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @BCM_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %37
  br label %65

46:                                               ; preds = %29
  %47 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @bcm_nvram_iocfe_init(%struct.bcm_nvram_iocfe* %47, i8* %48)
  store i32 %49, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %65

52:                                               ; preds = %46
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %56 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %55, i32 0, i32 0
  %57 = call i32 @bhnd_nvram_data_probe(i32* %54, i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %74

61:                                               ; preds = %52
  %62 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %63 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %62, i32 0, i32 0
  %64 = call i32 @bhnd_nvram_io_free(i32* %63)
  br label %65

65:                                               ; preds = %61, %51, %45
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %24

68:                                               ; preds = %24
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %12

72:                                               ; preds = %12
  %73 = load i32, i32* @ENODEV, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %60
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @nitems(i8**) #1

declare dso_local i32 @cfe_getdevinfo(i8*) #1

declare dso_local i32 @BCM_ERR(i8*, i8*, i32) #1

declare dso_local i32 @bcm_nvram_iocfe_init(%struct.bcm_nvram_iocfe*, i8*) #1

declare dso_local i32 @bhnd_nvram_data_probe(i32*, i32*) #1

declare dso_local i32 @bhnd_nvram_io_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
