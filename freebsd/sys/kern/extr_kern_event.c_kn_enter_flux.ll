; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kn_enter_flux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kn_enter_flux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @kn_enter_flux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kn_enter_flux(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %3 = load %struct.knote*, %struct.knote** %2, align 8
  %4 = getelementptr inbounds %struct.knote, %struct.knote* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @KQ_OWNED(i32 %5)
  %7 = load %struct.knote*, %struct.knote** %2, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @INT_MAX, align 8
  %11 = icmp slt i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @MPASS(i32 %12)
  %14 = load %struct.knote*, %struct.knote** %2, align 8
  %15 = getelementptr inbounds %struct.knote, %struct.knote* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  ret void
}

declare dso_local i32 @KQ_OWNED(i32) #1

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
