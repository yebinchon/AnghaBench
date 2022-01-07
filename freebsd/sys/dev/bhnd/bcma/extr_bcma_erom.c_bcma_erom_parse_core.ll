; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_parse_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_parse_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_erom = type { i32 }
%struct.bcma_erom_core = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@BCMA_EROM_TABLE_EOF = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unexpected EROM entry 0x%x (type=%s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@COREA_DESIGNER = common dso_local global i32 0, align 4
@COREA_ID = common dso_local global i32 0, align 4
@COREB_REV = common dso_local global i32 0, align 4
@COREB_NUM_MP = common dso_local global i32 0, align 4
@COREB_NUM_DP = common dso_local global i32 0, align 4
@COREB_NUM_WMP = common dso_local global i32 0, align 4
@COREB_NUM_WSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_erom*, %struct.bcma_erom_core*)* @bcma_erom_parse_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_parse_core(%struct.bcma_erom* %0, %struct.bcma_erom_core* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcma_erom*, align 8
  %5 = alloca %struct.bcma_erom_core*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bcma_erom* %0, %struct.bcma_erom** %4, align 8
  store %struct.bcma_erom_core* %1, %struct.bcma_erom_core** %5, align 8
  %8 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %9 = call i32 @bcma_erom_read32(%struct.bcma_erom* %8, i64* %6)
  store i32 %9, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %3, align 4
  br label %80

13:                                               ; preds = %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @BCMA_EROM_TABLE_EOF, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @ENOENT, align 4
  store i32 %18, i32* %3, align 4
  br label %80

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @CORE, align 4
  %22 = call i32 @BCMA_EROM_ENTRY_IS(i64 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @bcma_erom_entry_type_name(i64 %27)
  %29 = call i32 @EROM_LOG(%struct.bcma_erom* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %80

31:                                               ; preds = %19
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @COREA_DESIGNER, align 4
  %34 = call i8* @BCMA_EROM_GET_ATTR(i64 %32, i32 %33)
  %35 = load %struct.bcma_erom_core*, %struct.bcma_erom_core** %5, align 8
  %36 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @COREA_ID, align 4
  %39 = call i8* @BCMA_EROM_GET_ATTR(i64 %37, i32 %38)
  %40 = load %struct.bcma_erom_core*, %struct.bcma_erom_core** %5, align 8
  %41 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %43 = call i32 @bcma_erom_read32(%struct.bcma_erom* %42, i64* %6)
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %80

47:                                               ; preds = %31
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* @CORE, align 4
  %50 = call i32 @BCMA_EROM_ENTRY_IS(i64 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %3, align 4
  br label %80

54:                                               ; preds = %47
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* @COREB_REV, align 4
  %57 = call i8* @BCMA_EROM_GET_ATTR(i64 %55, i32 %56)
  %58 = load %struct.bcma_erom_core*, %struct.bcma_erom_core** %5, align 8
  %59 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @COREB_NUM_MP, align 4
  %62 = call i8* @BCMA_EROM_GET_ATTR(i64 %60, i32 %61)
  %63 = load %struct.bcma_erom_core*, %struct.bcma_erom_core** %5, align 8
  %64 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* @COREB_NUM_DP, align 4
  %67 = call i8* @BCMA_EROM_GET_ATTR(i64 %65, i32 %66)
  %68 = load %struct.bcma_erom_core*, %struct.bcma_erom_core** %5, align 8
  %69 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* @COREB_NUM_WMP, align 4
  %72 = call i8* @BCMA_EROM_GET_ATTR(i64 %70, i32 %71)
  %73 = load %struct.bcma_erom_core*, %struct.bcma_erom_core** %5, align 8
  %74 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* @COREB_NUM_WSP, align 4
  %77 = call i8* @BCMA_EROM_GET_ATTR(i64 %75, i32 %76)
  %78 = load %struct.bcma_erom_core*, %struct.bcma_erom_core** %5, align 8
  %79 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %54, %52, %45, %24, %17, %11
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @bcma_erom_read32(%struct.bcma_erom*, i64*) #1

declare dso_local i32 @BCMA_EROM_ENTRY_IS(i64, i32) #1

declare dso_local i32 @EROM_LOG(%struct.bcma_erom*, i8*, i64, i32) #1

declare dso_local i32 @bcma_erom_entry_type_name(i64) #1

declare dso_local i8* @BCMA_EROM_GET_ATTR(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
