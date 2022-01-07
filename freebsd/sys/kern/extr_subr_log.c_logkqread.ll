; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_log.c_logkqread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_log.c_logkqread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64 }

@msgbuf_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@msgbufp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @logkqread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logkqread(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca i64, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @mtx_assert(i32* @msgbuf_lock, i32 %5)
  %7 = load i32, i32* @msgbufp, align 4
  %8 = call i64 @msgbuf_getcount(i32 %7)
  %9 = load %struct.knote*, %struct.knote** %3, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.knote*, %struct.knote** %3, align 8
  %12 = getelementptr inbounds %struct.knote, %struct.knote* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @msgbuf_getcount(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
