; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsyncintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsyncintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.pfsync_softc = type { i32, %struct.pfsync_bucket*, %struct.TYPE_3__* }
%struct.pfsync_bucket = type { i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mbuf = type { i32, %struct.mbuf* }

@pfsync_buckets = common dso_local global i32 0, align 4
@PFSYNCF_BUCKET_PUSH = common dso_local global i32 0, align 4
@PFSYNC_MINPKT = common dso_local global i64 0, align 8
@M_SKIP_FIREWALL = common dso_local global i32 0, align 4
@IP_RAWOUTPUT = common dso_local global i32 0, align 4
@V_pfsyncstats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pfsyncintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsyncintr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pfsync_softc*, align 8
  %4 = alloca %struct.pfsync_bucket*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.pfsync_softc*
  store %struct.pfsync_softc* %9, %struct.pfsync_softc** %3, align 8
  %10 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %11 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CURVNET_SET(i32 %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %95, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @pfsync_buckets, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %98

20:                                               ; preds = %16
  %21 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %22 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %21, i32 0, i32 1
  %23 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %23, i64 %25
  store %struct.pfsync_bucket* %26, %struct.pfsync_bucket** %4, align 8
  %27 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %28 = call i32 @PFSYNC_BUCKET_LOCK(%struct.pfsync_bucket* %27)
  %29 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %30 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PFSYNCF_BUCKET_PUSH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %20
  %36 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %37 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PFSYNC_MINPKT, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %43 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pfsync_sendout(i32 0, i32 %44)
  %46 = load i32, i32* @PFSYNCF_BUCKET_PUSH, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %49 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %41, %35, %20
  %53 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %54 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %53, i32 0, i32 2
  %55 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %56 = call i32 @_IF_DEQUEUE_ALL(i32* %54, %struct.mbuf* %55)
  %57 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %58 = call i32 @PFSYNC_BUCKET_UNLOCK(%struct.pfsync_bucket* %57)
  br label %59

59:                                               ; preds = %92, %52
  %60 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %61 = icmp ne %struct.mbuf* %60, null
  br i1 %61, label %62, label %94

62:                                               ; preds = %59
  %63 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 1
  %65 = load %struct.mbuf*, %struct.mbuf** %64, align 8
  store %struct.mbuf* %65, %struct.mbuf** %6, align 8
  %66 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %66, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %67, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %69 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @M_SKIP_FIREWALL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %76 = call i64 @ip_output(%struct.mbuf* %75, i32* null, i32* null, i32 0, i32* null, i32* null)
  br label %91

77:                                               ; preds = %62
  %78 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %79 = load i32, i32* @IP_RAWOUTPUT, align 4
  %80 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %81 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %80, i32 0, i32 0
  %82 = call i64 @ip_output(%struct.mbuf* %78, i32* null, i32* null, i32 %79, i32* %81, i32* null)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @V_pfsyncstats, i32 0, i32 1), align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @V_pfsyncstats, i32 0, i32 1), align 4
  br label %90

87:                                               ; preds = %77
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @V_pfsyncstats, i32 0, i32 0), align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @V_pfsyncstats, i32 0, i32 0), align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %74
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %93, %struct.mbuf** %5, align 8
  br label %59

94:                                               ; preds = %59
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %16

98:                                               ; preds = %16
  %99 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @PFSYNC_BUCKET_LOCK(%struct.pfsync_bucket*) #1

declare dso_local i32 @pfsync_sendout(i32, i32) #1

declare dso_local i32 @_IF_DEQUEUE_ALL(i32*, %struct.mbuf*) #1

declare dso_local i32 @PFSYNC_BUCKET_UNLOCK(%struct.pfsync_bucket*) #1

declare dso_local i64 @ip_output(%struct.mbuf*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
