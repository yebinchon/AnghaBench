; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_bnep.c_bnep_recv_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_bnep.c_bnep_recv_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i64, i32)* @bnep_recv_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnep_recv_control(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %8, align 8
  %14 = icmp ult i64 %12, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %74

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %7, align 8
  %19 = load i32, i32* %17, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %64 [
    i32 134, label %21
    i32 129, label %26
    i32 128, label %35
    i32 130, label %44
    i32 131, label %49
    i32 132, label %54
    i32 133, label %59
  ]

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @bnep_recv_control_command_not_understood(i32* %22, i32* %23, i64 %24)
  store i64 %25, i64* %11, align 8
  br label %65

26:                                               ; preds = %16
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 0, i64* %5, align 8
  br label %74

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @bnep_recv_setup_connection_req(i32* %31, i32* %32, i64 %33)
  store i64 %34, i64* %11, align 8
  br label %65

35:                                               ; preds = %16
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i64 0, i64* %5, align 8
  br label %74

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @bnep_recv_setup_connection_rsp(i32* %40, i32* %41, i64 %42)
  store i64 %43, i64* %11, align 8
  br label %65

44:                                               ; preds = %16
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @bnep_recv_filter_net_type_set(i32* %45, i32* %46, i64 %47)
  store i64 %48, i64* %11, align 8
  br label %65

49:                                               ; preds = %16
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @bnep_recv_filter_net_type_rsp(i32* %50, i32* %51, i64 %52)
  store i64 %53, i64* %11, align 8
  br label %65

54:                                               ; preds = %16
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @bnep_recv_filter_multi_addr_set(i32* %55, i32* %56, i64 %57)
  store i64 %58, i64* %11, align 8
  br label %65

59:                                               ; preds = %16
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @bnep_recv_filter_multi_addr_rsp(i32* %60, i32* %61, i64 %62)
  store i64 %63, i64* %11, align 8
  br label %65

64:                                               ; preds = %16
  store i64 0, i64* %11, align 8
  br label %65

65:                                               ; preds = %64, %59, %54, %49, %44, %39, %30, %21
  %66 = load i64, i64* %11, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @bnep_send_control(i32* %69, i32 134, i32 %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i64, i64* %11, align 8
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %72, %38, %29, %15
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local i64 @bnep_recv_control_command_not_understood(i32*, i32*, i64) #1

declare dso_local i64 @bnep_recv_setup_connection_req(i32*, i32*, i64) #1

declare dso_local i64 @bnep_recv_setup_connection_rsp(i32*, i32*, i64) #1

declare dso_local i64 @bnep_recv_filter_net_type_set(i32*, i32*, i64) #1

declare dso_local i64 @bnep_recv_filter_net_type_rsp(i32*, i32*, i64) #1

declare dso_local i64 @bnep_recv_filter_multi_addr_set(i32*, i32*, i64) #1

declare dso_local i64 @bnep_recv_filter_multi_addr_rsp(i32*, i32*, i64) #1

declare dso_local i32 @bnep_send_control(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
