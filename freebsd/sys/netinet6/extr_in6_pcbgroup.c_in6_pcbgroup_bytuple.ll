; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcbgroup.c_in6_pcbgroup_bytuple.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcbgroup.c_in6_pcbgroup_bytuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcbgroup = type { i32 }
%struct.inpcbinfo = type { i32, %struct.inpcbgroup* }
%struct.in6_addr = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inpcbgroup* @in6_pcbgroup_bytuple(%struct.inpcbinfo* %0, %struct.in6_addr* %1, i32 %2, %struct.in6_addr* %3, i32 %4) #0 {
  %6 = alloca %struct.inpcbinfo*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inpcbinfo* %0, %struct.inpcbinfo** %6, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.in6_addr* %3, %struct.in6_addr** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.inpcbinfo*, %struct.inpcbinfo** %6, align 8
  %13 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %35 [
    i32 128, label %15
    i32 129, label %23
  ]

15:                                               ; preds = %5
  %16 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %17 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = xor i32 %20, %21
  store i32 %22, i32* %11, align 4
  br label %36

23:                                               ; preds = %5
  %24 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %25 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %30 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %28, %33
  store i32 %34, i32* %11, align 4
  br label %36

35:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %23, %15
  %37 = load %struct.inpcbinfo*, %struct.inpcbinfo** %6, align 8
  %38 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %37, i32 0, i32 1
  %39 = load %struct.inpcbgroup*, %struct.inpcbgroup** %38, align 8
  %40 = load %struct.inpcbinfo*, %struct.inpcbinfo** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @in6_pcbgroup_getbucket(%struct.inpcbinfo* %40, i32 %41)
  %43 = getelementptr inbounds %struct.inpcbgroup, %struct.inpcbgroup* %39, i64 %42
  ret %struct.inpcbgroup* %43
}

declare dso_local i64 @in6_pcbgroup_getbucket(%struct.inpcbinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
