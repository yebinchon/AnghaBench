; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_ttyopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_ttyopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }
%struct.ttyfd = type { i32 }

@CLOCAL = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@uart_stdio = common dso_local global i64 0, align 8
@tio_stdio_orig = common dso_local global %struct.termios zeroinitializer, align 4
@ttyclose = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttyfd*)* @ttyopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttyopen(%struct.ttyfd* %0) #0 {
  %2 = alloca %struct.ttyfd*, align 8
  %3 = alloca %struct.termios, align 4
  %4 = alloca %struct.termios, align 4
  store %struct.ttyfd* %0, %struct.ttyfd** %2, align 8
  %5 = load %struct.ttyfd*, %struct.ttyfd** %2, align 8
  %6 = getelementptr inbounds %struct.ttyfd, %struct.ttyfd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @tcgetattr(i32 %7, %struct.termios* %3)
  %9 = bitcast %struct.termios* %4 to i8*
  %10 = bitcast %struct.termios* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = call i32 @cfmakeraw(%struct.termios* %4)
  %12 = load i32, i32* @CLOCAL, align 4
  %13 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %12
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ttyfd*, %struct.ttyfd** %2, align 8
  %17 = getelementptr inbounds %struct.ttyfd, %struct.ttyfd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TCSANOW, align 4
  %20 = call i32 @tcsetattr(i32 %18, i32 %19, %struct.termios* %4)
  %21 = load i64, i64* @uart_stdio, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = bitcast %struct.termios* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.termios* @tio_stdio_orig to i8*), i8* align 4 %24, i64 4, i1 false)
  %25 = load i32, i32* @ttyclose, align 4
  %26 = call i32 @atexit(i32 %25)
  br label %27

27:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfmakeraw(%struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @atexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
