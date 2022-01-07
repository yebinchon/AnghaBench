; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_getsa.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_getsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncpaddr = type { i32, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i32, i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncpaddr_getsa(%struct.ncpaddr* %0, %struct.sockaddr_storage* %1) #0 {
  %3 = alloca %struct.ncpaddr*, align 8
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  store %struct.ncpaddr* %0, %struct.ncpaddr** %3, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %4, align 8
  %7 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %8 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %8, %struct.sockaddr_in** %5, align 8
  %9 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %10 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %10, %struct.sockaddr_in6** %6, align 8
  %11 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %12 = call i32 @memset(%struct.sockaddr_storage* %11, i8 signext 0, i32 4)
  %13 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %14 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %36 [
    i32 129, label %16
    i32 128, label %26
  ]

16:                                               ; preds = %2
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i32 129, i32* %18, align 4
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 1
  store i32 12, i32* %20, align 4
  %21 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %22 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 0
  store i32 128, i32* %28, align 4
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 1
  store i32 12, i32* %30, align 4
  %31 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %32 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  br label %40

36:                                               ; preds = %2
  %37 = load i32, i32* @AF_UNSPEC, align 4
  %38 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %39 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %26, %16
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
