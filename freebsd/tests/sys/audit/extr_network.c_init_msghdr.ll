; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/audit/extr_network.c_init_msghdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/audit/extr_network.c_init_msghdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, %struct.iovec*, i64, %struct.sockaddr_un* }
%struct.iovec = type { i32 }
%struct.sockaddr_un = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*, %struct.iovec*, %struct.sockaddr_un*)* @init_msghdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_msghdr(%struct.msghdr* %0, %struct.iovec* %1, %struct.sockaddr_un* %2) #0 {
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca %struct.sockaddr_un*, align 8
  %7 = alloca i64, align 8
  store %struct.msghdr* %0, %struct.msghdr** %4, align 8
  store %struct.iovec* %1, %struct.iovec** %5, align 8
  store %struct.sockaddr_un* %2, %struct.sockaddr_un** %6, align 8
  %8 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %9 = call i32 @bzero(%struct.msghdr* %8, i32 32)
  store i64 4, i64* %7, align 8
  %10 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %11 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %12 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 3
  store %struct.sockaddr_un* %10, %struct.sockaddr_un** %12, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %15 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load %struct.iovec*, %struct.iovec** %5, align 8
  %17 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 1
  store %struct.iovec* %16, %struct.iovec** %18, align 8
  %19 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
