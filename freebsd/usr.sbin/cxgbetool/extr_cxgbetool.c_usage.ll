; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Usage: %s <nexus> [operation]\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1919 x i8] c"\09clearstats <port>                   clear port statistics\0A\09context <type> <id>                 show an SGE context\0A\09dumpstate <dump.bin>                dump chip state\0A\09filter <idx> [<param> <val>] ...    set a filter\0A\09filter <idx> delete|clear [prio 1]  delete a filter\0A\09filter list                         list all filters\0A\09filter mode [<match>] ...           get/set global filter mode\0A\09hashfilter [<param> <val>] ...      set a hashfilter\0A\09hashfilter <idx> delete|clear       delete a hashfilter\0A\09hashfilter list                     list all hashfilters\0A\09hashfilter mode                     get global hashfilter mode\0A\09i2c <port> <devaddr> <addr> [<len>] read from i2c device\0A\09loadboot <bi.bin> [pf|offset <val>] install boot image\0A\09loadboot clear [pf|offset <val>]    remove boot image\0A\09loadboot-cfg <bc.bin>               install boot config\0A\09loadboot-cfg clear                  remove boot config\0A\09loadcfg <fw-config.txt>             install configuration file\0A\09loadcfg clear                       remove configuration file\0A\09loadfw <fw-image.bin>               install firmware\0A\09memdump <addr> <len>                dump a memory range\0A\09modinfo <port> [raw]                optics/cable information\0A\09policy <policy.txt>                 install offload policy\0A\09policy clear                        remove offload policy\0A\09reg <address>[=<val>]               read/write register\0A\09reg64 <address>[=<val>]             read/write 64 bit register\0A\09regdump [<module>] ...              dump registers\0A\09sched-class params <param> <val> .. configure TX scheduler class\0A\09sched-queue <port> <queue> <class>  bind NIC queues to TX Scheduling class\0A\09stdio                               interactive mode\0A\09tcb <tid>                           read TCB\0A\09tracer <idx> tx<n>|rx<n>            set and enable a tracer\0A\09tracer <idx> disable|enable         disable or enable a tracer\0A\09tracer list                         list all tracers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i8*, i8** @progname, align 8
  %5 = call i32 (i32*, i8*, ...) @fprintf(i32* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([1919 x i8], [1919 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
