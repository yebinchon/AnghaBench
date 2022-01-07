; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_crfind.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_crfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_find_op = type { i32, i8* }

@crfind.find = internal global %struct.crypt_find_op zeroinitializer, align 8
@CRYPTO_FLAG_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@CRYPTO_FLAG_HARDWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@CRIOFINDDEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"ioctl(CIOCFINDDEV): crid %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @crfind(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @CRYPTO_FLAG_SOFTWARE, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CRYPTO_FLAG_HARDWARE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %26

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13
  %15 = call i32 @bzero(%struct.crypt_find_op* @crfind.find, i32 16)
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.crypt_find_op, %struct.crypt_find_op* @crfind.find, i32 0, i32 0), align 8
  %17 = call i32 (...) @devcrypto()
  %18 = load i32, i32* @CRIOFINDDEV, align 4
  %19 = call i32 @ioctl(i32 %17, i32 %18, %struct.crypt_find_op* @crfind.find)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i8*, i8** getelementptr inbounds (%struct.crypt_find_op, %struct.crypt_find_op* @crfind.find, i32 0, i32 1), align 8
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %24, %12, %7
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local i32 @bzero(%struct.crypt_find_op*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.crypt_find_op*) #1

declare dso_local i32 @devcrypto(...) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
