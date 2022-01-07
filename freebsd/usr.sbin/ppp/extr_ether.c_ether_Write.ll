; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ether.c_ether_Write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ether.c_ether_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, i32 }
%struct.etherdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.physical*, i8*, i64)* @ether_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether_Write(%struct.physical* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.physical*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.etherdevice*, align 8
  store %struct.physical* %0, %struct.physical** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.physical*, %struct.physical** %4, align 8
  %9 = getelementptr inbounds %struct.physical, %struct.physical* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.etherdevice* @device2ether(i32 %10)
  store %struct.etherdevice* %11, %struct.etherdevice** %7, align 8
  %12 = load %struct.physical*, %struct.physical** %4, align 8
  %13 = getelementptr inbounds %struct.physical, %struct.physical* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.etherdevice*, %struct.etherdevice** %7, align 8
  %16 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @NgSendData(i32 %14, i32 %17, i8* %18, i64 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %26

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi i32 [ -1, %22 ], [ %25, %23 ]
  ret i32 %27
}

declare dso_local %struct.etherdevice* @device2ether(i32) #1

declare dso_local i32 @NgSendData(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
