; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_hmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCTP_AUTH_DIGEST_LEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_hmac(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca [128 x i32], align 16
  %18 = alloca [128 x i32], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32, i32* @SCTP_AUTH_DIGEST_LEN_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %19, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %20, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %6
  %30 = load i64, i64* %10, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %11, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %12, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %13, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35, %32, %29, %6
  store i64 0, i64* %7, align 8
  store i32 1, i32* %22, align 4
  br label %121

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @sctp_get_hmac_digest_len(i32 %43)
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i64 0, i64* %7, align 8
  store i32 1, i32* %22, align 4
  br label %121

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @sctp_get_hmac_block_len(i32 %49)
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %15, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @sctp_hmac_init(i32 %55, i32* %16)
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @sctp_hmac_update(i32 %57, i32* %16, i32* %58, i64 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @sctp_hmac_final(i32 %61, i32* %16, i32* %26)
  %63 = load i64, i64* %14, align 8
  store i64 %63, i64* %10, align 8
  store i32* %26, i32** %9, align 8
  br label %64

64:                                               ; preds = %54, %48
  %65 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @memset(i32* %65, i32 0, i64 %66)
  %68 = getelementptr inbounds [128 x i32], [128 x i32]* %18, i64 0, i64 0
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @memset(i32* %68, i32 0, i64 %69)
  %71 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %72 = load i32*, i32** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @memcpy(i32* %71, i32* %72, i64 %73)
  %75 = getelementptr inbounds [128 x i32], [128 x i32]* %18, i64 0, i64 0
  %76 = load i32*, i32** %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @memcpy(i32* %75, i32* %76, i64 %77)
  store i64 0, i64* %21, align 8
  br label %79

79:                                               ; preds = %92, %64
  %80 = load i64, i64* %21, align 8
  %81 = load i64, i64* %15, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load i64, i64* %21, align 8
  %85 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, 54
  store i32 %87, i32* %85, align 4
  %88 = load i64, i64* %21, align 8
  %89 = getelementptr inbounds [128 x i32], [128 x i32]* %18, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, 92
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %83
  %93 = load i64, i64* %21, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %21, align 8
  br label %79

95:                                               ; preds = %79
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @sctp_hmac_init(i32 %96, i32* %16)
  %98 = load i32, i32* %8, align 4
  %99 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %100 = load i64, i64* %15, align 8
  %101 = call i32 @sctp_hmac_update(i32 %98, i32* %16, i32* %99, i64 %100)
  %102 = load i32, i32* %8, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @sctp_hmac_update(i32 %102, i32* %16, i32* %103, i64 %104)
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @sctp_hmac_final(i32 %106, i32* %16, i32* %26)
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @sctp_hmac_init(i32 %108, i32* %16)
  %110 = load i32, i32* %8, align 4
  %111 = getelementptr inbounds [128 x i32], [128 x i32]* %18, i64 0, i64 0
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @sctp_hmac_update(i32 %110, i32* %16, i32* %111, i64 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @sctp_hmac_update(i32 %114, i32* %16, i32* %26, i64 %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @sctp_hmac_final(i32 %117, i32* %16, i32* %118)
  %120 = load i64, i64* %14, align 8
  store i64 %120, i64* %7, align 8
  store i32 1, i32* %22, align 4
  br label %121

121:                                              ; preds = %95, %47, %41
  %122 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i64, i64* %7, align 8
  ret i64 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sctp_get_hmac_digest_len(i32) #2

declare dso_local i64 @sctp_get_hmac_block_len(i32) #2

declare dso_local i32 @sctp_hmac_init(i32, i32*) #2

declare dso_local i32 @sctp_hmac_update(i32, i32*, i32*, i64) #2

declare dso_local i32 @sctp_hmac_final(i32, i32*, i32*) #2

declare dso_local i32 @memset(i32*, i32, i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
