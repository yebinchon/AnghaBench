; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Usage: %s <interface> [operation]\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1578 x i8] c"\09clearstats                          clear MAC statistics\0A\09context <type> <id>                 show an SGE context\0A\09desc <qset> <queue> <idx> [<cnt>]   dump SGE descriptors\0A\09filter <idx> [<param> <val>] ...    set a filter\0A\09filter <idx> delete|clear           delete a filter\0A\09filter list                         list all filters\0A\09ioqs                                dump uP IOQs\0A\09la                                  dump uP logic analyzer info\0A\09loadboot <boot image>               download boot image\0A\09loadfw <FW image>                   download firmware\0A\09mdio <phy_addr> <mmd_addr>\0A\09     <reg_addr> [<val>]             read/write MDIO register\0A\09memdump cm|tx|rx <addr> <len>       dump a mem range\0A\09meminfo                             show memory info\0A\09mtus [<mtu0>...<mtuN>]              read/write MTU table\0A\09pktsched port <idx> <min> <max>     set TX port scheduler params\0A\09pktsched tunnelq <idx> <max>\0A\09         <binding>                  set TX tunnelq scheduler params\0A\09pktsched tx <idx>\0A\09         [<param> <val>] ...        set Tx HW scheduler\0A\09pm [<TX page spec> <RX page spec>]  read/write PM config\0A\09proto                               read proto SRAM\0A\09qset                                read qset parameters\0A\09qsets                               read # of qsets\0A\09reg <address>[=<val>]               read/write register\0A\09regdump [<module>]                  dump registers\0A\09tcamdump <address> <count>          show TCAM contents\0A\09tcb <index>                         read TCB\0A\09trace tx|rx|all on|off [not]\0A\09      [<param> <val>[:<mask>]] ...  write trace parameters\0A\00", align 1
@stderr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i8*, i8** @progname, align 8
  %5 = call i32 (i32*, i8*, ...) @fprintf(i32* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([1578 x i8], [1578 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = load i32*, i32** @stderr, align 8
  %10 = icmp eq i32* %8, %9
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  %13 = call i32 @exit(i32 %12) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
