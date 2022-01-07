; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cysettimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cysettimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.com_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@cy_timeout_handle = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@cy_timeout = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@NPORTS = common dso_local global i32 0, align 4
@TS_ISOPEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@cy_timeouts_until_log = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cysettimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cysettimeout() #0 {
  %1 = alloca %struct.com_s*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @cy_timeout_handle, align 4
  %5 = call i32 @untimeout(i32 (i8*)* @cywakeup, i8* null, i32 %4)
  %6 = load i32, i32* @hz, align 4
  store i32 %6, i32* @cy_timeout, align 4
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %34, %0
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NPORTS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.com_s* @cy_addr(i32 %13)
  store %struct.com_s* %14, %struct.com_s** %1, align 8
  %15 = load %struct.com_s*, %struct.com_s** %1, align 8
  %16 = icmp ne %struct.com_s* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load %struct.com_s*, %struct.com_s** %1, align 8
  %19 = getelementptr inbounds %struct.com_s, %struct.com_s* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.com_s*, %struct.com_s** %1, align 8
  %24 = getelementptr inbounds %struct.com_s, %struct.com_s* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TS_ISOPEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i64, i64* @TRUE, align 8
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %31, %22, %17, %12
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load i64, i64* %2, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @hz, align 4
  %42 = load i32, i32* @cy_timeout, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* @cy_timeouts_until_log, align 4
  %44 = load i32, i32* @cy_timeout, align 4
  %45 = call i32 @timeout(i32 (i8*)* @cywakeup, i8* null, i32 %44)
  store i32 %45, i32* @cy_timeout_handle, align 4
  br label %50

46:                                               ; preds = %37
  store i32 1, i32* @cy_timeouts_until_log, align 4
  %47 = call i32 @cywakeup(i8* null)
  %48 = load i32, i32* @cy_timeout_handle, align 4
  %49 = call i32 @untimeout(i32 (i8*)* @cywakeup, i8* null, i32 %48)
  br label %50

50:                                               ; preds = %46, %40
  ret void
}

declare dso_local i32 @untimeout(i32 (i8*)*, i8*, i32) #1

declare dso_local i32 @cywakeup(i8*) #1

declare dso_local %struct.com_s* @cy_addr(i32) #1

declare dso_local i32 @timeout(i32 (i8*)*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
