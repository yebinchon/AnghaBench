; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mtest/extr_mtest.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mtest/extr_mtest.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"j mcast-addr ifname [src-addr] - join IP multicast group\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"l mcast-addr ifname [src-addr] - leave IP multicast group\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"i mcast-addr ifname n          - set n include mode src filter\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"e mcast-addr ifname n          - set n exclude mode src filter\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"t mcast-addr ifname src-addr  - allow traffic from src\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"b mcast-addr ifname src-addr  - block traffic from src\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"g mcast-addr ifname n        - get and show n src filters\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"a ifname mac-addr          - add link multicast filter\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"d ifname mac-addr          - delete link multicast filter\0A\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"m ifname 1/0               - set/clear ether allmulti flag\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"p ifname 1/0               - set/clear ether promisc flag\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"f filename                 - read command(s) from file\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"s seconds                  - sleep for some time\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"q                          - quit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  %10 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
