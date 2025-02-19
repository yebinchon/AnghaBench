; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_send_plus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_send_plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_softc = type { %struct.TYPE_2__*, %struct.pfsync_bucket* }
%struct.TYPE_2__ = type { i64 }
%struct.pfsync_bucket = type { i64, i64, i32, i8* }

@V_pfsyncif = common dso_local global %struct.pfsync_softc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @pfsync_send_plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_send_plus(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pfsync_softc*, align 8
  %6 = alloca %struct.pfsync_bucket*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.pfsync_softc*, %struct.pfsync_softc** @V_pfsyncif, align 8
  store %struct.pfsync_softc* %7, %struct.pfsync_softc** %5, align 8
  %8 = load %struct.pfsync_softc*, %struct.pfsync_softc** %5, align 8
  %9 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %8, i32 0, i32 1
  %10 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %9, align 8
  %11 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %10, i64 0
  store %struct.pfsync_bucket* %11, %struct.pfsync_bucket** %6, align 8
  %12 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %6, align 8
  %13 = call i32 @PFSYNC_BUCKET_LOCK(%struct.pfsync_bucket* %12)
  %14 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %6, align 8
  %15 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %16, %17
  %19 = load %struct.pfsync_softc*, %struct.pfsync_softc** %5, align 8
  %20 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %18, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %6, align 8
  %27 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pfsync_sendout(i32 1, i32 %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %6, align 8
  %33 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %6, align 8
  %36 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %6, align 8
  %38 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, %34
  store i64 %40, i64* %38, align 8
  %41 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %6, align 8
  %42 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pfsync_sendout(i32 1, i32 %43)
  %45 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %6, align 8
  %46 = call i32 @PFSYNC_BUCKET_UNLOCK(%struct.pfsync_bucket* %45)
  ret void
}

declare dso_local i32 @PFSYNC_BUCKET_LOCK(%struct.pfsync_bucket*) #1

declare dso_local i32 @pfsync_sendout(i32, i32) #1

declare dso_local i32 @PFSYNC_BUCKET_UNLOCK(%struct.pfsync_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
