; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_qht_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_qht_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fsk = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dn_queue = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"fs %d start flags %d qht %p\00", align 1
@DN_QHT_HASH = common dso_local global i32 0, align 4
@q_delete_cb = common dso_local global i32 0, align 4
@DN_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_fsk*, i32)* @qht_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qht_delete(%struct.dn_fsk* %0, i32 %1) #0 {
  %3 = alloca %struct.dn_fsk*, align 8
  %4 = alloca i32, align 4
  store %struct.dn_fsk* %0, %struct.dn_fsk** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %6 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %11 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @ND(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i32* %12)
  %14 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %15 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %63

19:                                               ; preds = %2
  %20 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %21 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DN_QHT_HASH, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %19
  %28 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %29 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @q_delete_cb, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @dn_ht_scan(i32* %30, i32 %31, i8* %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @DN_DESTROY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %42 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @dn_ht_free(i32* %43, i32 0)
  %45 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %46 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %27
  br label %63

48:                                               ; preds = %19
  %49 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %50 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = bitcast i32* %51 to %struct.dn_queue*
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @dn_delete_queue(%struct.dn_queue* %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @DN_DESTROY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %61 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %59, %48
  br label %63

63:                                               ; preds = %18, %62, %47
  ret void
}

declare dso_local i32 @ND(i8*, i32, i32, i32*) #1

declare dso_local i32 @dn_ht_scan(i32*, i32, i8*) #1

declare dso_local i32 @dn_ht_free(i32*, i32) #1

declare dso_local i32 @dn_delete_queue(%struct.dn_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
