; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec_pcb.c_ipsec_delete_pcbpolicy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec_pcb.c_ipsec_delete_pcbpolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@M_IPSEC_INPCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipsec_delete_pcbpolicy(%struct.inpcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  %4 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %5 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @key_freesp(i32** %20)
  br label %22

22:                                               ; preds = %16, %9
  %23 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %24 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %31 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @key_freesp(i32** %33)
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %37 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* @M_IPSEC_INPCB, align 4
  %40 = call i32 @free(%struct.TYPE_2__* %38, i32 %39)
  %41 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %42 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %41, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %42, align 8
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %35, %8
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @key_freesp(i32**) #1

declare dso_local i32 @free(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
