; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_autokey_callout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_autokey_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_fastopen_callout = type { i32, i32 }

@V_tcp_fastopen_autokey = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tcp_fastopen_autokey_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_fastopen_autokey_callout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tcp_fastopen_callout*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.tcp_fastopen_callout*
  store %struct.tcp_fastopen_callout* %5, %struct.tcp_fastopen_callout** %3, align 8
  %6 = load %struct.tcp_fastopen_callout*, %struct.tcp_fastopen_callout** %3, align 8
  %7 = getelementptr inbounds %struct.tcp_fastopen_callout, %struct.tcp_fastopen_callout* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @CURVNET_SET(i32 %8)
  %10 = call i32 (...) @tcp_fastopen_autokey_locked()
  %11 = load %struct.tcp_fastopen_callout*, %struct.tcp_fastopen_callout** %3, align 8
  %12 = getelementptr inbounds %struct.tcp_fastopen_callout, %struct.tcp_fastopen_callout* %11, i32 0, i32 0
  %13 = load i32, i32* @V_tcp_fastopen_autokey, align 4
  %14 = load i32, i32* @hz, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load %struct.tcp_fastopen_callout*, %struct.tcp_fastopen_callout** %3, align 8
  %17 = call i32 @callout_reset(i32* %12, i32 %15, void (i8*)* @tcp_fastopen_autokey_callout, %struct.tcp_fastopen_callout* %16)
  %18 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @tcp_fastopen_autokey_locked(...) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.tcp_fastopen_callout*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
