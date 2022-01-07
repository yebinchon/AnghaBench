; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nmreq_getoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nmreq_getoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq_option = type { i32 }
%struct.nmreq_header = type { i64 }

@NETMAP_REQ_OPT_MAX = common dso_local global %struct.nmreq_option** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nmreq_option* @nmreq_getoption(%struct.nmreq_header* %0, i64 %1) #0 {
  %3 = alloca %struct.nmreq_option*, align 8
  %4 = alloca %struct.nmreq_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nmreq_option**, align 8
  store %struct.nmreq_header* %0, %struct.nmreq_header** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.nmreq_header*, %struct.nmreq_header** %4, align 8
  %8 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.nmreq_option* null, %struct.nmreq_option** %3, align 8
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.nmreq_header*, %struct.nmreq_header** %4, align 8
  %14 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.nmreq_option**
  %17 = load %struct.nmreq_option**, %struct.nmreq_option*** @NETMAP_REQ_OPT_MAX, align 8
  %18 = getelementptr inbounds %struct.nmreq_option*, %struct.nmreq_option** %17, i64 1
  %19 = ptrtoint %struct.nmreq_option** %16 to i64
  %20 = ptrtoint %struct.nmreq_option** %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = inttoptr i64 %22 to %struct.nmreq_option**
  store %struct.nmreq_option** %23, %struct.nmreq_option*** %6, align 8
  %24 = load %struct.nmreq_option**, %struct.nmreq_option*** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.nmreq_option*, %struct.nmreq_option** %24, i64 %25
  %27 = load %struct.nmreq_option*, %struct.nmreq_option** %26, align 8
  store %struct.nmreq_option* %27, %struct.nmreq_option** %3, align 8
  br label %28

28:                                               ; preds = %12, %11
  %29 = load %struct.nmreq_option*, %struct.nmreq_option** %3, align 8
  ret %struct.nmreq_option* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
