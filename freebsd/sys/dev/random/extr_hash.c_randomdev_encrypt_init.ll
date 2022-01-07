; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/random/extr_hash.c_randomdev_encrypt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/random/extr_hash.c_randomdev_encrypt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.randomdev_key = type { i32 }

@random_chachamode = common dso_local global i64 0, align 8
@RANDOM_KEYSIZE = common dso_local global i32 0, align 4
@MODE_ECB = common dso_local global i32 0, align 4
@DIR_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randomdev_encrypt_init(%union.randomdev_key* %0, i8* %1) #0 {
  %3 = alloca %union.randomdev_key*, align 8
  %4 = alloca i8*, align 8
  store %union.randomdev_key* %0, %union.randomdev_key** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* @random_chachamode, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %union.randomdev_key*, %union.randomdev_key** %3, align 8
  %9 = bitcast %union.randomdev_key* %8 to i32*
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @RANDOM_KEYSIZE, align 4
  %12 = mul nsw i32 %11, 8
  %13 = call i32 @chacha_keysetup(i32* %9, i8* %10, i32 %12)
  br label %26

14:                                               ; preds = %2
  %15 = load %union.randomdev_key*, %union.randomdev_key** %3, align 8
  %16 = bitcast %union.randomdev_key* %15 to i32*
  %17 = load i32, i32* @MODE_ECB, align 4
  %18 = call i32 @rijndael_cipherInit(i32* %16, i32 %17, i32* null)
  %19 = load %union.randomdev_key*, %union.randomdev_key** %3, align 8
  %20 = bitcast %union.randomdev_key* %19 to i32*
  %21 = load i32, i32* @DIR_ENCRYPT, align 4
  %22 = load i32, i32* @RANDOM_KEYSIZE, align 4
  %23 = mul nsw i32 %22, 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @rijndael_makeKey(i32* %20, i32 %21, i32 %23, i8* %24)
  br label %26

26:                                               ; preds = %14, %7
  ret void
}

declare dso_local i32 @chacha_keysetup(i32*, i8*, i32) #1

declare dso_local i32 @rijndael_cipherInit(i32*, i32, i32*) #1

declare dso_local i32 @rijndael_makeKey(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
