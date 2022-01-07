; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_compute_hmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_compute_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@SCTP_AUTH_DIGEST_LEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_compute_hmac(i32 %0, %struct.TYPE_3__* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
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
  store i32* %2, i32** %9, align 8
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
  br i1 %23, label %33, label %24

24:                                               ; preds = %5
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %10, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %11, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27, %24, %5
  store i64 0, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %83

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @sctp_get_hmac_digest_len(i32 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i64 0, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %83

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @sctp_get_hmac_block_len(i32 %41)
  store i64 %42, i64* %13, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @sctp_hmac_init(i32 %49, i32* %14)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @sctp_hmac_update(i32 %51, i32* %14, i32 %54, i64 %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @sctp_hmac_final(i32 %59, i32* %14, i32* %21)
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @memcpy(i32 %66, i32* %21, i64 %69)
  br label %71

71:                                               ; preds = %48, %40
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i64 @sctp_hmac(i32 %72, i32 %75, i64 %78, i32* %79, i64 %80, i32* %81)
  store i64 %82, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %83

83:                                               ; preds = %71, %39, %33
  %84 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i64, i64* %6, align 8
  ret i64 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sctp_get_hmac_digest_len(i32) #2

declare dso_local i64 @sctp_get_hmac_block_len(i32) #2

declare dso_local i32 @sctp_hmac_init(i32, i32*) #2

declare dso_local i32 @sctp_hmac_update(i32, i32*, i32, i64) #2

declare dso_local i32 @sctp_hmac_final(i32, i32*, i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i64) #2

declare dso_local i64 @sctp_hmac(i32, i32, i64, i32*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
