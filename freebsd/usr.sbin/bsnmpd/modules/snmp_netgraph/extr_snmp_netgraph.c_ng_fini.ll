; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngtype = type { i32 }

@ngtype_list = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@csock_fd = common dso_local global i32* null, align 8
@csock = common dso_local global i32 0, align 4
@dsock_fd = common dso_local global i32* null, align 8
@dsock = common dso_local global i32 0, align 4
@snmp_nodename = common dso_local global %struct.ngtype* null, align 8
@reg_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ng_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_fini() #0 {
  %1 = alloca %struct.ngtype*, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = call %struct.ngtype* @TAILQ_FIRST(i32* @ngtype_list)
  store %struct.ngtype* %3, %struct.ngtype** %1, align 8
  %4 = icmp ne %struct.ngtype* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = load %struct.ngtype*, %struct.ngtype** %1, align 8
  %7 = load i32, i32* @link, align 4
  %8 = call i32 @TAILQ_REMOVE(i32* @ngtype_list, %struct.ngtype* %6, i32 %7)
  %9 = load %struct.ngtype*, %struct.ngtype** %1, align 8
  %10 = call i32 @free(%struct.ngtype* %9)
  br label %2

11:                                               ; preds = %2
  %12 = load i32*, i32** @csock_fd, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32*, i32** @csock_fd, align 8
  %16 = call i32 @fd_deselect(i32* %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* @csock, align 4
  %19 = call i32 @close(i32 %18)
  %20 = load i32*, i32** @dsock_fd, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** @dsock_fd, align 8
  %24 = call i32 @fd_deselect(i32* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* @dsock, align 4
  %27 = call i32 @close(i32 %26)
  %28 = load %struct.ngtype*, %struct.ngtype** @snmp_nodename, align 8
  %29 = call i32 @free(%struct.ngtype* %28)
  %30 = load i32, i32* @reg_index, align 4
  %31 = call i32 @or_unregister(i32 %30)
  ret i32 0
}

declare dso_local %struct.ngtype* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ngtype*, i32) #1

declare dso_local i32 @free(%struct.ngtype*) #1

declare dso_local i32 @fd_deselect(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @or_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
