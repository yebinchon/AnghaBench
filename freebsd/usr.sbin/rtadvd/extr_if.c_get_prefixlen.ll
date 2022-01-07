; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_if.c_get_prefixlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_if.c_get_prefixlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_msghdr = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RTAX_MAX = common dso_local global i32 0, align 4
@RTAX_NETMASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_prefixlen(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt_msghdr*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %10, %struct.rt_msghdr** %3, align 8
  %11 = load i32, i32* @RTAX_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca %struct.sockaddr*, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load %struct.rt_msghdr*, %struct.rt_msghdr** %3, align 8
  %16 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %15, i64 1
  %17 = bitcast %struct.rt_msghdr* %16 to %struct.sockaddr*
  store %struct.sockaddr* %17, %struct.sockaddr** %4, align 8
  %18 = load %struct.rt_msghdr*, %struct.rt_msghdr** %3, align 8
  %19 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %22 = call i32 @get_rtaddrs(i32 %20, %struct.sockaddr* %21, %struct.sockaddr** %14)
  %23 = load i64, i64* @RTAX_NETMASK, align 8
  %24 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %14, i64 %23
  %25 = load %struct.sockaddr*, %struct.sockaddr** %24, align 8
  store %struct.sockaddr* %25, %struct.sockaddr** %4, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %27 = call %struct.TYPE_2__* @SIN6(%struct.sockaddr* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %7, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %31 = bitcast %struct.sockaddr* %30 to i8*
  %32 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @prefixlen(i8* %37, i8* %38)
  %40 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %40)
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_rtaddrs(i32, %struct.sockaddr*, %struct.sockaddr**) #2

declare dso_local %struct.TYPE_2__* @SIN6(%struct.sockaddr*) #2

declare dso_local i32 @prefixlen(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
