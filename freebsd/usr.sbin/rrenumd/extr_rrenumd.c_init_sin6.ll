; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rrenumd/extr_rrenumd.c_init_sin6.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rrenumd/extr_rrenumd.c_init_sin6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_in6*, i8*)* @init_sin6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sin6(%struct.sockaddr_in6* %0, i8* %1) #0 {
  %3 = alloca %struct.sockaddr_in6*, align 8
  %4 = alloca i8*, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %6 = call i32 @memset(%struct.sockaddr_in6* %5, i32 0, i32 12)
  %7 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %8 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  store i32 12, i32* %8, align 4
  %9 = load i32, i32* @AF_INET6, align 4
  %10 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %11 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @AF_INET6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %16 = call i32 @inet_pton(i32 %12, i8* %13, i32* %15)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
