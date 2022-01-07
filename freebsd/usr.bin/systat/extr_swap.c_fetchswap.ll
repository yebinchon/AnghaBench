; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_swap.c_fetchswap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_swap.c_fetchswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.devinfo* }
%struct.devinfo = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.devinfo* }

@kvnsw = common dso_local global i32 0, align 4
@okvnsw = common dso_local global i32 0, align 4
@kd = common dso_local global i32 0, align 4
@kvmsw = common dso_local global i32 0, align 4
@NSWAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"systat: kvm_getswapinfo failed\00", align 1
@dlen = common dso_local global i32 0, align 4
@odlen = common dso_local global i32 0, align 4
@ulen = common dso_local global i32 0, align 4
@oulen = common dso_local global i32 0, align 4
@last_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cur_dev = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetchswap() #0 {
  %1 = alloca %struct.devinfo*, align 8
  %2 = load i32, i32* @kvnsw, align 4
  store i32 %2, i32* @okvnsw, align 4
  %3 = load i32, i32* @kd, align 4
  %4 = load i32, i32* @kvmsw, align 4
  %5 = load i32, i32* @NSWAP, align 4
  %6 = call i32 @kvm_getswapinfo(i32 %3, i32 %4, i32 %5, i32 0)
  store i32 %6, i32* @kvnsw, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %19

10:                                               ; preds = %0
  %11 = load i32, i32* @dlen, align 4
  store i32 %11, i32* @odlen, align 4
  %12 = load i32, i32* @ulen, align 4
  store i32 %12, i32* @oulen, align 4
  %13 = call i32 (...) @calclens()
  %14 = load %struct.devinfo*, %struct.devinfo** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @last_dev, i32 0, i32 1), align 8
  store %struct.devinfo* %14, %struct.devinfo** %1, align 8
  %15 = load %struct.devinfo*, %struct.devinfo** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_dev, i32 0, i32 1), align 8
  store %struct.devinfo* %15, %struct.devinfo** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @last_dev, i32 0, i32 1), align 8
  %16 = load %struct.devinfo*, %struct.devinfo** %1, align 8
  store %struct.devinfo* %16, %struct.devinfo** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_dev, i32 0, i32 1), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_dev, i32 0, i32 0), align 8
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @last_dev, i32 0, i32 0), align 8
  %18 = call i32 @dsgetinfo(%struct.TYPE_5__* @cur_dev)
  br label %19

19:                                               ; preds = %10, %8
  ret void
}

declare dso_local i32 @kvm_getswapinfo(i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @calclens(...) #1

declare dso_local i32 @dsgetinfo(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
