; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/hci/extr_ng_hci_cmds.c_process_hc_baseband_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/hci/extr_ng_hci_cmds.c_process_hc_baseband_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.mbuf = type { i32 }
%struct.TYPE_9__ = type { i32 }

@NG_HCI_CON_TIMEOUT_PENDING = common dso_local global i32 0, align 4
@NG_HCI_UNIT_INITED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_hc_baseband_params(%struct.TYPE_8__* %0, i32 %1, %struct.mbuf* %2, %struct.mbuf* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store %struct.mbuf* %3, %struct.mbuf** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %66 [
    i32 148, label %13
    i32 149, label %13
    i32 177, label %13
    i32 158, label %13
    i32 133, label %13
    i32 179, label %13
    i32 130, label %13
    i32 145, label %13
    i32 134, label %13
    i32 157, label %13
    i32 132, label %13
    i32 136, label %13
    i32 141, label %13
    i32 173, label %13
    i32 147, label %13
    i32 170, label %13
    i32 144, label %13
    i32 128, label %13
    i32 163, label %13
    i32 138, label %13
    i32 169, label %13
    i32 143, label %13
    i32 156, label %13
    i32 131, label %13
    i32 176, label %13
    i32 175, label %13
    i32 168, label %13
    i32 142, label %13
    i32 160, label %13
    i32 135, label %13
    i32 162, label %13
    i32 137, label %13
    i32 165, label %13
    i32 139, label %13
    i32 154, label %13
    i32 155, label %13
    i32 178, label %13
    i32 171, label %13
    i32 159, label %13
    i32 161, label %13
    i32 167, label %13
    i32 152, label %13
    i32 172, label %13
    i32 146, label %13
    i32 151, label %13
    i32 174, label %13
    i32 180, label %13
    i32 164, label %13
    i32 153, label %13
    i32 129, label %13
    i32 166, label %13
    i32 140, label %13
    i32 150, label %14
  ]

13:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  br label %68

14:                                               ; preds = %4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  br label %15

15:                                               ; preds = %34, %14
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = call i32 @LIST_EMPTY(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = call %struct.TYPE_9__* @LIST_FIRST(i32* %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %10, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NG_HCI_CON_TIMEOUT_PENDING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = call i32 @ng_hci_con_untimeout(%struct.TYPE_9__* %32)
  br label %34

34:                                               ; preds = %31, %21
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = call i32 @ng_hci_lp_discon_ind(%struct.TYPE_9__* %35, i32 22)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %38 = call i32 @ng_hci_free_con(%struct.TYPE_9__* %37)
  br label %15

39:                                               ; preds = %15
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @NG_HCI_BUFF_ACL_TOTAL(i32 %42, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @NG_HCI_BUFF_ACL_FREE(i32 %47, i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @NG_HCI_BUFF_SCO_TOTAL(i32 %52, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @NG_HCI_BUFF_SCO_FREE(i32 %57, i32 %58)
  %60 = load i32, i32* @NG_HCI_UNIT_INITED, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %68

66:                                               ; preds = %4
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %66, %39, %13
  %69 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %70 = call i32 @NG_FREE_M(%struct.mbuf* %69)
  %71 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %72 = call i32 @NG_FREE_M(%struct.mbuf* %71)
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local %struct.TYPE_9__* @LIST_FIRST(i32*) #1

declare dso_local i32 @ng_hci_con_untimeout(%struct.TYPE_9__*) #1

declare dso_local i32 @ng_hci_lp_discon_ind(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ng_hci_free_con(%struct.TYPE_9__*) #1

declare dso_local i32 @NG_HCI_BUFF_ACL_TOTAL(i32, i32) #1

declare dso_local i32 @NG_HCI_BUFF_ACL_FREE(i32, i32) #1

declare dso_local i32 @NG_HCI_BUFF_SCO_TOTAL(i32, i32) #1

declare dso_local i32 @NG_HCI_BUFF_SCO_FREE(i32, i32) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
