; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_stf.c_isrfc1918addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_stf.c_isrfc1918addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@stf_permit_rfc1918 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_addr*)* @isrfc1918addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isrfc1918addr(%struct.in_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in_addr*, align 8
  store %struct.in_addr* %0, %struct.in_addr** %3, align 8
  %4 = load i64, i64* @stf_permit_rfc1918, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ntohl(i32 %9)
  %11 = and i32 %10, -16777216
  %12 = lshr i32 %11, 24
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %30, label %14

14:                                               ; preds = %6
  %15 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %16 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntohl(i32 %17)
  %19 = and i32 %18, -1048576
  %20 = lshr i32 %19, 16
  %21 = icmp eq i32 %20, 44048
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohl(i32 %25)
  %27 = and i32 %26, -65536
  %28 = lshr i32 %27, 16
  %29 = icmp eq i32 %28, 49320
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %14, %6
  store i32 1, i32* %2, align 4
  br label %32

31:                                               ; preds = %22, %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
