; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_new_kernel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_new_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_req*, i8*, i64)* @sysctl_new_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_new_kernel(%struct.sysctl_req* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysctl_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.sysctl_req* %0, %struct.sysctl_req** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %9 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

13:                                               ; preds = %3
  %14 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %15 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %18 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %42

25:                                               ; preds = %13
  %26 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %27 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %31 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @bcopy(i8* %33, i8* %34, i64 %35)
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %39 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, %37
  store i64 %41, i64* %39, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %25, %23, %12
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
