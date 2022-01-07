; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/opencrypto/extr_poly1305_test.c_test_rfc7539_poly1305_vectors.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/opencrypto/extr_poly1305_test.c_test_rfc7539_poly1305_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poly1305_kat = type { i32, i32 }

@POLY1305_HASH_LEN = common dso_local global i32 0, align 4
@POLY1305_KEY_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cryptodev\00", align 1
@rfc7539_kats = common dso_local global %struct.poly1305_kat* null, align 8
@CRYPTO_POLY1305 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"KAT %s failed:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_rfc7539_poly1305_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rfc7539_poly1305_vectors(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [512 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.poly1305_kat*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* @POLY1305_HASH_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load i32, i32* @POLY1305_HASH_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %21 = load i32, i32* @POLY1305_KEY_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @ATF_REQUIRE_KERNEL_MODULE(i8* %24)
  %26 = call i32 @ATF_REQUIRE_KERNEL_MODULE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (...) @get_handle_fd()
  store i32 %27, i32* %10, align 4
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %63, %2
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.poly1305_kat*, %struct.poly1305_kat** @rfc7539_kats, align 8
  %31 = call i64 @nitems(%struct.poly1305_kat* %30)
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %28
  %34 = load %struct.poly1305_kat*, %struct.poly1305_kat** @rfc7539_kats, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.poly1305_kat, %struct.poly1305_kat* %34, i64 %35
  store %struct.poly1305_kat* %36, %struct.poly1305_kat** %13, align 8
  %37 = load %struct.poly1305_kat*, %struct.poly1305_kat** %13, align 8
  %38 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %39 = call i32 @parse_vector(%struct.poly1305_kat* %37, i32* %23, i32* %38, i32* %20)
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @CRYPTO_POLY1305, align 4
  %42 = load i32, i32* %3, align 4
  %43 = mul nuw i64 4, %22
  %44 = trunc i64 %43 to i32
  %45 = call i32 @create_session(i32 %40, i32 %41, i32 %42, i32* %23, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %49 = load %struct.poly1305_kat*, %struct.poly1305_kat** %13, align 8
  %50 = getelementptr inbounds %struct.poly1305_kat, %struct.poly1305_kat* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @do_cryptop(i32 %46, i32 %47, i32* %48, i32 %51, i32* %17)
  %53 = mul nuw i64 4, %19
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcmp(i32* %17, i32* %20, i32 %54)
  %56 = load %struct.poly1305_kat*, %struct.poly1305_kat** %13, align 8
  %57 = getelementptr inbounds %struct.poly1305_kat, %struct.poly1305_kat* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ATF_CHECK_EQ_MSG(i32 %55, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @destroy_session(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %33
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %12, align 8
  br label %28

66:                                               ; preds = %28
  %67 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %67)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ATF_REQUIRE_KERNEL_MODULE(i8*) #2

declare dso_local i32 @get_handle_fd(...) #2

declare dso_local i64 @nitems(%struct.poly1305_kat*) #2

declare dso_local i32 @parse_vector(%struct.poly1305_kat*, i32*, i32*, i32*) #2

declare dso_local i32 @create_session(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @do_cryptop(i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @ATF_CHECK_EQ_MSG(i32, i32, i8*, i32) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @destroy_session(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
