; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nmreq_checkoptions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nmreq_checkoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq_header = type { i64 }
%struct.nmreq_option = type { i64, i64 }

@EOPNOTSUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmreq_header*)* @nmreq_checkoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmreq_checkoptions(%struct.nmreq_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nmreq_header*, align 8
  %4 = alloca %struct.nmreq_option*, align 8
  store %struct.nmreq_header* %0, %struct.nmreq_header** %3, align 8
  %5 = load %struct.nmreq_header*, %struct.nmreq_header** %3, align 8
  %6 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.nmreq_option*
  store %struct.nmreq_option* %8, %struct.nmreq_option** %4, align 8
  br label %9

9:                                                ; preds = %22, %1
  %10 = load %struct.nmreq_option*, %struct.nmreq_option** %4, align 8
  %11 = icmp ne %struct.nmreq_option* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load %struct.nmreq_option*, %struct.nmreq_option** %4, align 8
  %14 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EOPNOTSUPP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i64, i64* @EOPNOTSUPP, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.nmreq_option*, %struct.nmreq_option** %4, align 8
  %24 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.nmreq_option*
  store %struct.nmreq_option* %26, %struct.nmreq_option** %4, align 8
  br label %9

27:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
