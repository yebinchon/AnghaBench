; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/rfcomm_pppd/extr_rfcomm_pppd.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/rfcomm_pppd/extr_rfcomm_pppd.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [549 x i8] c"Usage: %s options\0AWhere options are:\0A\09-a address   Address to listen on or connect to (required for client)\0A\09-c           Act as a clinet (default)\0A\09-C channel   RFCOMM channel to listen on or connect to (required)\0A\09-d           Run in foreground\0A\09-D           Register Dial-Up Networking service (server mode only)\0A\09-l label     Use PPP label (required)\0A\09-s           Act as a server\0A\09-S           Register Serial Port service (server mode only)\0A\09-u N         Tell PPP to operate on /dev/tunN (client mode only)\0A\09-h           Display this message\0A\00", align 1
@RFCOMM_PPPD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stdout, align 4
  %2 = load i8*, i8** @RFCOMM_PPPD, align 8
  %3 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([549 x i8], [549 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = call i32 @exit(i32 255) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

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
