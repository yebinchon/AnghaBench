; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_index_listfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_index_listfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_idxlist = type { i32 }
%struct.index = type { i64, i32 }

@link = common dso_local global i32 0, align 4
@SNMP_TC_OWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_index_listfree(%struct.snmp_idxlist* %0) #0 {
  %2 = alloca %struct.snmp_idxlist*, align 8
  %3 = alloca %struct.index*, align 8
  store %struct.snmp_idxlist* %0, %struct.snmp_idxlist** %2, align 8
  br label %4

4:                                                ; preds = %22, %1
  %5 = load %struct.snmp_idxlist*, %struct.snmp_idxlist** %2, align 8
  %6 = call %struct.index* @STAILQ_FIRST(%struct.snmp_idxlist* %5)
  store %struct.index* %6, %struct.index** %3, align 8
  %7 = icmp ne %struct.index* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = load %struct.snmp_idxlist*, %struct.snmp_idxlist** %2, align 8
  %10 = load i32, i32* @link, align 4
  %11 = call i32 @STAILQ_REMOVE_HEAD(%struct.snmp_idxlist* %9, i32 %10)
  %12 = load %struct.index*, %struct.index** %3, align 8
  %13 = getelementptr inbounds %struct.index, %struct.index* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNMP_TC_OWN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = load %struct.index*, %struct.index** %3, align 8
  %19 = getelementptr inbounds %struct.index, %struct.index* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @enum_pairs_free(i32 %20)
  br label %22

22:                                               ; preds = %17, %8
  %23 = load %struct.index*, %struct.index** %3, align 8
  %24 = call i32 @free(%struct.index* %23)
  br label %4

25:                                               ; preds = %4
  %26 = load %struct.snmp_idxlist*, %struct.snmp_idxlist** %2, align 8
  %27 = call i32 @STAILQ_INIT(%struct.snmp_idxlist* %26)
  ret void
}

declare dso_local %struct.index* @STAILQ_FIRST(%struct.snmp_idxlist*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(%struct.snmp_idxlist*, i32) #1

declare dso_local i32 @enum_pairs_free(i32) #1

declare dso_local i32 @free(%struct.index*) #1

declare dso_local i32 @STAILQ_INIT(%struct.snmp_idxlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
