; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_udp.c_udp_Sendto.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_udp.c_udp_Sendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, i32 }
%struct.udpdevice = type { i32, i32 }
%struct.sockaddr = type { i32 }

@UDP_MAYBEUNCONNECTED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.physical*, i8*, i64)* @udp_Sendto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_Sendto(%struct.physical* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.physical*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.udpdevice*, align 8
  %8 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.physical*, %struct.physical** %4, align 8
  %10 = getelementptr inbounds %struct.physical, %struct.physical* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.udpdevice* @device2udp(i32 %11)
  store %struct.udpdevice* %12, %struct.udpdevice** %7, align 8
  %13 = load %struct.udpdevice*, %struct.udpdevice** %7, align 8
  %14 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %24 [
    i32 129, label %16
    i32 128, label %23
  ]

16:                                               ; preds = %3
  %17 = load %struct.physical*, %struct.physical** %4, align 8
  %18 = getelementptr inbounds %struct.physical, %struct.physical* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @write(i32 %19, i8* %20, i64 %21)
  store i32 %22, i32* %8, align 4
  br label %34

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %3, %23
  %25 = load %struct.physical*, %struct.physical** %4, align 8
  %26 = getelementptr inbounds %struct.physical, %struct.physical* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.udpdevice*, %struct.udpdevice** %7, align 8
  %31 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %30, i32 0, i32 1
  %32 = bitcast i32* %31 to %struct.sockaddr*
  %33 = call i32 @sendto(i32 %27, i8* %28, i64 %29, i32 0, %struct.sockaddr* %32, i32 4)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %24, %16
  %35 = load %struct.udpdevice*, %struct.udpdevice** %7, align 8
  %36 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @UDP_MAYBEUNCONNECTED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @EISCONN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.udpdevice*, %struct.udpdevice** %7, align 8
  %49 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %48, i32 0, i32 0
  store i32 129, i32* %49, align 4
  %50 = load %struct.physical*, %struct.physical** %4, align 8
  %51 = getelementptr inbounds %struct.physical, %struct.physical* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @write(i32 %52, i8* %53, i64 %54)
  store i32 %55, i32* %8, align 4
  br label %59

56:                                               ; preds = %43, %40
  %57 = load %struct.udpdevice*, %struct.udpdevice** %7, align 8
  %58 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %57, i32 0, i32 0
  store i32 128, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %47
  br label %60

60:                                               ; preds = %59, %34
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local %struct.udpdevice* @device2udp(i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
