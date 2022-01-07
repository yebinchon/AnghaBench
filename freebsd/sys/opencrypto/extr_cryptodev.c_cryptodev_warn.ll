; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptodev.c_cryptodev_warn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptodev.c_cryptodev_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.csession = type { i32, i32 }

@cryptodev_warn.arc4warn = internal global %struct.timeval zeroinitializer, align 4
@cryptodev_warn.blfwarn = internal global %struct.timeval zeroinitializer, align 4
@cryptodev_warn.castwarn = internal global %struct.timeval zeroinitializer, align 4
@cryptodev_warn.deswarn = internal global %struct.timeval zeroinitializer, align 4
@cryptodev_warn.md5warn = internal global %struct.timeval zeroinitializer, align 4
@cryptodev_warn.skipwarn = internal global %struct.timeval zeroinitializer, align 4
@cryptodev_warn.tdeswarn = internal global %struct.timeval zeroinitializer, align 4
@warninterval = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DES cipher via /dev/crypto\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"3DES cipher via /dev/crypto\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Blowfish cipher via /dev/crypto\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"CAST128 cipher via /dev/crypto\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Skipjack cipher via /dev/crypto\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"ARC4 cipher via /dev/crypto\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"MD5-HMAC authenticator via /dev/crypto\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csession*)* @cryptodev_warn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cryptodev_warn(%struct.csession* %0) #0 {
  %2 = alloca %struct.csession*, align 8
  store %struct.csession* %0, %struct.csession** %2, align 8
  %3 = load %struct.csession*, %struct.csession** %2, align 8
  %4 = getelementptr inbounds %struct.csession, %struct.csession* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %42 [
    i32 130, label %6
    i32 134, label %12
    i32 132, label %18
    i32 131, label %24
    i32 128, label %30
    i32 133, label %36
  ]

6:                                                ; preds = %1
  %7 = call i32 @ratecheck(%struct.timeval* @cryptodev_warn.deswarn, i32* @warninterval)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @gone_in(i32 13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  br label %42

12:                                               ; preds = %1
  %13 = call i32 @ratecheck(%struct.timeval* @cryptodev_warn.tdeswarn, i32* @warninterval)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @gone_in(i32 13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  br label %42

18:                                               ; preds = %1
  %19 = call i32 @ratecheck(%struct.timeval* @cryptodev_warn.blfwarn, i32* @warninterval)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @gone_in(i32 13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  br label %42

24:                                               ; preds = %1
  %25 = call i32 @ratecheck(%struct.timeval* @cryptodev_warn.castwarn, i32* @warninterval)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @gone_in(i32 13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  br label %42

30:                                               ; preds = %1
  %31 = call i32 @ratecheck(%struct.timeval* @cryptodev_warn.skipwarn, i32* @warninterval)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @gone_in(i32 13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  br label %42

36:                                               ; preds = %1
  %37 = call i32 @ratecheck(%struct.timeval* @cryptodev_warn.arc4warn, i32* @warninterval)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @gone_in(i32 13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %1, %41, %35, %29, %23, %17, %11
  %43 = load %struct.csession*, %struct.csession** %2, align 8
  %44 = getelementptr inbounds %struct.csession, %struct.csession* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %52 [
    i32 129, label %46
  ]

46:                                               ; preds = %42
  %47 = call i32 @ratecheck(%struct.timeval* @cryptodev_warn.md5warn, i32* @warninterval)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @gone_in(i32 13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %42, %51
  ret void
}

declare dso_local i32 @ratecheck(%struct.timeval*, i32*) #1

declare dso_local i32 @gone_in(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
