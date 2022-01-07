; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rusers/extr_rusers.c_allhosts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rusers/extr_rusers.c_allhosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RUSERSPROG = common dso_local global i32 0, align 4
@RUSERSVERS_IDLE = common dso_local global i32 0, align 4
@RUSERSPROC_NAMES = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@xdr_utmpidlearr = common dso_local global i64 0, align 8
@rusers_reply = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_TIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @allhosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allhosts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @memset(i32* %1, i32 0, i32 4)
  %4 = load i32, i32* @RUSERSPROG, align 4
  %5 = load i32, i32* @RUSERSVERS_IDLE, align 4
  %6 = load i32, i32* @RUSERSPROC_NAMES, align 4
  %7 = load i64, i64* @xdr_void, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i64, i64* @xdr_utmpidlearr, align 8
  %10 = trunc i64 %9 to i32
  %11 = bitcast i32* %1 to i8*
  %12 = load i64, i64* @rusers_reply, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @clnt_broadcast(i32 %4, i32 %5, i32 %6, i32 %8, i32* null, i32 %10, i8* %11, i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @RPC_SUCCESS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %0
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @RPC_TIMEDOUT, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @clnt_sperrno(i32 %23)
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %18, %0
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @clnt_broadcast(i32, i32, i32, i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @clnt_sperrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
