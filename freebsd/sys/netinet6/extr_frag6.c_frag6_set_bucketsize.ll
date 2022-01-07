; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_frag6.c_frag6_set_bucketsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_frag6.c_frag6_set_bucketsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_ip6_maxfragpackets = common dso_local global i32 0, align 4
@IP6REASS_NHASH = common dso_local global i32 0, align 4
@V_ip6_maxfragbucketsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @frag6_set_bucketsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frag6_set_bucketsize() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @V_ip6_maxfragpackets, align 4
  store i32 %2, i32* %1, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @IP6REASS_NHASH, align 4
  %7 = sdiv i32 %6, 2
  %8 = sdiv i32 %5, %7
  %9 = call i32 @imax(i32 %8, i32 1)
  store i32 %9, i32* @V_ip6_maxfragbucketsize, align 4
  br label %10

10:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @imax(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
