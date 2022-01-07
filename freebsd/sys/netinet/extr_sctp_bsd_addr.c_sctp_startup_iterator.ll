; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_bsd_addr.c_sctp_startup_iterator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_bsd_addr.c_sctp_startup_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@sctp_it_ctl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@sctp_iterator_thread = common dso_local global i32 0, align 4
@RFPROC = common dso_local global i32 0, align 4
@SCTP_KTHREAD_PAGES = common dso_local global i32 0, align 4
@SCTP_KTRHEAD_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_startup_iterator() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sctp_it_ctl, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %13

4:                                                ; preds = %0
  %5 = call i32 (...) @SCTP_ITERATOR_LOCK_INIT()
  %6 = call i32 (...) @SCTP_IPI_ITERATOR_WQ_INIT()
  %7 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sctp_it_ctl, i32 0, i32 1))
  %8 = load i32, i32* @sctp_iterator_thread, align 4
  %9 = load i32, i32* @RFPROC, align 4
  %10 = load i32, i32* @SCTP_KTHREAD_PAGES, align 4
  %11 = load i32, i32* @SCTP_KTRHEAD_NAME, align 4
  %12 = call i32 @kproc_create(i32 %8, i8* null, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sctp_it_ctl, i32 0, i32 0), i32 %9, i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @SCTP_ITERATOR_LOCK_INIT(...) #1

declare dso_local i32 @SCTP_IPI_ITERATOR_WQ_INIT(...) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @kproc_create(i32, i8*, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
