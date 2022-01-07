; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_delete_schk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_delete_schk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dn_schk = type { i32 }

@dn_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DNHT_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d %p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DN_MAX_ID = common dso_local global i64 0, align 8
@DN_DESTROY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @delete_schk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_schk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_schk*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 0), align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @DNHT_REMOVE, align 4
  %8 = call %struct.dn_schk* @dn_ht_find(i32 %5, i32 %6, i32 %7, i32* null)
  store %struct.dn_schk* %8, %struct.dn_schk** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %11 = call i32 @ND(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9, %struct.dn_schk* %10)
  %12 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %13 = icmp ne %struct.dn_schk* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @DN_MAX_ID, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @delete_fs(i64 %20, i32 1)
  %22 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %23 = load i64, i64* @DN_DESTROY, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @schk_delete_cb(%struct.dn_schk* %22, i8* %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %16, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.dn_schk* @dn_ht_find(i32, i32, i32, i32*) #1

declare dso_local i32 @ND(i8*, i32, %struct.dn_schk*) #1

declare dso_local i32 @delete_fs(i64, i32) #1

declare dso_local i32 @schk_delete_cb(%struct.dn_schk*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
