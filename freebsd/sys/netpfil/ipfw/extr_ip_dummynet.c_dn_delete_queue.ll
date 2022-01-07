; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_dn_delete_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_dn_delete_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.dn_queue = type { %struct.TYPE_11__, %struct.TYPE_10__*, %struct.dn_fsk* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.dn_fsk = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.dn_queue*)* }
%struct.TYPE_7__ = type { i32 (%struct.dn_queue*)* }

@DN_DESTROY = common dso_local global i32 0, align 4
@M_DUMMYNET = common dso_local global i32 0, align 4
@dn_cfg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_queue*, i32)* @dn_delete_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_delete_queue(%struct.dn_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.dn_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_fsk*, align 8
  store %struct.dn_queue* %0, %struct.dn_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %7 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %6, i32 0, i32 2
  %8 = load %struct.dn_fsk*, %struct.dn_fsk** %7, align 8
  store %struct.dn_fsk* %8, %struct.dn_fsk** %5, align 8
  %9 = load %struct.dn_fsk*, %struct.dn_fsk** %5, align 8
  %10 = icmp ne %struct.dn_fsk* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.dn_fsk*, %struct.dn_fsk** %5, align 8
  %13 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32 (%struct.dn_queue*)*, i32 (%struct.dn_queue*)** %17, align 8
  %19 = icmp ne i32 (%struct.dn_queue*)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %11
  %21 = load %struct.dn_fsk*, %struct.dn_fsk** %5, align 8
  %22 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32 (%struct.dn_queue*)*, i32 (%struct.dn_queue*)** %26, align 8
  %28 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %29 = call i32 %27(%struct.dn_queue* %28)
  br label %30

30:                                               ; preds = %20, %11, %2
  %31 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %32 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %38 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %37, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @DN_DESTROY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %30
  %44 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %45 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %51 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dn_free_pkts(i64 %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %57 = call i32 @bzero(%struct.dn_queue* %56, i32 24)
  %58 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %59 = load i32, i32* @M_DUMMYNET, align 4
  %60 = call i32 @free(%struct.dn_queue* %58, i32 %59)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dn_cfg, i32 0, i32 0), align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dn_cfg, i32 0, i32 0), align 4
  br label %63

63:                                               ; preds = %55, %30
  ret void
}

declare dso_local i32 @dn_free_pkts(i64) #1

declare dso_local i32 @bzero(%struct.dn_queue*, i32) #1

declare dso_local i32 @free(%struct.dn_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
