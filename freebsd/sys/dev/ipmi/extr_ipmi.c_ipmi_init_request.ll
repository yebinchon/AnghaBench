; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_init_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_request = type { i64, i8*, i64, i8*, i64, i8*, i8*, %struct.ipmi_device* }
%struct.ipmi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_request*, %struct.ipmi_device*, i64, i8*, i8*, i64, i64)* @ipmi_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_init_request(%struct.ipmi_request* %0, %struct.ipmi_device* %1, i64 %2, i8* %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.ipmi_request*, align 8
  %9 = alloca %struct.ipmi_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ipmi_request* %0, %struct.ipmi_request** %8, align 8
  store %struct.ipmi_device* %1, %struct.ipmi_device** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %15 = load %struct.ipmi_device*, %struct.ipmi_device** %9, align 8
  %16 = load %struct.ipmi_request*, %struct.ipmi_request** %8, align 8
  %17 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %16, i32 0, i32 7
  store %struct.ipmi_device* %15, %struct.ipmi_device** %17, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.ipmi_request*, %struct.ipmi_request** %8, align 8
  %20 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.ipmi_request*, %struct.ipmi_request** %8, align 8
  %23 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.ipmi_request*, %struct.ipmi_request** %8, align 8
  %26 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %7
  %30 = load %struct.ipmi_request*, %struct.ipmi_request** %8, align 8
  %31 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %30, i64 1
  %32 = bitcast %struct.ipmi_request* %31 to i8*
  %33 = load %struct.ipmi_request*, %struct.ipmi_request** %8, align 8
  %34 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load %struct.ipmi_request*, %struct.ipmi_request** %8, align 8
  %37 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %29, %7
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.ipmi_request*, %struct.ipmi_request** %8, align 8
  %43 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %42, i64 1
  %44 = bitcast %struct.ipmi_request* %43 to i8*
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load %struct.ipmi_request*, %struct.ipmi_request** %8, align 8
  %48 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load %struct.ipmi_request*, %struct.ipmi_request** %8, align 8
  %51 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %41, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
