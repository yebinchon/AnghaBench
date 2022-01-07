; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_rss.c_rss_hash_ip4_4tuple.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_rss.c_rss_hash_ip4_4tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rss_hash_ip4_4tuple(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.in_addr, align 4
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca %struct.in_addr, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  %14 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store i64 0, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %15
  %17 = call i32 @bcopy(%struct.in_addr* %5, i32* %16, i32 4)
  %18 = load i64, i64* %10, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %20
  %22 = call i32 @bcopy(%struct.in_addr* %7, i32* %21, i32 4)
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %23, 4
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %25
  %27 = call i32 @bcopy(%struct.in_addr* %6, i32* %26, i32 4)
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %28, 4
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %30
  %32 = call i32 @bcopy(%struct.in_addr* %8, i32* %31, i32 4)
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %37 = call i32 @rss_hash(i64 %35, i32* %36)
  ret i32 %37
}

declare dso_local i32 @bcopy(%struct.in_addr*, i32*, i32) #1

declare dso_local i32 @rss_hash(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
