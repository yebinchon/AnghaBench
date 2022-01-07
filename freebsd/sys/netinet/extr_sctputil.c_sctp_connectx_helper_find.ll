; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_connectx_helper_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_connectx_helper_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { i32 }
%struct.sockaddr = type { i32, i32 }
%struct.sctp_tcb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_connectx_helper_find(%struct.sctp_inpcb* %0, %struct.sockaddr* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_inpcb*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca %struct.sctp_tcb*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  store %struct.sockaddr* %19, %struct.sockaddr** %14, align 8
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %12, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %7, align 4
  br label %50

26:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load i32, i32* %17, align 4
  %33 = zext i32 %32 to i64
  %34 = add i64 %33, 8
  %35 = load i32, i32* %13, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %7, align 4
  br label %50

40:                                               ; preds = %31
  %41 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %42 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %44 [
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %7, align 4
  br label %50

46:                                               ; No predecessors!
  %47 = load i32, i32* %18, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %18, align 4
  br label %27

49:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %44, %38, %24
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
