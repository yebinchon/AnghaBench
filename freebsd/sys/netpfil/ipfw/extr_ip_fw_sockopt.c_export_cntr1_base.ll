; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_export_cntr1_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_export_cntr1_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw = type { i64, i32* }
%struct.ip_fw_bcounter = type { i32, i64, i8*, i8* }
%struct.timeval = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw*, %struct.ip_fw_bcounter*)* @export_cntr1_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_cntr1_base(%struct.ip_fw* %0, %struct.ip_fw_bcounter* %1) #0 {
  %3 = alloca %struct.ip_fw*, align 8
  %4 = alloca %struct.ip_fw_bcounter*, align 8
  %5 = alloca %struct.timeval, align 8
  store %struct.ip_fw* %0, %struct.ip_fw** %3, align 8
  store %struct.ip_fw_bcounter* %1, %struct.ip_fw_bcounter** %4, align 8
  %6 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %4, align 8
  %7 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %6, i32 0, i32 0
  store i32 32, i32* %7, align 8
  %8 = load %struct.ip_fw*, %struct.ip_fw** %3, align 8
  %9 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.ip_fw*, %struct.ip_fw** %3, align 8
  %14 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i8* @counter_u64_fetch(i32* %15)
  %17 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %4, align 8
  %18 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ip_fw*, %struct.ip_fw** %3, align 8
  %20 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = call i8* @counter_u64_fetch(i32* %22)
  %24 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %4, align 8
  %25 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ip_fw*, %struct.ip_fw** %3, align 8
  %27 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %4, align 8
  %30 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %12, %2
  %32 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %4, align 8
  %33 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = call i32 @getboottime(%struct.timeval* %5)
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %4, align 8
  %41 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %36, %31
  ret void
}

declare dso_local i8* @counter_u64_fetch(i32*) #1

declare dso_local i32 @getboottime(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
