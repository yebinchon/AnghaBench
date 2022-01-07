; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_keyctx.c_t4_init_hmac_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_keyctx.c_t4_init_hmac_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_hash = type { i32, i32, i32, i32 (%union.authctx*, i8*, i32)*, i32 (%union.authctx*)*, i32 (i8*, %union.authctx*)* }
%union.authctx = type { i32 }

@SHA2_512_BLOCK_LEN = common dso_local global i32 0, align 4
@HMAC_IPAD_VAL = common dso_local global i8 0, align 1
@HMAC_OPAD_VAL = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_init_hmac_digest(%struct.auth_hash* %0, i64 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.auth_hash*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %union.authctx, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.auth_hash* %0, %struct.auth_hash** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load i32, i32* @SHA2_512_BLOCK_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @SHA2_512_BLOCK_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sdiv i32 %23, 8
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %27 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %5
  %31 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %32 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %31, i32 0, i32 4
  %33 = load i32 (%union.authctx*)*, i32 (%union.authctx*)** %32, align 8
  %34 = call i32 %33(%union.authctx* %11)
  %35 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %36 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %35, i32 0, i32 3
  %37 = load i32 (%union.authctx*, i8*, i32)*, i32 (%union.authctx*, i8*, i32)** %36, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 %37(%union.authctx* %11, i8* %38, i32 %39)
  %41 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %42 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %41, i32 0, i32 5
  %43 = load i32 (i8*, %union.authctx*)*, i32 (i8*, %union.authctx*)** %42, align 8
  %44 = call i32 %43(i8* %19, %union.authctx* %11)
  %45 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %46 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  br label %52

48:                                               ; preds = %5
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @memcpy(i8* %19, i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %30
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %19, i64 %54
  %56 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %57 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @memset(i8* %55, i32 0, i32 %60)
  %62 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %63 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i8* %22, i8* %19, i32 %64)
  store i64 0, i64* %15, align 8
  br label %66

66:                                               ; preds = %90, %52
  %67 = load i64, i64* %15, align 8
  %68 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %69 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %66
  %74 = load i8, i8* @HMAC_IPAD_VAL, align 1
  %75 = sext i8 %74 to i32
  %76 = load i64, i64* %15, align 8
  %77 = getelementptr inbounds i8, i8* %19, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = xor i32 %79, %75
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %77, align 1
  %82 = load i8, i8* @HMAC_OPAD_VAL, align 1
  %83 = sext i8 %82 to i32
  %84 = load i64, i64* %15, align 8
  %85 = getelementptr inbounds i8, i8* %22, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = xor i32 %87, %83
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %85, align 1
  br label %90

90:                                               ; preds = %73
  %91 = load i64, i64* %15, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %15, align 8
  br label %66

93:                                               ; preds = %66
  %94 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %95 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %94, i32 0, i32 4
  %96 = load i32 (%union.authctx*)*, i32 (%union.authctx*)** %95, align 8
  %97 = call i32 %96(%union.authctx* %11)
  %98 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %99 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %98, i32 0, i32 3
  %100 = load i32 (%union.authctx*, i8*, i32)*, i32 (%union.authctx*, i8*, i32)** %99, align 8
  %101 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %102 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 %100(%union.authctx* %11, i8* %19, i32 %103)
  %105 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %106 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @t4_copy_partial_hash(i32 %107, %union.authctx* %11, i8* %108)
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @roundup2(i64 %110, i32 16)
  %112 = load i8*, i8** %10, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %10, align 8
  %115 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %116 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %115, i32 0, i32 4
  %117 = load i32 (%union.authctx*)*, i32 (%union.authctx*)** %116, align 8
  %118 = call i32 %117(%union.authctx* %11)
  %119 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %120 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %119, i32 0, i32 3
  %121 = load i32 (%union.authctx*, i8*, i32)*, i32 (%union.authctx*, i8*, i32)** %120, align 8
  %122 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %123 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 %121(%union.authctx* %11, i8* %22, i32 %124)
  %126 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %127 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @t4_copy_partial_hash(i32 %128, %union.authctx* %11, i8* %129)
  %131 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %131)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @t4_copy_partial_hash(i32, %union.authctx*, i8*) #2

declare dso_local i32 @roundup2(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
