; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_get_ubuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_get_ubuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i64 }

@TOOL_BUF_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_req*, i8*)* @get_ubuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ubuf(%struct.sysctl_req* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_req*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.sysctl_req* %0, %struct.sysctl_req** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %8 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TOOL_BUF_LEN, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %18 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @SYSCTL_IN(%struct.sysctl_req* %15, i8* %16, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %14
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %28 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8 0, i8* %30, align 1
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %25, %23, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @SYSCTL_IN(%struct.sysctl_req*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
