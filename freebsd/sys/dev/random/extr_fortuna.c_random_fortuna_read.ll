; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/random/extr_fortuna.c_random_fortuna_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/random/extr_fortuna.c_random_fortuna_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@RANDOM_KEYSIZE = common dso_local global i32 0, align 4
@fortuna_concurrent_read = common dso_local global i64 0, align 8
@fortuna_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"FS&K: C != 0\00", align 1
@FORTUNA_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @random_fortuna_read(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @RANDOM_KEYSIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i64, i64* @fortuna_concurrent_read, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @random_fortuna_read_concurrent(i32* %14, i64 %15, i32* %10)
  br label %30

17:                                               ; preds = %2
  %18 = call i32 (...) @RANDOM_RESEED_LOCK()
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fortuna_state, i32 0, i32 1), align 4
  %20 = call i32 @uint128_is_zero(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* @FORTUNA_LOCKED, align 4
  %28 = call i32 @random_fortuna_genbytes(i32* %25, i64 %26, i32* %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fortuna_state, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fortuna_state, i32 0, i32 0), i32 %27)
  %29 = call i32 (...) @RANDOM_RESEED_ASSERT_LOCK_NOT_OWNED()
  br label %30

30:                                               ; preds = %17, %13
  %31 = mul nuw i64 4, %8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @explicit_bzero(i32* %10, i32 %32)
  %34 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %34)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @random_fortuna_read_concurrent(i32*, i64, i32*) #2

declare dso_local i32 @RANDOM_RESEED_LOCK(...) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @uint128_is_zero(i32) #2

declare dso_local i32 @random_fortuna_genbytes(i32*, i64, i32*, i32*, i32*, i32) #2

declare dso_local i32 @RANDOM_RESEED_ASSERT_LOCK_NOT_OWNED(...) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
