; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bd_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bd_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufdomain = type { i64, i64, i64 }

@bdirtylock = common dso_local global i32 0, align 4
@BUF_DOMAINS = common dso_local global i32 0, align 4
@bdlodirty = common dso_local global i32 0, align 4
@bdhidirty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufdomain*)* @bd_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bd_clear(%struct.bufdomain* %0) #0 {
  %2 = alloca %struct.bufdomain*, align 8
  store %struct.bufdomain* %0, %struct.bufdomain** %2, align 8
  %3 = call i32 @mtx_lock(i32* @bdirtylock)
  %4 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %5 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %8 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %6, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @BUF_DOMAINS, align 4
  %13 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %14 = call i32 @BD_DOMAIN(%struct.bufdomain* %13)
  %15 = call i32 @BIT_CLR(i32 %12, i32 %14, i32* @bdlodirty)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %18 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %21 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load i32, i32* @BUF_DOMAINS, align 4
  %26 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %27 = call i32 @BD_DOMAIN(%struct.bufdomain* %26)
  %28 = call i32 @BIT_CLR(i32 %25, i32 %27, i32* @bdhidirty)
  br label %29

29:                                               ; preds = %24, %16
  %30 = call i32 @mtx_unlock(i32* @bdirtylock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @BIT_CLR(i32, i32, i32*) #1

declare dso_local i32 @BD_DOMAIN(%struct.bufdomain*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
