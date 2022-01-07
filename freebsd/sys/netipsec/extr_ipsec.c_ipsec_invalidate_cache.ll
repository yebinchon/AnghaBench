; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec.c_ipsec_invalidate_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec.c_ipsec_invalidate_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.secpolicy*, %struct.secpolicy* }
%struct.secpolicy = type { i32 }

@IPSEC_DIR_OUTBOUND = common dso_local global i64 0, align 8
@INP_INBOUND_POLICY = common dso_local global i32 0, align 4
@INP_OUTBOUND_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcb*, i64)* @ipsec_invalidate_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipsec_invalidate_cache(%struct.inpcb* %0, i64 %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.secpolicy*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %7 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %6)
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @IPSEC_DIR_OUTBOUND, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %13 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @INP_INBOUND_POLICY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %56

21:                                               ; preds = %11
  %22 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %23 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load %struct.secpolicy*, %struct.secpolicy** %25, align 8
  store %struct.secpolicy* %26, %struct.secpolicy** %5, align 8
  %27 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %28 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store %struct.secpolicy* null, %struct.secpolicy** %30, align 8
  br label %51

31:                                               ; preds = %2
  %32 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %33 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @INP_OUTBOUND_POLICY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %56

41:                                               ; preds = %31
  %42 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.secpolicy*, %struct.secpolicy** %45, align 8
  store %struct.secpolicy* %46, %struct.secpolicy** %5, align 8
  %47 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %48 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store %struct.secpolicy* null, %struct.secpolicy** %50, align 8
  br label %51

51:                                               ; preds = %41, %21
  %52 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %53 = icmp ne %struct.secpolicy* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @key_freesp(%struct.secpolicy** %5)
  br label %56

56:                                               ; preds = %20, %40, %54, %51
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @key_freesp(%struct.secpolicy**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
