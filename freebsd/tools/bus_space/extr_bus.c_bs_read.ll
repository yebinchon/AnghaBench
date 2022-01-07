; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_bus.c_bs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_bus.c_bs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, i8*, i32 }

@ESPIPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bs_read(i32 %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.resource* @rid_lookup(i32 %14)
  store %struct.resource* %15, %struct.resource** %10, align 8
  %16 = load %struct.resource*, %struct.resource** %10, align 8
  %17 = icmp eq %struct.resource* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %95

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.resource*, %struct.resource** %10, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = sub nsw i64 %26, %27
  %29 = icmp sgt i64 %23, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22, %19
  %31 = load i32, i32* @ESPIPE, align 4
  store i32 %31, i32* @errno, align 4
  store i32 0, i32* %5, align 4
  br label %95

32:                                               ; preds = %22
  %33 = load %struct.resource*, %struct.resource** %10, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load %struct.resource*, %struct.resource** %10, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** @MAP_FAILED, align 8
  %42 = icmp ne i8* %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %32
  %44 = load %struct.resource*, %struct.resource** %10, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr i8, i8* %46, i64 %47
  store i8* %48, i8** %11, align 8
  %49 = load i64, i64* %9, align 8
  switch i64 %49, label %68 [
    i64 1, label %50
    i64 2, label %56
    i64 4, label %62
  ]

50:                                               ; preds = %43
  %51 = load i8*, i8** %11, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load volatile i32, i32* %52, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = bitcast i8* %54 to i32*
  store i32 %53, i32* %55, align 4
  br label %70

56:                                               ; preds = %43
  %57 = load i8*, i8** %11, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load volatile i32, i32* %58, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = bitcast i8* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %70

62:                                               ; preds = %43
  %63 = load i8*, i8** %11, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = load volatile i32, i32* %64, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = bitcast i8* %66 to i32*
  store i32 %65, i32* %67, align 4
  br label %70

68:                                               ; preds = %43
  %69 = load i32, i32* @EIO, align 4
  store i32 %69, i32* @errno, align 4
  store i32 0, i32* %5, align 4
  br label %95

70:                                               ; preds = %62, %56, %50
  br label %94

71:                                               ; preds = %32
  %72 = load %struct.resource*, %struct.resource** %10, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* @SEEK_SET, align 4
  %77 = call i64 @lseek(i32 %74, i64 %75, i32 %76)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %95

82:                                               ; preds = %71
  %83 = load %struct.resource*, %struct.resource** %10, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @read(i32 %85, i8* %86, i64 %87)
  store i64 %88, i64* %13, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %95

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %70
  store i32 1, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %92, %81, %68, %30, %18
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.resource* @rid_lookup(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
