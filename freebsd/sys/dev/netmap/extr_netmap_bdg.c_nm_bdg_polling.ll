; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_nm_bdg_polling.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_nm_bdg_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq_header = type { i64, i64 }
%struct.nmreq_vale_polling = type { i32 }
%struct.netmap_adapter = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NETMAP_BDG_POLLING_ON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nm_bdg_polling(%struct.nmreq_header* %0) #0 {
  %2 = alloca %struct.nmreq_header*, align 8
  %3 = alloca %struct.nmreq_vale_polling*, align 8
  %4 = alloca %struct.netmap_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.nmreq_header* %0, %struct.nmreq_header** %2, align 8
  %6 = load %struct.nmreq_header*, %struct.nmreq_header** %2, align 8
  %7 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.nmreq_vale_polling*
  store %struct.nmreq_vale_polling* %9, %struct.nmreq_vale_polling** %3, align 8
  store %struct.netmap_adapter* null, %struct.netmap_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = call i32 (...) @NMG_LOCK()
  %11 = load %struct.nmreq_header*, %struct.nmreq_header** %2, align 8
  %12 = call i32 @netmap_get_vale_na(%struct.nmreq_header* %11, %struct.netmap_adapter** %4, i32* null, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %14 = icmp ne %struct.netmap_adapter* %13, null
  br i1 %14, label %15, label %53

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %53, label %18

18:                                               ; preds = %15
  %19 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %20 = call i32 @nm_is_bwrap(%struct.netmap_adapter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %23, i32* %5, align 4
  br label %50

24:                                               ; preds = %18
  %25 = load %struct.nmreq_header*, %struct.nmreq_header** %2, align 8
  %26 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NETMAP_BDG_POLLING_ON, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.nmreq_vale_polling*, %struct.nmreq_vale_polling** %3, align 8
  %32 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %33 = call i32 @nm_bdg_ctl_polling_start(%struct.nmreq_vale_polling* %31, %struct.netmap_adapter* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %38 = call i32 @netmap_adapter_get(%struct.netmap_adapter* %37)
  br label %39

39:                                               ; preds = %36, %30
  br label %49

40:                                               ; preds = %24
  %41 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %42 = call i32 @nm_bdg_ctl_polling_stop(%struct.netmap_adapter* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %47 = call i32 @netmap_adapter_put(%struct.netmap_adapter* %46)
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %39
  br label %50

50:                                               ; preds = %49, %22
  %51 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %52 = call i32 @netmap_adapter_put(%struct.netmap_adapter* %51)
  br label %62

53:                                               ; preds = %15, %1
  %54 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %55 = icmp ne %struct.netmap_adapter* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %56, %53
  br label %62

62:                                               ; preds = %61, %50
  %63 = call i32 (...) @NMG_UNLOCK()
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @NMG_LOCK(...) #1

declare dso_local i32 @netmap_get_vale_na(%struct.nmreq_header*, %struct.netmap_adapter**, i32*, i32) #1

declare dso_local i32 @nm_is_bwrap(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_bdg_ctl_polling_start(%struct.nmreq_vale_polling*, %struct.netmap_adapter*) #1

declare dso_local i32 @netmap_adapter_get(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_bdg_ctl_polling_stop(%struct.netmap_adapter*) #1

declare dso_local i32 @netmap_adapter_put(%struct.netmap_adapter*) #1

declare dso_local i32 @NMG_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
