; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_lqr_ChangeOrder.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_lqr_ChangeOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lqrdata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lqr_ChangeOrder(%struct.lqrdata* %0, %struct.lqrdata* %1) #0 {
  %3 = alloca %struct.lqrdata*, align 8
  %4 = alloca %struct.lqrdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.lqrdata* %0, %struct.lqrdata** %3, align 8
  store %struct.lqrdata* %1, %struct.lqrdata** %4, align 8
  %8 = load %struct.lqrdata*, %struct.lqrdata** %3, align 8
  %9 = bitcast %struct.lqrdata* %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load %struct.lqrdata*, %struct.lqrdata** %4, align 8
  %11 = bitcast %struct.lqrdata* %10 to i32*
  store i32* %11, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %21, %2
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = icmp ult i64 %14, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ntohl(i32 %18)
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  br label %12

28:                                               ; preds = %12
  ret void
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
