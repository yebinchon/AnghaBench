; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_push_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_push_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_softc = type { %struct.pfsync_bucket* }
%struct.pfsync_bucket = type { i32 }

@pfsync_buckets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfsync_softc*)* @pfsync_push_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_push_all(%struct.pfsync_softc* %0) #0 {
  %2 = alloca %struct.pfsync_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfsync_bucket*, align 8
  store %struct.pfsync_softc* %0, %struct.pfsync_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @pfsync_buckets, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load %struct.pfsync_softc*, %struct.pfsync_softc** %2, align 8
  %11 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %10, i32 0, i32 0
  %12 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %12, i64 %14
  store %struct.pfsync_bucket* %15, %struct.pfsync_bucket** %4, align 8
  %16 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %17 = call i32 @PFSYNC_BUCKET_LOCK(%struct.pfsync_bucket* %16)
  %18 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %19 = call i32 @pfsync_push(%struct.pfsync_bucket* %18)
  %20 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %21 = call i32 @PFSYNC_BUCKET_UNLOCK(%struct.pfsync_bucket* %20)
  br label %22

22:                                               ; preds = %9
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  ret void
}

declare dso_local i32 @PFSYNC_BUCKET_LOCK(%struct.pfsync_bucket*) #1

declare dso_local i32 @pfsync_push(%struct.pfsync_bucket*) #1

declare dso_local i32 @PFSYNC_BUCKET_UNLOCK(%struct.pfsync_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
