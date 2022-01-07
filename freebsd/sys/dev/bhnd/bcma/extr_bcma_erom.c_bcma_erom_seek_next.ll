; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_seek_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_seek_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_erom = type { i32 }

@BCMA_EROM_TABLE_EOF = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENTRY_ISVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENTRY_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_erom*, i32)* @bcma_erom_seek_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_seek_next(%struct.bcma_erom* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcma_erom*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bcma_erom* %0, %struct.bcma_erom** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %60, %2
  %9 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %10 = call i32 @bcma_erom_peek32(%struct.bcma_erom* %9, i64* %6)
  store i32 %10, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %61

13:                                               ; preds = %8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @BCMA_EROM_TABLE_EOF, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @ENOENT, align 4
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @ENTRY_ISVALID, align 4
  %22 = call i32 @BCMA_EROM_GET_ATTR(i64 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %63

26:                                               ; preds = %19
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @ENTRY_TYPE, align 4
  %29 = call i32 @BCMA_EROM_GET_ATTR(i64 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %63

33:                                               ; preds = %26
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @ENTRY_TYPE, align 4
  %36 = call i32 @BCMA_EROM_GET_ATTR(i64 %34, i32 %35)
  switch i32 %36, label %58 [
    i32 130, label %37
    i32 129, label %44
    i32 128, label %51
  ]

37:                                               ; preds = %33
  %38 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %39 = call i32 @bcma_erom_skip_core(%struct.bcma_erom* %38)
  store i32 %39, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %63

43:                                               ; preds = %37
  br label %60

44:                                               ; preds = %33
  %45 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %46 = call i32 @bcma_erom_skip_mport(%struct.bcma_erom* %45)
  store i32 %46, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %44
  br label %60

51:                                               ; preds = %33
  %52 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %53 = call i32 @bcma_erom_skip_sport_region(%struct.bcma_erom* %52)
  store i32 %53, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %51
  br label %60

58:                                               ; preds = %33
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %57, %50, %43
  br label %8

61:                                               ; preds = %8
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %58, %55, %48, %41, %32, %24, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @bcma_erom_peek32(%struct.bcma_erom*, i64*) #1

declare dso_local i32 @BCMA_EROM_GET_ATTR(i64, i32) #1

declare dso_local i32 @bcma_erom_skip_core(%struct.bcma_erom*) #1

declare dso_local i32 @bcma_erom_skip_mport(%struct.bcma_erom*) #1

declare dso_local i32 @bcma_erom_skip_sport_region(%struct.bcma_erom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
