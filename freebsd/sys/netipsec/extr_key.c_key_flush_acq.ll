; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_flush_acq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_flush_acq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secacq = type { i64 }

@V_acqtree = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@V_key_blockacq_lifetime = common dso_local global i64 0, align 8
@addrhash = common dso_local global i32 0, align 4
@seqhash = common dso_local global i32 0, align 4
@M_IPSEC_SAQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @key_flush_acq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_flush_acq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.secacq*, align 8
  %4 = alloca %struct.secacq*, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i32 (...) @ACQ_LOCK()
  %6 = call %struct.secacq* @LIST_FIRST(i32* @V_acqtree)
  store %struct.secacq* %6, %struct.secacq** %3, align 8
  br label %7

7:                                                ; preds = %34, %1
  %8 = load %struct.secacq*, %struct.secacq** %3, align 8
  %9 = icmp ne %struct.secacq* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  %11 = load %struct.secacq*, %struct.secacq** %3, align 8
  %12 = load i32, i32* @chain, align 4
  %13 = call %struct.secacq* @LIST_NEXT(%struct.secacq* %11, i32 %12)
  store %struct.secacq* %13, %struct.secacq** %4, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load %struct.secacq*, %struct.secacq** %3, align 8
  %16 = getelementptr inbounds %struct.secacq, %struct.secacq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load i64, i64* @V_key_blockacq_lifetime, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %10
  %22 = load %struct.secacq*, %struct.secacq** %3, align 8
  %23 = load i32, i32* @chain, align 4
  %24 = call i32 @LIST_REMOVE(%struct.secacq* %22, i32 %23)
  %25 = load %struct.secacq*, %struct.secacq** %3, align 8
  %26 = load i32, i32* @addrhash, align 4
  %27 = call i32 @LIST_REMOVE(%struct.secacq* %25, i32 %26)
  %28 = load %struct.secacq*, %struct.secacq** %3, align 8
  %29 = load i32, i32* @seqhash, align 4
  %30 = call i32 @LIST_REMOVE(%struct.secacq* %28, i32 %29)
  %31 = load %struct.secacq*, %struct.secacq** %3, align 8
  %32 = load i32, i32* @M_IPSEC_SAQ, align 4
  %33 = call i32 @free(%struct.secacq* %31, i32 %32)
  br label %34

34:                                               ; preds = %21, %10
  %35 = load %struct.secacq*, %struct.secacq** %4, align 8
  store %struct.secacq* %35, %struct.secacq** %3, align 8
  br label %7

36:                                               ; preds = %7
  %37 = call i32 (...) @ACQ_UNLOCK()
  ret void
}

declare dso_local i32 @ACQ_LOCK(...) #1

declare dso_local %struct.secacq* @LIST_FIRST(i32*) #1

declare dso_local %struct.secacq* @LIST_NEXT(%struct.secacq*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.secacq*, i32) #1

declare dso_local i32 @free(%struct.secacq*, i32) #1

declare dso_local i32 @ACQ_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
