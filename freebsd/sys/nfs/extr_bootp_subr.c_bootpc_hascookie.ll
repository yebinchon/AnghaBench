; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_bootpc_hascookie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_bootpc_hascookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootp_packet = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bootp_packet*)* @bootpc_hascookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bootpc_hascookie(%struct.bootp_packet* %0) #0 {
  %2 = alloca %struct.bootp_packet*, align 8
  store %struct.bootp_packet* %0, %struct.bootp_packet** %2, align 8
  %3 = load %struct.bootp_packet*, %struct.bootp_packet** %2, align 8
  %4 = getelementptr inbounds %struct.bootp_packet, %struct.bootp_packet* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 99
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.bootp_packet*, %struct.bootp_packet** %2, align 8
  %11 = getelementptr inbounds %struct.bootp_packet, %struct.bootp_packet* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 130
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = load %struct.bootp_packet*, %struct.bootp_packet** %2, align 8
  %18 = getelementptr inbounds %struct.bootp_packet, %struct.bootp_packet* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 83
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.bootp_packet*, %struct.bootp_packet** %2, align 8
  %25 = getelementptr inbounds %struct.bootp_packet, %struct.bootp_packet* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 99
  br label %30

30:                                               ; preds = %23, %16, %9, %1
  %31 = phi i1 [ false, %16 ], [ false, %9 ], [ false, %1 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
