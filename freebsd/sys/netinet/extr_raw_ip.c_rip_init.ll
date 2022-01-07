; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_raw_ip.c_rip_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_raw_ip.c_rip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_ripcbinfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rip\00", align 1
@V_ripcb = common dso_local global i32 0, align 4
@INP_PCBHASH_RAW_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ripcb\00", align 1
@rip_inpcb_init = common dso_local global i32 0, align 4
@IPI_HASHFIELDS_NONE = common dso_local global i32 0, align 4
@maxsockets_change = common dso_local global i32 0, align 4
@rip_zone_change = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rip_init() #0 {
  %1 = load i32, i32* @INP_PCBHASH_RAW_SIZE, align 4
  %2 = load i32, i32* @rip_inpcb_init, align 4
  %3 = load i32, i32* @IPI_HASHFIELDS_NONE, align 4
  %4 = call i32 @in_pcbinfo_init(i32* @V_ripcbinfo, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* @V_ripcb, i32 %1, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %2, i32 %3)
  %5 = load i32, i32* @maxsockets_change, align 4
  %6 = load i32, i32* @rip_zone_change, align 4
  %7 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %8 = call i32 @EVENTHANDLER_REGISTER(i32 %5, i32 %6, i32* null, i32 %7)
  ret void
}

declare dso_local i32 @in_pcbinfo_init(i32*, i8*, i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
