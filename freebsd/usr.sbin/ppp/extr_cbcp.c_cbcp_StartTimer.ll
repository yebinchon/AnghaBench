; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_StartTimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_StartTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbcp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32, %struct.cbcp*, i32 }

@cbcp_Timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cbcp\00", align 1
@SECTICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbcp*, i32)* @cbcp_StartTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbcp_StartTimer(%struct.cbcp* %0, i32 %1) #0 {
  %3 = alloca %struct.cbcp*, align 8
  %4 = alloca i32, align 4
  store %struct.cbcp* %0, %struct.cbcp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %6 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @timer_Stop(%struct.TYPE_5__* %7)
  %9 = load i32, i32* @cbcp_Timeout, align 4
  %10 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %11 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32 %9, i32* %13, align 8
  %14 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %15 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SECTICKS, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %22 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 8
  %25 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %26 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %27 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store %struct.cbcp* %25, %struct.cbcp** %29, align 8
  %30 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %31 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @timer_Start(%struct.TYPE_5__* %32)
  ret void
}

declare dso_local i32 @timer_Stop(%struct.TYPE_5__*) #1

declare dso_local i32 @timer_Start(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
