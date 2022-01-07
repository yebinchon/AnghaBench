; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_internalize_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_internalize_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.unpcb = type { i32, %struct.file* }

@unp_rights = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @unp_internalize_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unp_internalize_fp(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.unpcb*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = call i32 (...) @UNP_LINK_WLOCK()
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.unpcb* @fptounp(%struct.file* %5)
  store %struct.unpcb* %6, %struct.unpcb** %3, align 8
  %7 = icmp ne %struct.unpcb* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.file*, %struct.file** %2, align 8
  %10 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %11 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %10, i32 0, i32 1
  store %struct.file* %9, %struct.file** %11, align 8
  %12 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %13 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  br label %16

16:                                               ; preds = %8, %1
  %17 = load i32, i32* @unp_rights, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @unp_rights, align 4
  %19 = call i32 (...) @UNP_LINK_WUNLOCK()
  ret void
}

declare dso_local i32 @UNP_LINK_WLOCK(...) #1

declare dso_local %struct.unpcb* @fptounp(%struct.file*) #1

declare dso_local i32 @UNP_LINK_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
