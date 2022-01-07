; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/extr_ngatmbase.c_uni_msg_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/extr_ngatmbase.c_uni_msg_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngatm_msg = type { i32 }

@ngatm_freeuni = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@M_UNIMSGHDR = common dso_local global i32 0, align 4
@ngatm_unilist_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uni_msg_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uni_msg_fini() #0 {
  %1 = alloca %struct.ngatm_msg*, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = call %struct.ngatm_msg* @LIST_FIRST(i32* @ngatm_freeuni)
  store %struct.ngatm_msg* %3, %struct.ngatm_msg** %1, align 8
  %4 = icmp ne %struct.ngatm_msg* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load %struct.ngatm_msg*, %struct.ngatm_msg** %1, align 8
  %7 = load i32, i32* @link, align 4
  %8 = call i32 @LIST_REMOVE(%struct.ngatm_msg* %6, i32 %7)
  %9 = load %struct.ngatm_msg*, %struct.ngatm_msg** %1, align 8
  %10 = load i32, i32* @M_UNIMSGHDR, align 4
  %11 = call i32 @free(%struct.ngatm_msg* %9, i32 %10)
  br label %2

12:                                               ; preds = %2
  %13 = call i32 @mtx_destroy(i32* @ngatm_unilist_mtx)
  ret void
}

declare dso_local %struct.ngatm_msg* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.ngatm_msg*, i32) #1

declare dso_local i32 @free(%struct.ngatm_msg*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
