; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_if.c_get_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_if.c_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.rt_msghdr = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_2__ = type { %struct.in6_addr }

@RTAX_MAX = common dso_local global i32 0, align 4
@RTAX_DST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.in6_addr* @get_addr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt_msghdr*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %8, %struct.rt_msghdr** %3, align 8
  %9 = load i32, i32* @RTAX_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca %struct.sockaddr*, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.rt_msghdr*, %struct.rt_msghdr** %3, align 8
  %14 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %13, i64 1
  %15 = bitcast %struct.rt_msghdr* %14 to %struct.sockaddr*
  store %struct.sockaddr* %15, %struct.sockaddr** %4, align 8
  %16 = load %struct.rt_msghdr*, %struct.rt_msghdr** %3, align 8
  %17 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %20 = call i32 @get_rtaddrs(i32 %18, %struct.sockaddr* %19, %struct.sockaddr** %12)
  %21 = load i64, i64* @RTAX_DST, align 8
  %22 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %12, i64 %21
  %23 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %24 = call %struct.TYPE_2__* @SIN6(%struct.sockaddr* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %26)
  ret %struct.in6_addr* %25
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_rtaddrs(i32, %struct.sockaddr*, %struct.sockaddr**) #2

declare dso_local %struct.TYPE_2__* @SIN6(%struct.sockaddr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
