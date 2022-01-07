; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_test.c_nvme_ns_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_test.c_nvme_ns_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_namespace = type { i32 }
%struct.nvme_io_test = type { i64, i32, i32, i32, i32, i32 }
%struct.nvme_io_test_internal = type { i64, i32, i32, i32, i32, i32, i32, %struct.nvme_namespace* }

@NVME_OPC_READ = common dso_local global i64 0, align 8
@NVME_OPC_WRITE = common dso_local global i64 0, align 8
@M_NVME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NVME_IO_TEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"nvme_io_test[%d]\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"nvme_test\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_ns_test(%struct.nvme_namespace* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.nvme_namespace*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvme_io_test*, align 8
  %8 = alloca %struct.nvme_io_test_internal*, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i32, align 4
  store %struct.nvme_namespace* %0, %struct.nvme_namespace** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = inttoptr i64 %11 to %struct.nvme_io_test*
  store %struct.nvme_io_test* %12, %struct.nvme_io_test** %7, align 8
  %13 = load %struct.nvme_io_test*, %struct.nvme_io_test** %7, align 8
  %14 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NVME_OPC_READ, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.nvme_io_test*, %struct.nvme_io_test** %7, align 8
  %20 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NVME_OPC_WRITE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %118

25:                                               ; preds = %18, %3
  %26 = load %struct.nvme_io_test*, %struct.nvme_io_test** %7, align 8
  %27 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nvme_namespace*, %struct.nvme_namespace** %4, align 8
  %30 = call i32 @nvme_ns_get_sector_size(%struct.nvme_namespace* %29)
  %31 = srem i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %118

34:                                               ; preds = %25
  %35 = load i32, i32* @M_NVME, align 4
  %36 = load i32, i32* @M_WAITOK, align 4
  %37 = load i32, i32* @M_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.nvme_io_test_internal* @malloc(i32 40, i32 %35, i32 %38)
  store %struct.nvme_io_test_internal* %39, %struct.nvme_io_test_internal** %8, align 8
  %40 = load %struct.nvme_io_test*, %struct.nvme_io_test** %7, align 8
  %41 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %8, align 8
  %44 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.nvme_namespace*, %struct.nvme_namespace** %4, align 8
  %46 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %8, align 8
  %47 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %46, i32 0, i32 7
  store %struct.nvme_namespace* %45, %struct.nvme_namespace** %47, align 8
  %48 = load %struct.nvme_io_test*, %struct.nvme_io_test** %7, align 8
  %49 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %8, align 8
  %52 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.nvme_io_test*, %struct.nvme_io_test** %7, align 8
  %54 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %8, align 8
  %57 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.nvme_io_test*, %struct.nvme_io_test** %7, align 8
  %59 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %8, align 8
  %62 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.nvme_io_test*, %struct.nvme_io_test** %7, align 8
  %64 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %8, align 8
  %67 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @NVME_IO_TEST, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %34
  store void (i8*)* @nvme_ns_io_test, void (i8*)** %9, align 8
  br label %73

72:                                               ; preds = %34
  store void (i8*)* @nvme_ns_bio_test, void (i8*)** %9, align 8
  br label %73

73:                                               ; preds = %72, %71
  %74 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %8, align 8
  %75 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %74, i32 0, i32 5
  %76 = call i32 @getmicrouptime(i32* %75)
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %88, %73
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.nvme_io_test*, %struct.nvme_io_test** %7, align 8
  %80 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load void (i8*)*, void (i8*)** %9, align 8
  %85 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @kthread_add(void (i8*)* %84, %struct.nvme_io_test_internal* %85, i32* null, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %77

91:                                               ; preds = %77
  %92 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %8, align 8
  %93 = load %struct.nvme_io_test*, %struct.nvme_io_test** %7, align 8
  %94 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %95, 2
  %97 = load i32, i32* @hz, align 4
  %98 = mul nsw i32 %96, %97
  %99 = call i32 @tsleep(%struct.nvme_io_test_internal* %92, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %105, %91
  %101 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %8, align 8
  %102 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call i32 @DELAY(i32 10)
  br label %100

107:                                              ; preds = %100
  %108 = load %struct.nvme_io_test*, %struct.nvme_io_test** %7, align 8
  %109 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %8, align 8
  %112 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memcpy(i32 %110, i32 %113, i32 4)
  %115 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %8, align 8
  %116 = load i32, i32* @M_NVME, align 4
  %117 = call i32 @free(%struct.nvme_io_test_internal* %115, i32 %116)
  br label %118

118:                                              ; preds = %107, %33, %24
  ret void
}

declare dso_local i32 @nvme_ns_get_sector_size(%struct.nvme_namespace*) #1

declare dso_local %struct.nvme_io_test_internal* @malloc(i32, i32, i32) #1

declare dso_local void @nvme_ns_io_test(i8*) #1

declare dso_local void @nvme_ns_bio_test(i8*) #1

declare dso_local i32 @getmicrouptime(i32*) #1

declare dso_local i32 @kthread_add(void (i8*)*, %struct.nvme_io_test_internal*, i32*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @tsleep(%struct.nvme_io_test_internal*, i32, i8*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @free(%struct.nvme_io_test_internal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
