; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/fstat/extr_fstat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/fstat/extr_fstat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@PF_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @PF_INET, align 4
  %3 = load i32, i32* @SOCK_DGRAM, align 4
  %4 = call i32 @dotest(i32 %2, i32 %3, i32 0)
  %5 = load i32, i32* @PF_INET, align 4
  %6 = load i32, i32* @SOCK_STREAM, align 4
  %7 = call i32 @dotest(i32 %5, i32 %6, i32 0)
  %8 = load i32, i32* @PF_INET6, align 4
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  %10 = call i32 @dotest(i32 %8, i32 %9, i32 0)
  %11 = load i32, i32* @PF_INET6, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = call i32 @dotest(i32 %11, i32 %12, i32 0)
  %14 = load i32, i32* @PF_LOCAL, align 4
  %15 = load i32, i32* @SOCK_DGRAM, align 4
  %16 = call i32 @dotest(i32 %14, i32 %15, i32 0)
  %17 = load i32, i32* @PF_LOCAL, align 4
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = call i32 @dotest(i32 %17, i32 %18, i32 0)
  ret i32 0
}

declare dso_local i32 @dotest(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
