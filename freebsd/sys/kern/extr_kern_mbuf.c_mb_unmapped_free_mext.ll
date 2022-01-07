; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_mb_unmapped_free_mext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_mb_unmapped_free_mext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mbuf*, %struct.sf_buf* }
%struct.sf_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*)* @mb_unmapped_free_mext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb_unmapped_free_mext(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.sf_buf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %6 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.sf_buf*, %struct.sf_buf** %7, align 8
  store %struct.sf_buf* %8, %struct.sf_buf** %3, align 8
  %9 = load %struct.sf_buf*, %struct.sf_buf** %3, align 8
  %10 = call i32 @sf_buf_free(%struct.sf_buf* %9)
  %11 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %14, %struct.mbuf** %4, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = call i32 @mb_free_ext(%struct.mbuf* %15)
  ret void
}

declare dso_local i32 @sf_buf_free(%struct.sf_buf*) #1

declare dso_local i32 @mb_free_ext(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
