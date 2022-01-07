; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ether.c_ether_AwaitCarrier.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ether.c_ether_AwaitCarrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32 }
%struct.etherdevice = type { i64, i32 }

@CARRIER_OK = common dso_local global i64 0, align 8
@CARRIER_LOST = common dso_local global i64 0, align 8
@CARRIER_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.physical*)* @ether_AwaitCarrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether_AwaitCarrier(%struct.physical* %0) #0 {
  %2 = alloca %struct.physical*, align 8
  %3 = alloca %struct.etherdevice*, align 8
  store %struct.physical* %0, %struct.physical** %2, align 8
  %4 = load %struct.physical*, %struct.physical** %2, align 8
  %5 = getelementptr inbounds %struct.physical, %struct.physical* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.etherdevice* @device2ether(i32 %6)
  store %struct.etherdevice* %7, %struct.etherdevice** %3, align 8
  %8 = load %struct.etherdevice*, %struct.etherdevice** %3, align 8
  %9 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CARRIER_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.etherdevice*, %struct.etherdevice** %3, align 8
  %15 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 8
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* @CARRIER_LOST, align 8
  %21 = load %struct.etherdevice*, %struct.etherdevice** %3, align 8
  %22 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %33

23:                                               ; preds = %13, %1
  %24 = load %struct.etherdevice*, %struct.etherdevice** %3, align 8
  %25 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CARRIER_PENDING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.etherdevice*, %struct.etherdevice** %3, align 8
  %31 = call i32 @ether_MessageIn(%struct.etherdevice* %30)
  br label %32

32:                                               ; preds = %29, %23
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.etherdevice*, %struct.etherdevice** %3, align 8
  %35 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  ret i32 %37
}

declare dso_local %struct.etherdevice* @device2ether(i32) #1

declare dso_local i32 @ether_MessageIn(%struct.etherdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
