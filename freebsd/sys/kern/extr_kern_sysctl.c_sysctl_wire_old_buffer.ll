; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_wire_old_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_wire_old_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i64, i64, i64, i64, i64 }

@REQ_WIRED = common dso_local global i64 0, align 8
@sysctl_old_user = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysctl_wire_old_buffer(%struct.sysctl_req* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_req*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sysctl_req* %0, %struct.sysctl_req** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %13 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i64, i64* %5, align 8
  br label %22

18:                                               ; preds = %10, %2
  %19 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %20 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi i64 [ %17, %16 ], [ %21, %18 ]
  store i64 %23, i64* %7, align 8
  store i32 0, i32* %6, align 4
  %24 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %25 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REQ_WIRED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %22
  %30 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %31 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %29
  %35 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %36 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @sysctl_old_user, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %34
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %45 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @vslock(i64 %46, i64 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %51
  store i64 0, i64* %7, align 8
  br label %58

58:                                               ; preds = %57, %43
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i64, i64* @REQ_WIRED, align 8
  %61 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %62 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %65 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %34, %29, %22
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @vslock(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
