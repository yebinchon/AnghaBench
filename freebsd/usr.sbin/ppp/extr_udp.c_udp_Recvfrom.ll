; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_udp.c_udp_Recvfrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_udp.c_udp_Recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.udpdevice = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sockaddr = type { i32 }

@UDP_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s:%d/udp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.physical*, i8*, i64)* @udp_Recvfrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_Recvfrom(%struct.physical* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.physical*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.udpdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.physical*, %struct.physical** %5, align 8
  %12 = getelementptr inbounds %struct.physical, %struct.physical* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.udpdevice* @device2udp(i32 %13)
  store %struct.udpdevice* %14, %struct.udpdevice** %8, align 8
  %15 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %16 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UDP_CONNECTED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.physical*, %struct.physical** %5, align 8
  %22 = getelementptr inbounds %struct.physical, %struct.physical* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @read(i32 %23, i8* %24, i64 %25)
  store i32 %26, i32* %4, align 4
  br label %69

27:                                               ; preds = %3
  store i32 8, i32* %9, align 4
  %28 = load %struct.physical*, %struct.physical** %5, align 8
  %29 = getelementptr inbounds %struct.physical, %struct.physical* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %34 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %33, i32 0, i32 1
  %35 = bitcast %struct.TYPE_3__* %34 to %struct.sockaddr*
  %36 = call i32 @recvfrom(i32 %30, i8* %31, i64 %32, i32 0, %struct.sockaddr* %35, i32* %9)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.physical*, %struct.physical** %5, align 8
  %38 = getelementptr inbounds %struct.physical, %struct.physical* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %27
  %45 = load %struct.physical*, %struct.physical** %5, align 8
  %46 = getelementptr inbounds %struct.physical, %struct.physical* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %50 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @inet_ntoa(i32 %52)
  %54 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %55 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ntohs(i32 %57)
  %59 = call i32 @snprintf(i8* %48, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %53, i32 %58)
  %60 = load %struct.physical*, %struct.physical** %5, align 8
  %61 = getelementptr inbounds %struct.physical, %struct.physical* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.physical*, %struct.physical** %5, align 8
  %65 = getelementptr inbounds %struct.physical, %struct.physical* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  br label %67

67:                                               ; preds = %44, %27
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %20
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.udpdevice* @device2udp(i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
