; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_node_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_node_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { i64 }
%struct.nodeinfo = type { i32 }

@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_NODEINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_node_name(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ng_mesg*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %9 = load i32, i32* @NGM_NODEINFO, align 4
  %10 = call %struct.ng_mesg* @ng_dialog_id(i32 %7, i32 %8, i32 %9, i32* null, i32 0)
  store %struct.ng_mesg* %10, %struct.ng_mesg** %6, align 8
  %11 = icmp eq %struct.ng_mesg* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %16 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.nodeinfo*
  %20 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcpy(i8* %14, i32 %21)
  %23 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %24 = call i32 @free(%struct.ng_mesg* %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %13, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.ng_mesg* @ng_dialog_id(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @free(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
