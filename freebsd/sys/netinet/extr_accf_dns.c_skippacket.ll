; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_accf_dns.c_skippacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_accf_dns.c_skippacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.packet = type { i32, i64, i64, %struct.TYPE_2__*, i32 }

@DNS_WAIT = common dso_local global i32 0, align 4
@DNS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockbuf*)* @skippacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skippacket(%struct.sockbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.packet, align 8
  %6 = alloca %struct.packet*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %3, align 8
  store %struct.packet* %5, %struct.packet** %6, align 8
  %7 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %8 = call i32 @sbavail(%struct.sockbuf* %7)
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @DNS_WAIT, align 4
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %14 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 3
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %16, align 8
  %17 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %25 = call i32 @sbavail(%struct.sockbuf* %24)
  %26 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.packet*, %struct.packet** %6, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @GET16(%struct.packet* %27, i64 %28)
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 2
  %32 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %12
  %37 = load i32, i32* @DNS_WAIT, align 4
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %12
  %39 = load i32, i32* @DNS_OK, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %36, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @sbavail(%struct.sockbuf*) #1

declare dso_local i32 @GET16(%struct.packet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
