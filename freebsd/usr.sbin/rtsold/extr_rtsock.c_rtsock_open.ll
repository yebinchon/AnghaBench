; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_rtsock.c_rtsock_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_rtsock.c_rtsock_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_ROUTE = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@CAP_EVENT = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsock_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @PF_ROUTE, align 4
  %6 = load i32, i32* @SOCK_RAW, align 4
  %7 = call i32 @socket(i32 %5, i32 %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %1, align 4
  br label %26

12:                                               ; preds = %0
  %13 = load i32, i32* @CAP_EVENT, align 4
  %14 = load i32, i32* @CAP_READ, align 4
  %15 = call i32 @cap_rights_init(i32* %2, i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @caph_rights_limit(i32 %16, i32* %2)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @close(i32 %21)
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %1, align 4
  br label %26

24:                                               ; preds = %12
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %24, %19, %10
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
