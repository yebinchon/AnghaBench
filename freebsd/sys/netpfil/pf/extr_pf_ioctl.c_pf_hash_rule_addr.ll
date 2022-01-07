; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_hash_rule_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_hash_rule_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pf_rule_addr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@addr = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@port = common dso_local global i32* null, align 8
@neg = common dso_local global i32 0, align 4
@port_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.pf_rule_addr*)* @pf_hash_rule_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_hash_rule_addr(i32* %0, %struct.pf_rule_addr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pf_rule_addr*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.pf_rule_addr* %1, %struct.pf_rule_addr** %4, align 8
  %5 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @addr, i32 0, i32 2), align 4
  %7 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %5, i32 %6)
  %8 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %9 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %30 [
    i32 129, label %12
    i32 128, label %19
    i32 130, label %23
  ]

12:                                               ; preds = %2
  %13 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @addr, i32 0, i32 0, i32 2), align 4
  %15 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %13, i32 %14)
  %16 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @addr, i32 0, i32 1), align 4
  %18 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %16, i32 %17)
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @addr, i32 0, i32 0, i32 1), align 4
  %22 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %20, i32 %21)
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @addr, i32 0, i32 0, i32 0, i32 1, i32 0), align 4
  %26 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %24, i32 %25)
  %27 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @addr, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  %29 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %27, i32 %28)
  br label %30

30:                                               ; preds = %2, %23, %19, %12
  %31 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %32 = load i32*, i32** @port, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %31, i32 %34)
  %36 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %37 = load i32*, i32** @port, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %36, i32 %39)
  %41 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %42 = load i32, i32* @neg, align 4
  %43 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %41, i32 %42)
  %44 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %45 = load i32, i32* @port_op, align 4
  %46 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %44, i32 %45)
  ret void
}

declare dso_local i32 @PF_MD5_UPD(%struct.pf_rule_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
