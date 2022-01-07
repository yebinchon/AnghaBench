; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncookie_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncookie_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_conninfo = type { i32, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_conninfo*, i64, i64, i64*, i64)* @syncookie_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syncookie_mac(%struct.in_conninfo* %0, i64 %1, i64 %2, i64* %3, i64 %4) #0 {
  %6 = alloca %struct.in_conninfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  store %struct.in_conninfo* %0, %struct.in_conninfo** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = call i32 @SipHash24_Init(i32* %11)
  %14 = load i64*, i64** %9, align 8
  %15 = call i32 @SipHash_SetKey(i32* %11, i64* %14)
  %16 = load %struct.in_conninfo*, %struct.in_conninfo** %6, align 8
  %17 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 128
  switch i32 %19, label %20 [
  ]

20:                                               ; preds = %5
  %21 = load %struct.in_conninfo*, %struct.in_conninfo** %6, align 8
  %22 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %21, i32 0, i32 5
  %23 = call i32 @SipHash_Update(i32* %11, i64* %22, i32 8)
  %24 = load %struct.in_conninfo*, %struct.in_conninfo** %6, align 8
  %25 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %24, i32 0, i32 6
  %26 = call i32 @SipHash_Update(i32* %11, i64* %25, i32 8)
  %27 = call i32 @SipHash_Update(i32* %11, i64* %7, i32 8)
  %28 = call i32 @SipHash_Update(i32* %11, i64* %8, i32 8)
  %29 = call i32 @SipHash_Update(i32* %11, i64* %10, i32 8)
  %30 = bitcast [2 x i32]* %12 to i32*
  %31 = call i32 @SipHash_Final(i32* %30, i32* %11)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %33, %35
  ret i32 %36
}

declare dso_local i32 @SipHash24_Init(i32*) #1

declare dso_local i32 @SipHash_SetKey(i32*, i64*) #1

declare dso_local i32 @SipHash_Update(i32*, i64*, i32) #1

declare dso_local i32 @SipHash_Final(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
