; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_retry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servtab = type { i32, %struct.servtab* }

@timingout = common dso_local global i64 0, align 8
@servtab = common dso_local global %struct.servtab* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retry() #0 {
  %1 = alloca %struct.servtab*, align 8
  store i64 0, i64* @timingout, align 8
  %2 = load %struct.servtab*, %struct.servtab** @servtab, align 8
  store %struct.servtab* %2, %struct.servtab** %1, align 8
  br label %3

3:                                                ; preds = %19, %0
  %4 = load %struct.servtab*, %struct.servtab** %1, align 8
  %5 = icmp ne %struct.servtab* %4, null
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = load %struct.servtab*, %struct.servtab** %1, align 8
  %8 = getelementptr inbounds %struct.servtab, %struct.servtab* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load %struct.servtab*, %struct.servtab** %1, align 8
  %13 = call i32 @ISMUX(%struct.servtab* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load %struct.servtab*, %struct.servtab** %1, align 8
  %17 = call i32 @setup(%struct.servtab* %16)
  br label %18

18:                                               ; preds = %15, %11, %6
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.servtab*, %struct.servtab** %1, align 8
  %21 = getelementptr inbounds %struct.servtab, %struct.servtab* %20, i32 0, i32 1
  %22 = load %struct.servtab*, %struct.servtab** %21, align 8
  store %struct.servtab* %22, %struct.servtab** %1, align 8
  br label %3

23:                                               ; preds = %3
  ret void
}

declare dso_local i32 @ISMUX(%struct.servtab*) #1

declare dso_local i32 @setup(%struct.servtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
