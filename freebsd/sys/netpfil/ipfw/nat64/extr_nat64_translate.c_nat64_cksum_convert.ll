; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_cksum_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_cksum_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_hdr = type { i32 }
%struct.ip = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_hdr*, %struct.ip*)* @nat64_cksum_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64_cksum_convert(%struct.ip6_hdr* %0, %struct.ip* %1) #0 {
  %3 = alloca %struct.ip6_hdr*, align 8
  %4 = alloca %struct.ip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.ip6_hdr* %0, %struct.ip6_hdr** %3, align 8
  store %struct.ip* %1, %struct.ip** %4, align 8
  %7 = load %struct.ip*, %struct.ip** %4, align 8
  %8 = getelementptr inbounds %struct.ip, %struct.ip* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, -1
  %12 = ashr i32 %11, 16
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ip*, %struct.ip** %4, align 8
  %14 = getelementptr inbounds %struct.ip, %struct.ip* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %17, 65535
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ip*, %struct.ip** %4, align 8
  %22 = getelementptr inbounds %struct.ip, %struct.ip* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, -1
  %26 = ashr i32 %25, 16
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ip*, %struct.ip** %4, align 8
  %30 = getelementptr inbounds %struct.ip, %struct.ip* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %33, 65535
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.ip6_hdr*, %struct.ip6_hdr** %3, align 8
  %38 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %37, i32 0, i32 0
  store i32* %38, i32** %6, align 8
  br label %39

39:                                               ; preds = %50, %2
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.ip6_hdr*, %struct.ip6_hdr** %3, align 8
  %42 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %41, i32 0, i32 0
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = icmp ult i32* %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %45
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %6, align 8
  br label %39

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %58, %53
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 16
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 65535
  %61 = load i32, i32* %5, align 4
  %62 = ashr i32 %61, 16
  %63 = add nsw i32 %60, %62
  store i32 %63, i32* %5, align 4
  br label %54

64:                                               ; preds = %54
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
