; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_snmp.c_bridge_set_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_snmp.c_bridge_set_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i8* }

@bif_default = common dso_local global %struct.bridge_if* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Set default bridge interface to: %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bridge_set_default(%struct.bridge_if* %0) #0 {
  %2 = alloca %struct.bridge_if*, align 8
  store %struct.bridge_if* %0, %struct.bridge_if** %2, align 8
  %3 = load %struct.bridge_if*, %struct.bridge_if** %2, align 8
  store %struct.bridge_if* %3, %struct.bridge_if** @bif_default, align 8
  %4 = load i32, i32* @LOG_ERR, align 4
  %5 = load %struct.bridge_if*, %struct.bridge_if** %2, align 8
  %6 = icmp eq %struct.bridge_if* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %12

8:                                                ; preds = %1
  %9 = load %struct.bridge_if*, %struct.bridge_if** %2, align 8
  %10 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  br label %12

12:                                               ; preds = %8, %7
  %13 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %7 ], [ %11, %8 ]
  %14 = call i32 @syslog(i32 %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %13)
  ret void
}

declare dso_local i32 @syslog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
