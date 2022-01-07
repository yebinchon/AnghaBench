; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_transmit_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_transmit_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mq = type { i32 }
%struct.delay_line = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }
%struct.dn_pkt_tag = type { i32 }

@dn_cfg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mq*, %struct.delay_line*, i32)* @transmit_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_event(%struct.mq* %0, %struct.delay_line* %1, i32 %2) #0 {
  %4 = alloca %struct.mq*, align 8
  %5 = alloca %struct.delay_line*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.dn_pkt_tag*, align 8
  store %struct.mq* %0, %struct.mq** %4, align 8
  store %struct.delay_line* %1, %struct.delay_line** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.dn_pkt_tag* null, %struct.dn_pkt_tag** %8, align 8
  %9 = load %struct.delay_line*, %struct.delay_line** %5, align 8
  %10 = getelementptr inbounds %struct.delay_line, %struct.delay_line* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  br label %12

12:                                               ; preds = %28, %3
  %13 = load %struct.delay_line*, %struct.delay_line** %5, align 8
  %14 = getelementptr inbounds %struct.delay_line, %struct.delay_line* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  store %struct.mbuf* %16, %struct.mbuf** %7, align 8
  %17 = icmp ne %struct.mbuf* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %12
  %19 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %20 = call %struct.dn_pkt_tag* @dn_tag_get(%struct.mbuf* %19)
  store %struct.dn_pkt_tag* %20, %struct.dn_pkt_tag** %8, align 8
  %21 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %8, align 8
  %22 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DN_KEY_LEQ(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %43

28:                                               ; preds = %18
  %29 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  %31 = load %struct.mbuf*, %struct.mbuf** %30, align 8
  %32 = load %struct.delay_line*, %struct.delay_line** %5, align 8
  %33 = getelementptr inbounds %struct.delay_line, %struct.delay_line* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store %struct.mbuf* %31, %struct.mbuf** %34, align 8
  %35 = load %struct.delay_line*, %struct.delay_line** %5, align 8
  %36 = getelementptr inbounds %struct.delay_line, %struct.delay_line* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.mq*, %struct.mq** %4, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %42 = call i32 @mq_append(%struct.mq* %40, %struct.mbuf* %41)
  br label %12

43:                                               ; preds = %27, %12
  %44 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %45 = icmp ne %struct.mbuf* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.delay_line*, %struct.delay_line** %5, align 8
  %48 = getelementptr inbounds %struct.delay_line, %struct.delay_line* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %8, align 8
  %51 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.delay_line*, %struct.delay_line** %5, align 8
  %54 = call i32 @heap_insert(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 0), i32 %52, %struct.delay_line* %53)
  br label %55

55:                                               ; preds = %46, %43
  ret void
}

declare dso_local %struct.dn_pkt_tag* @dn_tag_get(%struct.mbuf*) #1

declare dso_local i32 @DN_KEY_LEQ(i32, i32) #1

declare dso_local i32 @mq_append(%struct.mq*, %struct.mbuf*) #1

declare dso_local i32 @heap_insert(i32*, i32, %struct.delay_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
