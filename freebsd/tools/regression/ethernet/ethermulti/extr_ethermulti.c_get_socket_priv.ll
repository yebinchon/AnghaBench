; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/ethernet/ethermulti/extr_ethermulti.c_get_socket_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/ethernet/ethermulti/extr_ethermulti.c_get_socket_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"get_sock_priv: running without real uid 0\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"get_sock_priv: seteuid(0)\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"get_sock_priv: seteuid(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_socket_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_socket_priv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i64 (...) @getuid()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = call i32 (...) @geteuid()
  store i32 %10, i32* %3, align 4
  %11 = call i64 @seteuid(i32 0)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %9
  %16 = load i32, i32* @PF_INET, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @socket(i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @seteuid(i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i64 @seteuid(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
