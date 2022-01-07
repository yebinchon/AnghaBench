; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_extra_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_extra_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.dn_schk = type { %struct.TYPE_2__, %struct.dn_profile* }
%struct.TYPE_2__ = type { i32 }
%struct.dn_profile = type { i32, i32, i64* }
%struct.dn_pkt_tag = type { i32 }

@DIR_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.dn_schk*)* @extra_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extra_bits(%struct.mbuf* %0, %struct.dn_schk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.dn_schk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dn_profile*, align 8
  %9 = alloca %struct.dn_pkt_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store %struct.dn_schk* %1, %struct.dn_schk** %5, align 8
  %10 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %11 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %10, i32 0, i32 1
  %12 = load %struct.dn_profile*, %struct.dn_profile** %11, align 8
  store %struct.dn_profile* %12, %struct.dn_profile** %8, align 8
  %13 = load %struct.dn_profile*, %struct.dn_profile** %8, align 8
  %14 = icmp ne %struct.dn_profile* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.dn_profile*, %struct.dn_profile** %8, align 8
  %17 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %58

21:                                               ; preds = %15
  %22 = call i32 (...) @random()
  %23 = load %struct.dn_profile*, %struct.dn_profile** %8, align 8
  %24 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = srem i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.dn_profile*, %struct.dn_profile** %8, align 8
  %28 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %36 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %34, %38
  %40 = call i32 @div64(i32 %39, i32 1000)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.dn_profile*, %struct.dn_profile** %8, align 8
  %43 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %21
  %47 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %48 = call %struct.dn_pkt_tag* @dn_tag_get(%struct.mbuf* %47)
  store %struct.dn_pkt_tag* %48, %struct.dn_pkt_tag** %9, align 8
  %49 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %9, align 8
  %50 = icmp ne %struct.dn_pkt_tag* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @DIR_DROP, align 4
  %53 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %9, align 8
  %54 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @random(...) #1

declare dso_local i32 @div64(i32, i32) #1

declare dso_local %struct.dn_pkt_tag* @dn_tag_get(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
