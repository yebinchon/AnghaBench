; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { %struct.sockaddr*, %struct.sockaddr* }
%struct.sockaddr = type { i32 }

@RT_DEFAULT_FIB = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@RT_ALL_FIBS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtinit(%struct.ifaddr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ifaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store %struct.ifaddr* %0, %struct.ifaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @RT_DEFAULT_FIB, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @RTF_HOST, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %16 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %15, i32 0, i32 1
  %17 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  store %struct.sockaddr* %17, %struct.sockaddr** %7, align 8
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %20 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %19, i32 0, i32 0
  %21 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  store %struct.sockaddr* %21, %struct.sockaddr** %7, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %28 [
    i32 128, label %26
    i32 129, label %26
  ]

26:                                               ; preds = %22, %22
  %27 = load i32, i32* @RT_ALL_FIBS, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %22, %26
  %29 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @rtinit1(%struct.ifaddr* %29, i32 %30, i32 %31, i32 %32)
  ret i32 %33
}

declare dso_local i32 @rtinit1(%struct.ifaddr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
