; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_sp2mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_sp2mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i32 }
%struct.secpolicy = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.secpolicy*)* @key_sp2mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @key_sp2mbuf(%struct.secpolicy* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.secpolicy*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i64, align 8
  store %struct.secpolicy* %0, %struct.secpolicy** %3, align 8
  %6 = load %struct.secpolicy*, %struct.secpolicy** %3, align 8
  %7 = call i64 @key_getspreqmsglen(%struct.secpolicy* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* @M_NOWAIT, align 4
  %10 = load i32, i32* @MT_DATA, align 4
  %11 = call %struct.mbuf* @m_get2(i64 %8, i32 %9, i32 %10, i32 0)
  store %struct.mbuf* %11, %struct.mbuf** %4, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %13 = icmp eq %struct.mbuf* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.mbuf* null, %struct.mbuf** %2, align 8
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @m_align(%struct.mbuf* %16, i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.secpolicy*, %struct.secpolicy** %3, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @key_sp2msg(%struct.secpolicy* %22, i32 %25, i64* %5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %30 = call i32 @m_freem(%struct.mbuf* %29)
  store %struct.mbuf* null, %struct.mbuf** %2, align 8
  br label %33

31:                                               ; preds = %15
  %32 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %32, %struct.mbuf** %2, align 8
  br label %33

33:                                               ; preds = %31, %28, %14
  %34 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %34
}

declare dso_local i64 @key_getspreqmsglen(%struct.secpolicy*) #1

declare dso_local %struct.mbuf* @m_get2(i64, i32, i32, i32) #1

declare dso_local i32 @m_align(%struct.mbuf*, i64) #1

declare dso_local i64 @key_sp2msg(%struct.secpolicy*, i32, i64*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
