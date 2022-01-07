; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_seqfn.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_seqfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_SEQ_SEQ_SHIFT = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @seqfn(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  store i16 0, i16* %5, align 2
  %6 = load i16, i16* %4, align 2
  %7 = zext i16 %6 to i32
  %8 = icmp slt i32 %7, 16
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i16, i16* %4, align 2
  store i16 %11, i16* %5, align 2
  %12 = load i16, i16* %3, align 2
  %13 = zext i16 %12 to i32
  %14 = srem i32 %13, 4096
  %15 = load i16, i16* @IEEE80211_SEQ_SEQ_SHIFT, align 2
  %16 = zext i16 %15 to i32
  %17 = shl i32 %14, %16
  %18 = load i16, i16* %5, align 2
  %19 = zext i16 %18 to i32
  %20 = or i32 %19, %17
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %5, align 2
  %22 = load i16, i16* %5, align 2
  ret i16 %22
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
