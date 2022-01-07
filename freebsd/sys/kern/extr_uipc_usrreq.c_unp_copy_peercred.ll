; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_copy_peercred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_copy_peercred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.unpcb = type { i32, i32 }

@UNP_HAVEPC = common dso_local global i32 0, align 4
@UNP_WANTCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unp_copy_peercred(%struct.thread* %0, %struct.unpcb* %1, %struct.unpcb* %2, %struct.unpcb* %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.unpcb*, align 8
  %7 = alloca %struct.unpcb*, align 8
  %8 = alloca %struct.unpcb*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.unpcb* %1, %struct.unpcb** %6, align 8
  store %struct.unpcb* %2, %struct.unpcb** %7, align 8
  store %struct.unpcb* %3, %struct.unpcb** %8, align 8
  %9 = load %struct.thread*, %struct.thread** %5, align 8
  %10 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %11 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %10, i32 0, i32 1
  %12 = call i32 @cru2xt(%struct.thread* %9, i32* %11)
  %13 = load i32, i32* @UNP_HAVEPC, align 4
  %14 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %15 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.unpcb*, %struct.unpcb** %7, align 8
  %19 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %18, i32 0, i32 1
  %20 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %21 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %20, i32 0, i32 1
  %22 = call i32 @memcpy(i32* %19, i32* %21, i32 4)
  %23 = load i32, i32* @UNP_HAVEPC, align 4
  %24 = load %struct.unpcb*, %struct.unpcb** %7, align 8
  %25 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %29 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @UNP_WANTCRED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load i32, i32* @UNP_WANTCRED, align 4
  %36 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %37 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %4
  ret void
}

declare dso_local i32 @cru2xt(%struct.thread*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
