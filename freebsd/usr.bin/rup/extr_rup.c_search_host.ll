; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rup/extr_rup.c_search_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rup/extr_rup.c_search_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_list = type { %struct.TYPE_2__, %struct.host_list* }
%struct.TYPE_2__ = type { i64 }
%struct.in_addr = type { i64 }

@hosts = common dso_local global %struct.host_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @search_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_host(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in_addr, align 8
  %4 = alloca %struct.host_list*, align 8
  %5 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = load %struct.host_list*, %struct.host_list** @hosts, align 8
  %7 = icmp ne %struct.host_list* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.host_list*, %struct.host_list** @hosts, align 8
  store %struct.host_list* %10, %struct.host_list** %4, align 8
  br label %11

11:                                               ; preds = %24, %9
  %12 = load %struct.host_list*, %struct.host_list** %4, align 8
  %13 = icmp ne %struct.host_list* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load %struct.host_list*, %struct.host_list** %4, align 8
  %16 = getelementptr inbounds %struct.host_list, %struct.host_list* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %29

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.host_list*, %struct.host_list** %4, align 8
  %26 = getelementptr inbounds %struct.host_list, %struct.host_list* %25, i32 0, i32 1
  %27 = load %struct.host_list*, %struct.host_list** %26, align 8
  store %struct.host_list* %27, %struct.host_list** %4, align 8
  br label %11

28:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %22, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
