; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_delete_fs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_delete_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dn_fsk = type { i32 }

@dn_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DNHT_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fs %d found %p\00", align 1
@DN_DETACH = common dso_local global i32 0, align 4
@DN_DELETE_FS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @delete_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_fs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_fsk*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 (...) @DN_BH_WLOCK()
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 0), align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @DNHT_REMOVE, align 4
  %15 = call %struct.dn_fsk* @dn_ht_find(i32 %12, i32 %13, i32 %14, i32* null)
  store %struct.dn_fsk* %15, %struct.dn_fsk** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.dn_fsk*, %struct.dn_fsk** %5, align 8
  %18 = call i32 @ND(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16, %struct.dn_fsk* %17)
  %19 = load %struct.dn_fsk*, %struct.dn_fsk** %5, align 8
  %20 = icmp ne %struct.dn_fsk* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load %struct.dn_fsk*, %struct.dn_fsk** %5, align 8
  %23 = load i32, i32* @DN_DETACH, align 4
  %24 = load i32, i32* @DN_DELETE_FS, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @fsk_detach(%struct.dn_fsk* %22, i32 %25)
  store i32 0, i32* %6, align 4
  br label %29

27:                                               ; preds = %11
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 (...) @DN_BH_WUNLOCK()
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @DN_BH_WLOCK(...) #1

declare dso_local %struct.dn_fsk* @dn_ht_find(i32, i32, i32, i32*) #1

declare dso_local i32 @ND(i8*, i32, %struct.dn_fsk*) #1

declare dso_local i32 @fsk_detach(%struct.dn_fsk*, i32) #1

declare dso_local i32 @DN_BH_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
