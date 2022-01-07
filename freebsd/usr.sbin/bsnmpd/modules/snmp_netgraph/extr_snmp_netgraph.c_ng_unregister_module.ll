; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_unregister_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_unregister_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmodule = type { i32 }
%struct.msgreg = type { %struct.lmodule* }
%struct.datareg = type { %struct.lmodule* }

@msgreg_list = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@msgreg = common dso_local global i32 0, align 4
@datareg_list = common dso_local global i32 0, align 4
@datareg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ng_unregister_module(%struct.lmodule* %0) #0 {
  %2 = alloca %struct.lmodule*, align 8
  %3 = alloca %struct.msgreg*, align 8
  %4 = alloca %struct.msgreg*, align 8
  %5 = alloca %struct.datareg*, align 8
  %6 = alloca %struct.datareg*, align 8
  store %struct.lmodule* %0, %struct.lmodule** %2, align 8
  %7 = call %struct.msgreg* @SLIST_FIRST(i32* @msgreg_list)
  store %struct.msgreg* %7, %struct.msgreg** %3, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load %struct.msgreg*, %struct.msgreg** %3, align 8
  %10 = icmp ne %struct.msgreg* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load %struct.msgreg*, %struct.msgreg** %3, align 8
  %13 = load i32, i32* @link, align 4
  %14 = call %struct.msgreg* @SLIST_NEXT(%struct.msgreg* %12, i32 %13)
  store %struct.msgreg* %14, %struct.msgreg** %4, align 8
  %15 = load %struct.msgreg*, %struct.msgreg** %3, align 8
  %16 = getelementptr inbounds %struct.msgreg, %struct.msgreg* %15, i32 0, i32 0
  %17 = load %struct.lmodule*, %struct.lmodule** %16, align 8
  %18 = load %struct.lmodule*, %struct.lmodule** %2, align 8
  %19 = icmp eq %struct.lmodule* %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load %struct.msgreg*, %struct.msgreg** %3, align 8
  %22 = load i32, i32* @msgreg, align 4
  %23 = load i32, i32* @link, align 4
  %24 = call i32 @SLIST_REMOVE(i32* @msgreg_list, %struct.msgreg* %21, i32 %22, i32 %23)
  %25 = load %struct.msgreg*, %struct.msgreg** %3, align 8
  %26 = call i32 @free(%struct.msgreg* %25)
  br label %27

27:                                               ; preds = %20, %11
  %28 = load %struct.msgreg*, %struct.msgreg** %4, align 8
  store %struct.msgreg* %28, %struct.msgreg** %3, align 8
  br label %8

29:                                               ; preds = %8
  %30 = call %struct.msgreg* @SLIST_FIRST(i32* @datareg_list)
  %31 = bitcast %struct.msgreg* %30 to %struct.datareg*
  store %struct.datareg* %31, %struct.datareg** %5, align 8
  br label %32

32:                                               ; preds = %55, %29
  %33 = load %struct.datareg*, %struct.datareg** %5, align 8
  %34 = icmp ne %struct.datareg* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load %struct.datareg*, %struct.datareg** %5, align 8
  %37 = bitcast %struct.datareg* %36 to %struct.msgreg*
  %38 = load i32, i32* @link, align 4
  %39 = call %struct.msgreg* @SLIST_NEXT(%struct.msgreg* %37, i32 %38)
  %40 = bitcast %struct.msgreg* %39 to %struct.datareg*
  store %struct.datareg* %40, %struct.datareg** %6, align 8
  %41 = load %struct.datareg*, %struct.datareg** %5, align 8
  %42 = getelementptr inbounds %struct.datareg, %struct.datareg* %41, i32 0, i32 0
  %43 = load %struct.lmodule*, %struct.lmodule** %42, align 8
  %44 = load %struct.lmodule*, %struct.lmodule** %2, align 8
  %45 = icmp eq %struct.lmodule* %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %35
  %47 = load %struct.datareg*, %struct.datareg** %5, align 8
  %48 = bitcast %struct.datareg* %47 to %struct.msgreg*
  %49 = load i32, i32* @datareg, align 4
  %50 = load i32, i32* @link, align 4
  %51 = call i32 @SLIST_REMOVE(i32* @datareg_list, %struct.msgreg* %48, i32 %49, i32 %50)
  %52 = load %struct.datareg*, %struct.datareg** %5, align 8
  %53 = bitcast %struct.datareg* %52 to %struct.msgreg*
  %54 = call i32 @free(%struct.msgreg* %53)
  br label %55

55:                                               ; preds = %46, %35
  %56 = load %struct.datareg*, %struct.datareg** %6, align 8
  store %struct.datareg* %56, %struct.datareg** %5, align 8
  br label %32

57:                                               ; preds = %32
  ret void
}

declare dso_local %struct.msgreg* @SLIST_FIRST(i32*) #1

declare dso_local %struct.msgreg* @SLIST_NEXT(%struct.msgreg*, i32) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.msgreg*, i32, i32) #1

declare dso_local i32 @free(%struct.msgreg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
