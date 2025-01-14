; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_set_winsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_set_winsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.winsize }
%struct.winsize = type { i32 }

@SIGWINCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_set_winsize(%struct.tty* %0, %struct.winsize* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.winsize*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.winsize* %1, %struct.winsize** %4, align 8
  %5 = load %struct.tty*, %struct.tty** %3, align 8
  %6 = getelementptr inbounds %struct.tty, %struct.tty* %5, i32 0, i32 0
  %7 = load %struct.winsize*, %struct.winsize** %4, align 8
  %8 = call i64 @memcmp(%struct.winsize* %6, %struct.winsize* %7, i32 4)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.tty*, %struct.tty** %3, align 8
  %13 = getelementptr inbounds %struct.tty, %struct.tty* %12, i32 0, i32 0
  %14 = load %struct.winsize*, %struct.winsize** %4, align 8
  %15 = bitcast %struct.winsize* %13 to i8*
  %16 = bitcast %struct.winsize* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.tty*, %struct.tty** %3, align 8
  %18 = load i32, i32* @SIGWINCH, align 4
  %19 = call i32 @tty_signal_pgrp(%struct.tty* %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @memcmp(%struct.winsize*, %struct.winsize*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_signal_pgrp(%struct.tty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
