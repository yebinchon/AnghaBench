; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_find_cookie_match_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_find_cookie_match_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@V_tcp_fastopen_psk_enable = common dso_local global i64 0, align 8
@V_tcp_fastopen_keys = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@V_tcp_fastopen_numpsks = common dso_local global i32 0, align 4
@TCP_FASTOPEN_COOKIE_LEN = common dso_local global i32 0, align 4
@TCP_FASTOPEN_MAX_PSKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @tcp_fastopen_find_cookie_match_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_fastopen_find_cookie_match_locked(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @V_tcp_fastopen_psk_enable, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_keys, i32 0, i32 0), align 8
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %41, %11
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @V_tcp_fastopen_numpsks, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_keys, i32 0, i32 1), align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @TCP_FASTOPEN_COOKIE_LEN, align 4
  %25 = call i32 @tcp_fastopen_make_psk_cookie(i32 %22, i32* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @TCP_FASTOPEN_COOKIE_LEN, align 4
  %28 = call i64 @memcmp(i32* %26, i32* %8, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %54

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @TCP_FASTOPEN_MAX_PSKS, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %13

44:                                               ; preds = %13
  br label %53

45:                                               ; preds = %2
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @TCP_FASTOPEN_COOKIE_LEN, align 4
  %49 = call i64 @memcmp(i32* %46, i32* %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %54

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %44
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %51, %30
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @tcp_fastopen_make_psk_cookie(i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
