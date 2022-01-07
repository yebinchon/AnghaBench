; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_rtadvd.c_free_ndopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_rtadvd.c_free_ndopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.nd_opt = type { i32 }
%struct.nd_optlist = type { i32 }

@nol_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.nd_opt*)* @free_ndopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_ndopts(%union.nd_opt* %0) #0 {
  %2 = alloca %union.nd_opt*, align 8
  %3 = alloca %struct.nd_optlist*, align 8
  store %union.nd_opt* %0, %union.nd_opt** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %union.nd_opt*, %union.nd_opt** %2, align 8
  %6 = bitcast %union.nd_opt* %5 to i32*
  %7 = call %struct.nd_optlist* @TAILQ_FIRST(i32* %6)
  store %struct.nd_optlist* %7, %struct.nd_optlist** %3, align 8
  %8 = icmp ne %struct.nd_optlist* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load %union.nd_opt*, %union.nd_opt** %2, align 8
  %11 = bitcast %union.nd_opt* %10 to i32*
  %12 = load %struct.nd_optlist*, %struct.nd_optlist** %3, align 8
  %13 = load i32, i32* @nol_next, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.nd_optlist* %12, i32 %13)
  %15 = load %struct.nd_optlist*, %struct.nd_optlist** %3, align 8
  %16 = call i32 @free(%struct.nd_optlist* %15)
  br label %4

17:                                               ; preds = %4
  ret void
}

declare dso_local %struct.nd_optlist* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nd_optlist*, i32) #1

declare dso_local i32 @free(%struct.nd_optlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
