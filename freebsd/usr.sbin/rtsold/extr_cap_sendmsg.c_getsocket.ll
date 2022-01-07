; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_cap_sendmsg.c_getsocket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_cap_sendmsg.c_getsocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@CAP_CONNECT = common dso_local global i32 0, align 4
@CAP_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @getsocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsocket(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* @AF_INET6, align 4
  %14 = load i32, i32* @SOCK_RAW, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @socket(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %30

19:                                               ; preds = %12
  %20 = load i32, i32* @CAP_CONNECT, align 4
  %21 = load i32, i32* @CAP_SEND, align 4
  %22 = call i32 @cap_rights_init(i32* %6, i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @caph_rights_limit(i32 %23, i32* %6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %26, %18, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
