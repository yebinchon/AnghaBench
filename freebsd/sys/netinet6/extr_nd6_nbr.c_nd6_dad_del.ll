; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dadq = type { i32 }

@V_dadq = common dso_local global i32 0, align 4
@dad_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dadq*)* @nd6_dad_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_dad_del(%struct.dadq* %0) #0 {
  %2 = alloca %struct.dadq*, align 8
  store %struct.dadq* %0, %struct.dadq** %2, align 8
  %3 = call i32 (...) @DADQ_WLOCK()
  %4 = load %struct.dadq*, %struct.dadq** %2, align 8
  %5 = getelementptr inbounds %struct.dadq, %struct.dadq* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.dadq*, %struct.dadq** %2, align 8
  %10 = load i32, i32* @dad_list, align 4
  %11 = call i32 @TAILQ_REMOVE(i32* @V_dadq, %struct.dadq* %9, i32 %10)
  %12 = load %struct.dadq*, %struct.dadq** %2, align 8
  %13 = getelementptr inbounds %struct.dadq, %struct.dadq* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = call i32 (...) @DADQ_WUNLOCK()
  %15 = load %struct.dadq*, %struct.dadq** %2, align 8
  %16 = call i32 @nd6_dad_rele(%struct.dadq* %15)
  br label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @DADQ_WUNLOCK()
  br label %19

19:                                               ; preds = %17, %8
  ret void
}

declare dso_local i32 @DADQ_WLOCK(...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.dadq*, i32) #1

declare dso_local i32 @DADQ_WUNLOCK(...) #1

declare dso_local i32 @nd6_dad_rele(%struct.dadq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
