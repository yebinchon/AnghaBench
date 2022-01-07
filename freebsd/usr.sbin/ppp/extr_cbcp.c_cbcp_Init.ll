; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbcp = type { %struct.physical*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8*, i32, i64, i64, i32 }
%struct.physical = type { i32 }

@CBCP_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cbcp_Init(%struct.cbcp* %0, %struct.physical* %1) #0 {
  %3 = alloca %struct.cbcp*, align 8
  %4 = alloca %struct.physical*, align 8
  store %struct.cbcp* %0, %struct.cbcp** %3, align 8
  store %struct.physical* %1, %struct.physical** %4, align 8
  %5 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %6 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @CBCP_CLOSED, align 4
  %8 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %9 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  store i32 %7, i32* %10, align 8
  %11 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %12 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %15 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %18 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8 0, i8* %20, align 1
  %21 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %22 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @memset(i32* %23, i8 signext 0, i32 4)
  %25 = load %struct.physical*, %struct.physical** %4, align 8
  %26 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %27 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %26, i32 0, i32 0
  store %struct.physical* %25, %struct.physical** %27, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
