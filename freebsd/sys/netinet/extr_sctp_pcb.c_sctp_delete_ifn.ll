; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_delete_ifn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_delete_ifn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ifn = type { i32, i32, i32 }

@next_bucket = common dso_local global i32 0, align 4
@next_ifn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ifn*, i32)* @sctp_delete_ifn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_delete_ifn(%struct.sctp_ifn* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_ifn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_ifn*, align 8
  store %struct.sctp_ifn* %0, %struct.sctp_ifn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %7 = getelementptr inbounds %struct.sctp_ifn, %struct.sctp_ifn* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %10 = getelementptr inbounds %struct.sctp_ifn, %struct.sctp_ifn* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sctp_ifn* @sctp_find_ifn(i32 %8, i32 %11)
  store %struct.sctp_ifn* %12, %struct.sctp_ifn** %5, align 8
  %13 = load %struct.sctp_ifn*, %struct.sctp_ifn** %5, align 8
  %14 = icmp eq %struct.sctp_ifn* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %42

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @SCTP_IPI_ADDR_WLOCK()
  br label %21

21:                                               ; preds = %19, %16
  %22 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %23 = load i32, i32* @next_bucket, align 4
  %24 = call i32 @LIST_REMOVE(%struct.sctp_ifn* %22, i32 %23)
  %25 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %26 = load i32, i32* @next_ifn, align 4
  %27 = call i32 @LIST_REMOVE(%struct.sctp_ifn* %25, i32 %26)
  %28 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %29 = getelementptr inbounds %struct.sctp_ifn, %struct.sctp_ifn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %32 = getelementptr inbounds %struct.sctp_ifn, %struct.sctp_ifn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SCTP_DEREGISTER_INTERFACE(i32 %30, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = call i32 (...) @SCTP_IPI_ADDR_WUNLOCK()
  br label %39

39:                                               ; preds = %37, %21
  %40 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %41 = call i32 @sctp_free_ifn(%struct.sctp_ifn* %40)
  br label %42

42:                                               ; preds = %39, %15
  ret void
}

declare dso_local %struct.sctp_ifn* @sctp_find_ifn(i32, i32) #1

declare dso_local i32 @SCTP_IPI_ADDR_WLOCK(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.sctp_ifn*, i32) #1

declare dso_local i32 @SCTP_DEREGISTER_INTERFACE(i32, i32) #1

declare dso_local i32 @SCTP_IPI_ADDR_WUNLOCK(...) #1

declare dso_local i32 @sctp_free_ifn(%struct.sctp_ifn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
