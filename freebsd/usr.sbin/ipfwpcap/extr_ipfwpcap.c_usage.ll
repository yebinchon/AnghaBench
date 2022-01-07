; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ipfwpcap/extr_ipfwpcap.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ipfwpcap/extr_ipfwpcap.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1071 x i8] c"\0Ausage:\0A    %s [-dr] [-b maxbytes] [-p maxpkts] [-P pidfile] portnum dumpfile\0A\0Awhere:\0A\09'-d'  = enable debugging messages.\0A\09'-r'  = reflect. write packets back to the divert socket.\0A\09\09(ie. simulate the original intent of \22ipfw tee\22).\0A\09'-rr' = indicate that it is okay to quit if packet-count or\0A\09\09byte-count limits are reached (see the NOTE below\0A\09\09about what this implies).\0A\09'-b bytcnt'   = stop dumping after {bytcnt} bytes.\0A\09'-p pktcnt'   = stop dumping after {pktcnt} packets.\0A\09'-P pidfile'  = alternate file to store the PID\0A\09\09\09(default: /var/run/%s.{portnum}.pid).\0A\0A\09portnum  = divert(4) socket port number.\0A\09dumpfile = file to write captured packets (tcpdump format).\0A\09\09   (specify '-' to write packets to stdout).\0A\0AThe '-r' option should not be necessary, but because \22ipfw tee\22 is broken\0A(see BUGS in ipfw(8) for details) this feature can be used along with\0Aan \22ipfw divert\22 rule to simulate the original intent of \22ipfw tee\22.\0A\0ANOTE: With an \22ipfw divert\22 rule, diverted packets will silently\0A      disappear if there is nothing listening to the divert socket.\0A\0A\00", align 1
@prog = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @prog, align 8
  %3 = load i8*, i8** @prog, align 8
  %4 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([1071 x i8], [1071 x i8]* @.str, i64 0, i64 0), i8* %2, i8* %3)
  %5 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

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
