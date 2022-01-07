; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_fill_hmac_digest_m.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_fill_hmac_digest_m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.sctp_auth_chunk = type { i32, i32 }
%struct.sctp_tcb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@SCTP_DEBUG_AUTH1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"caching key id %u\0A\00", align 1
@SCTP_AUTH_DEBUG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_fill_hmac_digest_m(%struct.mbuf* %0, i32 %1, %struct.sctp_auth_chunk* %2, %struct.sctp_tcb* %3, i64 %4) #0 {
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_auth_chunk*, align 8
  %9 = alloca %struct.sctp_tcb*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sctp_auth_chunk* %2, %struct.sctp_auth_chunk** %8, align 8
  store %struct.sctp_tcb* %3, %struct.sctp_tcb** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %15 = icmp eq %struct.sctp_tcb* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %8, align 8
  %18 = icmp eq %struct.sctp_auth_chunk* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %5
  br label %122

20:                                               ; preds = %16
  %21 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %22 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @sctp_get_hmac_digest_len(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %8, align 8
  %27 = getelementptr inbounds %struct.sctp_auth_chunk, %struct.sctp_auth_chunk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @SCTP_SIZE32(i32 %29)
  %31 = call i32 @memset(i32 %28, i32 0, i32 %30)
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %34 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %32, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %20
  %40 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %41 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %102

46:                                               ; preds = %39, %20
  %47 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %48 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %55 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @sctp_free_key(i32* %58)
  br label %60

60:                                               ; preds = %53, %46
  %61 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %62 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i64, i64* %10, align 8
  %65 = call %struct.TYPE_7__* @sctp_find_sharedkey(i32* %63, i64 %64)
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %12, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %13, align 8
  br label %73

72:                                               ; preds = %60
  store i32* null, i32** %13, align 8
  br label %73

73:                                               ; preds = %72, %68
  %74 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %75 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %80 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call i32* @sctp_compute_hashkey(i32 %78, i32 %83, i32* %84)
  %86 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %87 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32* %85, i32** %89, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %92 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i64 %90, i64* %94, align 8
  %95 = load i32, i32* @SCTP_DEBUG_AUTH1, align 4
  %96 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %97 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @SCTPDBG(i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %100)
  br label %102

102:                                              ; preds = %73, %39
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @htons(i64 %103)
  %105 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %8, align 8
  %106 = getelementptr inbounds %struct.sctp_auth_chunk, %struct.sctp_auth_chunk* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %108 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %112 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %8, align 8
  %119 = getelementptr inbounds %struct.sctp_auth_chunk, %struct.sctp_auth_chunk* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @sctp_compute_hmac_m(i32 %110, i32* %115, %struct.mbuf* %116, i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %102, %19
  ret void
}

declare dso_local i32 @sctp_get_hmac_digest_len(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @SCTP_SIZE32(i32) #1

declare dso_local i32 @sctp_free_key(i32*) #1

declare dso_local %struct.TYPE_7__* @sctp_find_sharedkey(i32*, i64) #1

declare dso_local i32* @sctp_compute_hashkey(i32, i32, i32*) #1

declare dso_local i32 @SCTPDBG(i32, i8*, i64) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @sctp_compute_hmac_m(i32, i32*, %struct.mbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
