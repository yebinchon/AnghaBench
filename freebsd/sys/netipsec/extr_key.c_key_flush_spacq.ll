; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_flush_spacq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_flush_spacq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secspacq = type { i64 }

@V_spacqtree = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@V_key_blockacq_lifetime = common dso_local global i64 0, align 8
@M_IPSEC_SAQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @key_flush_spacq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_flush_spacq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.secspacq*, align 8
  %4 = alloca %struct.secspacq*, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i32 (...) @SPACQ_LOCK()
  %6 = call %struct.secspacq* @LIST_FIRST(i32* @V_spacqtree)
  store %struct.secspacq* %6, %struct.secspacq** %3, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load %struct.secspacq*, %struct.secspacq** %3, align 8
  %9 = icmp ne %struct.secspacq* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = load %struct.secspacq*, %struct.secspacq** %3, align 8
  %12 = load i32, i32* @chain, align 4
  %13 = call %struct.secspacq* @LIST_NEXT(%struct.secspacq* %11, i32 %12)
  store %struct.secspacq* %13, %struct.secspacq** %4, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load %struct.secspacq*, %struct.secspacq** %3, align 8
  %16 = getelementptr inbounds %struct.secspacq, %struct.secspacq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load i64, i64* @V_key_blockacq_lifetime, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %10
  %22 = load %struct.secspacq*, %struct.secspacq** %3, align 8
  %23 = call i64 @__LIST_CHAINED(%struct.secspacq* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.secspacq*, %struct.secspacq** %3, align 8
  %27 = load i32, i32* @chain, align 4
  %28 = call i32 @LIST_REMOVE(%struct.secspacq* %26, i32 %27)
  %29 = load %struct.secspacq*, %struct.secspacq** %3, align 8
  %30 = load i32, i32* @M_IPSEC_SAQ, align 4
  %31 = call i32 @free(%struct.secspacq* %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %21, %10
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.secspacq*, %struct.secspacq** %4, align 8
  store %struct.secspacq* %34, %struct.secspacq** %3, align 8
  br label %7

35:                                               ; preds = %7
  %36 = call i32 (...) @SPACQ_UNLOCK()
  ret void
}

declare dso_local i32 @SPACQ_LOCK(...) #1

declare dso_local %struct.secspacq* @LIST_FIRST(i32*) #1

declare dso_local %struct.secspacq* @LIST_NEXT(%struct.secspacq*, i32) #1

declare dso_local i64 @__LIST_CHAINED(%struct.secspacq*) #1

declare dso_local i32 @LIST_REMOVE(%struct.secspacq*, i32) #1

declare dso_local i32 @free(%struct.secspacq*, i32) #1

declare dso_local i32 @SPACQ_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
