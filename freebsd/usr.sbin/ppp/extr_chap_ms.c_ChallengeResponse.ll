; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap_ms.c_ChallengeResponse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap_ms.c_ChallengeResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @ChallengeResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ChallengeResponse(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [21 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i8 signext 0, i32 21)
  %10 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @memcpy(i8* %10, i32* %11, i32 16)
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = call i32 @DesEncrypt(i32* %13, i8* %15, i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %21 = getelementptr inbounds i8, i8* %20, i64 7
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 8
  %24 = call i32 @DesEncrypt(i32* %19, i8* %21, i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %27 = getelementptr inbounds i8, i8* %26, i64 14
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 16
  %30 = call i32 @DesEncrypt(i32* %25, i8* %27, i32* %29)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @DesEncrypt(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
