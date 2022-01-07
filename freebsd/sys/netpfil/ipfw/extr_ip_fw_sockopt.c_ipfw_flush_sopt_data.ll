; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_flush_sopt_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_flush_sopt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt_data = type { i64, i64, i64, i64, i64, i64, i32, %struct.sockopt* }
%struct.sockopt = type { i64, i64, i64 }

@SOPT_GET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockopt_data*)* @ipfw_flush_sopt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipfw_flush_sopt_data(%struct.sockopt_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockopt_data*, align 8
  %4 = alloca %struct.sockopt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.sockopt_data* %0, %struct.sockopt_data** %3, align 8
  %7 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %8 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

13:                                               ; preds = %1
  %14 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %15 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %14, i32 0, i32 7
  %16 = load %struct.sockopt*, %struct.sockopt** %15, align 8
  store %struct.sockopt* %16, %struct.sockopt** %4, align 8
  %17 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %18 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOPT_GET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %13
  %23 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %24 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %27 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @copyout(i32 %25, i64 %28, i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %93

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %13
  %37 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %38 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %41 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @memset(i32 %39, i32 0, i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %46 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %50 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %52 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %55 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %59 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %36
  %63 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %64 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %67 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %66, i32 0, i32 4
  store i64 %65, i64* %67, align 8
  br label %78

68:                                               ; preds = %36
  %69 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %70 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %73 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %77 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %68, %62
  %79 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %80 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %83 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %85 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.sockopt_data*, %struct.sockopt_data** %3, align 8
  %88 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %92 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %78, %33, %12
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @copyout(i32, i64, i64) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
