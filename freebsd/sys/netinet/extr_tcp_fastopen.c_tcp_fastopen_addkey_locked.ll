; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_addkey_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_addkey_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@V_tcp_fastopen_keys = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TCP_FASTOPEN_MAX_KEYS = common dso_local global i64 0, align 8
@TCP_FASTOPEN_KEY_LEN = common dso_local global i32 0, align 4
@V_tcp_fastopen_numkeys = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @tcp_fastopen_addkey_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_fastopen_addkey_locked(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_keys, i32 0, i32 0), align 8
  %4 = add nsw i64 %3, 1
  store i64 %4, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_keys, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_keys, i32 0, i32 0), align 8
  %6 = load i64, i64* @TCP_FASTOPEN_MAX_KEYS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_keys, i32 0, i32 0), align 8
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_keys, i32 0, i32 1), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_keys, i32 0, i32 0), align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @TCP_FASTOPEN_KEY_LEN, align 4
  %16 = call i32 @memcpy(i32 %13, i32* %14, i32 %15)
  %17 = load i64, i64* @V_tcp_fastopen_numkeys, align 8
  %18 = load i64, i64* @TCP_FASTOPEN_MAX_KEYS, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = load i64, i64* @V_tcp_fastopen_numkeys, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @V_tcp_fastopen_numkeys, align 8
  br label %23

23:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
