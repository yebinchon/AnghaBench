; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/who/extr_who.c_process_utmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/who/extr_who.c_process_utmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i64, i32 }

@aflag = common dso_local global i64 0, align 8
@bflag = common dso_local global i64 0, align 8
@USER_PROCESS = common dso_local global i64 0, align 8
@BOOT_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @process_utmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_utmp() #0 {
  %1 = alloca %struct.utmpx*, align 8
  br label %2

2:                                                ; preds = %36, %0
  %3 = call %struct.utmpx* (...) @getutxent()
  store %struct.utmpx* %3, %struct.utmpx** %1, align 8
  %4 = icmp ne %struct.utmpx* %3, null
  br i1 %4, label %5, label %37

5:                                                ; preds = %2
  %6 = load i64, i64* @aflag, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i64, i64* @bflag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8, %5
  %12 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %13 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USER_PROCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %11, %8
  %18 = load i64, i64* @bflag, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %22 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BOOT_TIME, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20, %11
  %27 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %28 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @ttystat(i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %34 = call i32 @row(%struct.utmpx* %33)
  br label %35

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %20, %17
  br label %2

37:                                               ; preds = %2
  ret void
}

declare dso_local %struct.utmpx* @getutxent(...) #1

declare dso_local i64 @ttystat(i32) #1

declare dso_local i32 @row(%struct.utmpx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
