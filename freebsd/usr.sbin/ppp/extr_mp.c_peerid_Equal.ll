; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_peerid_Equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_peerid_Equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peerid = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peerid_Equal(%struct.peerid* %0, %struct.peerid* %1) #0 {
  %3 = alloca %struct.peerid*, align 8
  %4 = alloca %struct.peerid*, align 8
  store %struct.peerid* %0, %struct.peerid** %3, align 8
  store %struct.peerid* %1, %struct.peerid** %4, align 8
  %5 = load %struct.peerid*, %struct.peerid** %3, align 8
  %6 = getelementptr inbounds %struct.peerid, %struct.peerid* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.peerid*, %struct.peerid** %4, align 8
  %9 = getelementptr inbounds %struct.peerid, %struct.peerid* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @strcmp(i32 %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %2
  %14 = load %struct.peerid*, %struct.peerid** %3, align 8
  %15 = getelementptr inbounds %struct.peerid, %struct.peerid* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.peerid*, %struct.peerid** %4, align 8
  %19 = getelementptr inbounds %struct.peerid, %struct.peerid* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %13
  %24 = load %struct.peerid*, %struct.peerid** %3, align 8
  %25 = getelementptr inbounds %struct.peerid, %struct.peerid* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.peerid*, %struct.peerid** %4, align 8
  %29 = getelementptr inbounds %struct.peerid, %struct.peerid* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %23
  %34 = load %struct.peerid*, %struct.peerid** %3, align 8
  %35 = getelementptr inbounds %struct.peerid, %struct.peerid* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.peerid*, %struct.peerid** %4, align 8
  %39 = getelementptr inbounds %struct.peerid, %struct.peerid* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.peerid*, %struct.peerid** %3, align 8
  %43 = getelementptr inbounds %struct.peerid, %struct.peerid* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @memcmp(i32 %37, i32 %41, i64 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %33, %23, %13, %2
  %50 = phi i1 [ false, %23 ], [ false, %13 ], [ false, %2 ], [ %48, %33 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
