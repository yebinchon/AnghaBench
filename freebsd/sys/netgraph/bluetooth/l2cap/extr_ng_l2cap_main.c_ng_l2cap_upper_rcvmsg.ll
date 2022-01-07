; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_main.c_ng_l2cap_upper_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_main.c_ng_l2cap_upper_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_l2cap_upper_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_l2cap_upper_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @NG_NODE_PRIVATE(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.ng_mesg* @NGI_MSG(i32 %13)
  store %struct.ng_mesg* %14, %struct.ng_mesg** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %16 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %82 [
    i32 141, label %19
  ]

19:                                               ; preds = %3
  %20 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %21 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %76 [
    i32 138, label %24
    i32 137, label %28
    i32 140, label %32
    i32 139, label %36
    i32 136, label %40
    i32 131, label %44
    i32 132, label %48
    i32 133, label %52
    i32 129, label %56
    i32 130, label %60
    i32 128, label %64
    i32 134, label %68
    i32 135, label %72
  ]

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %27 = call i32 @ng_l2cap_l2ca_con_req(i32 %25, %struct.ng_mesg* %26)
  store i32 %27, i32* %10, align 4
  br label %81

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %31 = call i32 @ng_l2cap_l2ca_con_rsp_req(i32 %29, %struct.ng_mesg* %30)
  store i32 %31, i32* %10, align 4
  br label %81

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %35 = call i32 @ng_l2cap_l2ca_cfg_req(i32 %33, %struct.ng_mesg* %34)
  store i32 %35, i32* %10, align 4
  br label %81

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %39 = call i32 @ng_l2cap_l2ca_cfg_rsp_req(i32 %37, %struct.ng_mesg* %38)
  store i32 %39, i32* %10, align 4
  br label %81

40:                                               ; preds = %19
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %43 = call i32 @ng_l2cap_l2ca_discon_req(i32 %41, %struct.ng_mesg* %42)
  store i32 %43, i32* %10, align 4
  br label %81

44:                                               ; preds = %19
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %47 = call i32 @ng_l2cap_l2ca_grp_create(i32 %45, %struct.ng_mesg* %46)
  store i32 %47, i32* %10, align 4
  br label %81

48:                                               ; preds = %19
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %51 = call i32 @ng_l2cap_l2ca_grp_close(i32 %49, %struct.ng_mesg* %50)
  store i32 %51, i32* %10, align 4
  br label %81

52:                                               ; preds = %19
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %55 = call i32 @ng_l2cap_l2ca_grp_add_member_req(i32 %53, %struct.ng_mesg* %54)
  store i32 %55, i32* %10, align 4
  br label %81

56:                                               ; preds = %19
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %59 = call i32 @ng_l2cap_l2ca_grp_rem_member(i32 %57, %struct.ng_mesg* %58)
  store i32 %59, i32* %10, align 4
  br label %81

60:                                               ; preds = %19
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %63 = call i32 @ng_l2cap_l2ca_grp_get_members(i32 %61, %struct.ng_mesg* %62)
  store i32 %63, i32* %10, align 4
  br label %81

64:                                               ; preds = %19
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %67 = call i32 @ng_l2cap_l2ca_ping_req(i32 %65, %struct.ng_mesg* %66)
  store i32 %67, i32* %10, align 4
  br label %81

68:                                               ; preds = %19
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %71 = call i32 @ng_l2cap_l2ca_get_info_req(i32 %69, %struct.ng_mesg* %70)
  store i32 %71, i32* %10, align 4
  br label %81

72:                                               ; preds = %19
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %75 = call i32 @ng_l2cap_l2ca_enable_clt(i32 %73, %struct.ng_mesg* %74)
  store i32 %75, i32* %10, align 4
  br label %81

76:                                               ; preds = %19
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ng_l2cap_default_rcvmsg(i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %91

81:                                               ; preds = %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24
  br label %87

82:                                               ; preds = %3
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @ng_l2cap_default_rcvmsg(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %4, align 4
  br label %91

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @NG_FREE_ITEM(i32 %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %82, %76
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @NG_NODE_PRIVATE(i32) #1

declare dso_local %struct.ng_mesg* @NGI_MSG(i32) #1

declare dso_local i32 @ng_l2cap_l2ca_con_req(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_l2ca_con_rsp_req(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_l2ca_cfg_req(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_l2ca_cfg_rsp_req(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_l2ca_discon_req(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_l2ca_grp_create(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_l2ca_grp_close(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_l2ca_grp_add_member_req(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_l2ca_grp_rem_member(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_l2ca_grp_get_members(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_l2ca_ping_req(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_l2ca_get_info_req(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_l2ca_enable_clt(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ng_l2cap_default_rcvmsg(i32, i32, i32) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
