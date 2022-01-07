; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [617 x i8] c"Usage: %s <opts>\0APhysical:\0A\09-i\09<iface>\0A\09-c\09<chan>\0A\09-N\09no ack\0A\09-V\09<iface> [verify via iface whether packet was mangled]\0A\09-W\09WME AC\0A\09-X\09transmit rate (Mbps)\0A\09-P\09transmit power (device units)\0A802.11:\0A\09-h\09this lame message\0A\09-v\09<version>\0A\09-t\09<type>\0A\09-s\09<subtype>\0A\09-T\09to ds\0A\09-F\09from ds\0A\09-m\09more frags\0A\09-r\09retry\0A\09-p\09power\0A\09-d\09more data\0A\09-w\09wep\0A\09-o\09order\0A\09-u\09<duration>\0A\09-1\09<addr 1>\0A\09-2\09<addr 2>\0A\09-3\09<addr 3>\0A\09-n\09<seqno>\0A\09-f\09<fragno>\0A\09-4\09<addr 4>\0A\09-b\09<payload file>\0A\09-l\09<len>\0AManagement:\0A\09-e\09<info element [hex digits 010203... first is type]>\0A\09-S\09<SSID>\0A\09-a\09<algo no>\0A\09-A\09<transaction>\0A\09-C\09<status code>\0A\09-R\09standard rates\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([617 x i8], [617 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*, i8*) #1

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
