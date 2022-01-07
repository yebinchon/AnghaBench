; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_compute_hmac_m.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_compute_hmac_m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.mbuf = type { i32 }

@SCTP_AUTH_DIGEST_LEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_compute_hmac_m(i32 %0, %struct.TYPE_3__* %1, %struct.mbuf* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32, i32* @SCTP_AUTH_DIGEST_LEN_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = icmp eq %struct.TYPE_3__* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %26 = icmp eq %struct.mbuf* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %11, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %5
  store i64 0, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %80

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @sctp_get_hmac_digest_len(i32 %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i64 0, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %80

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @sctp_get_hmac_block_len(i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @sctp_hmac_init(i32 %46, i32* %14)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @sctp_hmac_update(i32 %48, i32* %14, i32 %51, i64 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @sctp_hmac_final(i32 %56, i32* %14, i32* %21)
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @memcpy(i32 %63, i32* %21, i64 %66)
  br label %68

68:                                               ; preds = %45, %37
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i64 @sctp_hmac_m(i32 %69, i32 %72, i64 %75, %struct.mbuf* %76, i64 %77, i32* %78, i32 0)
  store i64 %79, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %80

80:                                               ; preds = %68, %36, %30
  %81 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i64, i64* %6, align 8
  ret i64 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sctp_get_hmac_digest_len(i32) #2

declare dso_local i64 @sctp_get_hmac_block_len(i32) #2

declare dso_local i32 @sctp_hmac_init(i32, i32*) #2

declare dso_local i32 @sctp_hmac_update(i32, i32*, i32, i64) #2

declare dso_local i32 @sctp_hmac_final(i32, i32*, i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i64) #2

declare dso_local i64 @sctp_hmac_m(i32, i32, i64, %struct.mbuf*, i64, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
