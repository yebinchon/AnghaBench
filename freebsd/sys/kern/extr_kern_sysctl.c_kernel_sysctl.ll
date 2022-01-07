; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_kernel_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_kernel_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sysctl_req = type { i32, i64, i64, i64, i64, i64, i8*, i32, i32, i8*, %struct.thread* }

@sysctl_old_kernel = common dso_local global i32 0, align 4
@sysctl_new_kernel = common dso_local global i32 0, align 4
@REQ_UNWIRED = common dso_local global i64 0, align 8
@REQ_WIRED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_sysctl(%struct.thread* %0, i32* %1, i32 %2, i8* %3, i64* %4, i8* %5, i64 %6, i64* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sysctl_req, align 8
  store %struct.thread* %0, %struct.thread** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i64* %4, i64** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i64* %7, i64** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = call i32 @bzero(%struct.sysctl_req* %21, i32 80)
  %23 = load %struct.thread*, %struct.thread** %11, align 8
  %24 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 10
  store %struct.thread* %23, %struct.thread** %24, align 8
  %25 = load i32, i32* %19, align 4
  %26 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load i64*, i64** %15, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %9
  %30 = load i64*, i64** %15, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %9
  %34 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 2
  store i64 %35, i64* %36, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i8*, i8** %14, align 8
  %41 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 6
  store i8* %40, i8** %41, align 8
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i8*, i8** %16, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i64, i64* %17, align 8
  %47 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 3
  store i64 %46, i64* %47, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 9
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i32, i32* @sysctl_old_kernel, align 4
  %52 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @sysctl_new_kernel, align 4
  %54 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 7
  store i32 %53, i32* %54, align 8
  %55 = load i64, i64* @REQ_UNWIRED, align 8
  %56 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 4
  store i64 %55, i64* %56, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @sysctl_root(i32 0, i32* %57, i32 %58, %struct.sysctl_req* %21)
  store i32 %59, i32* %20, align 4
  %60 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @REQ_WIRED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 6
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @vsunlock(i8* %70, i64 %72)
  br label %74

74:                                               ; preds = %68, %64, %50
  %75 = load i32, i32* %20, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* %20, align 4
  store i32 %82, i32* %10, align 4
  br label %107

83:                                               ; preds = %77, %74
  %84 = load i64*, i64** %18, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 6
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ugt i64 %92, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %18, align 8
  store i64 %98, i64* %99, align 8
  br label %104

100:                                              ; preds = %90, %86
  %101 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %18, align 8
  store i64 %102, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %96
  br label %105

105:                                              ; preds = %104, %83
  %106 = load i32, i32* %20, align 4
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %105, %81
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local i32 @bzero(%struct.sysctl_req*, i32) #1

declare dso_local i32 @sysctl_root(i32, i32*, i32, %struct.sysctl_req*) #1

declare dso_local i32 @vsunlock(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
