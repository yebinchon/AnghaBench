; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_ip_reass_test.c_update_cksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_ip_reass_test.c_update_cksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip*)* @update_cksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cksum(%struct.ip* %0) #0 {
  %2 = alloca %struct.ip*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.ip* %0, %struct.ip** %2, align 8
  %6 = load %struct.ip*, %struct.ip** %2, align 8
  %7 = getelementptr inbounds %struct.ip, %struct.ip* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %struct.ip*, %struct.ip** %2, align 8
  %9 = bitcast %struct.ip* %8 to i32*
  store i32* %9, i32** %5, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %21, %1
  %11 = load i64, i64* %3, align 8
  %12 = icmp ult i64 %11, 1
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ntohs(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %13
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %10

26:                                               ; preds = %10
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 16
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 16
  %35 = add nsw i32 %32, %34
  %36 = xor i32 %35, -1
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @htons(i32 %37)
  %39 = load %struct.ip*, %struct.ip** %2, align 8
  %40 = getelementptr inbounds %struct.ip, %struct.ip* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
