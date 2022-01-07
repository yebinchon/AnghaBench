; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_destroy_instance.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_destroy_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_cfg = type { i32, i32, %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nat64lsn_host = type { i32 }

@entries = common dso_local global i32 0, align 4
@NAT64STATS = common dso_local global i32 0, align 4
@M_NAT64LSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nat64lsn_destroy_instance(%struct.nat64lsn_cfg* %0) #0 {
  %2 = alloca %struct.nat64lsn_cfg*, align 8
  %3 = alloca %struct.nat64lsn_host*, align 8
  %4 = alloca i32, align 4
  store %struct.nat64lsn_cfg* %0, %struct.nat64lsn_cfg** %2, align 8
  %5 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %6 = call i32 @CALLOUT_LOCK(%struct.nat64lsn_cfg* %5)
  %7 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %8 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %7, i32 0, i32 6
  %9 = call i32 @callout_drain(i32* %8)
  %10 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %11 = call i32 @CALLOUT_UNLOCK(%struct.nat64lsn_cfg* %10)
  %12 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %13 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %12, i32 0, i32 5
  %14 = call i32 @callout_drain(i32* %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %51, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %18 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %32, %21
  %23 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %24 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %23, i32 0, i32 3
  %25 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %25, i64 %27
  %29 = call i32 @CK_SLIST_EMPTY(%struct.nat64lsn_cfg* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %50

32:                                               ; preds = %22
  %33 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %34 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %33, i32 0, i32 3
  %35 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %35, i64 %37
  %39 = call %struct.nat64lsn_host* @CK_SLIST_FIRST(%struct.nat64lsn_cfg* %38)
  store %struct.nat64lsn_host* %39, %struct.nat64lsn_host** %3, align 8
  %40 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %41 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %40, i32 0, i32 3
  %42 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %42, i64 %44
  %46 = load i32, i32* @entries, align 4
  %47 = call i32 @CK_SLIST_REMOVE_HEAD(%struct.nat64lsn_cfg* %45, i32 %46)
  %48 = load %struct.nat64lsn_host*, %struct.nat64lsn_host** %3, align 8
  %49 = call i32 @nat64lsn_destroy_host(%struct.nat64lsn_host* %48)
  br label %22

50:                                               ; preds = %22
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %15

54:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %58 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 32, %59
  %61 = shl i32 1, %60
  %62 = icmp slt i32 %56, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %55
  %64 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %65 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %66 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %65, i32 0, i32 2
  %67 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %67, i64 %69
  %71 = call i32 @nat64lsn_destroy_alias(%struct.nat64lsn_cfg* %64, %struct.nat64lsn_cfg* %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %55

75:                                               ; preds = %55
  %76 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %77 = call i32 @CALLOUT_LOCK_DESTROY(%struct.nat64lsn_cfg* %76)
  %78 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %79 = call i32 @CFG_LOCK_DESTROY(%struct.nat64lsn_cfg* %78)
  %80 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %81 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NAT64STATS, align 4
  %86 = call i32 @COUNTER_ARRAY_FREE(i32 %84, i32 %85)
  %87 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %88 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %87, i32 0, i32 3
  %89 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %88, align 8
  %90 = load i32, i32* @M_NAT64LSN, align 4
  %91 = call i32 @free(%struct.nat64lsn_cfg* %89, i32 %90)
  %92 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %93 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %92, i32 0, i32 2
  %94 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %93, align 8
  %95 = load i32, i32* @M_NAT64LSN, align 4
  %96 = call i32 @free(%struct.nat64lsn_cfg* %94, i32 %95)
  %97 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %2, align 8
  %98 = load i32, i32* @M_NAT64LSN, align 4
  %99 = call i32 @free(%struct.nat64lsn_cfg* %97, i32 %98)
  ret void
}

declare dso_local i32 @CALLOUT_LOCK(%struct.nat64lsn_cfg*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @CALLOUT_UNLOCK(%struct.nat64lsn_cfg*) #1

declare dso_local i32 @CK_SLIST_EMPTY(%struct.nat64lsn_cfg*) #1

declare dso_local %struct.nat64lsn_host* @CK_SLIST_FIRST(%struct.nat64lsn_cfg*) #1

declare dso_local i32 @CK_SLIST_REMOVE_HEAD(%struct.nat64lsn_cfg*, i32) #1

declare dso_local i32 @nat64lsn_destroy_host(%struct.nat64lsn_host*) #1

declare dso_local i32 @nat64lsn_destroy_alias(%struct.nat64lsn_cfg*, %struct.nat64lsn_cfg*) #1

declare dso_local i32 @CALLOUT_LOCK_DESTROY(%struct.nat64lsn_cfg*) #1

declare dso_local i32 @CFG_LOCK_DESTROY(%struct.nat64lsn_cfg*) #1

declare dso_local i32 @COUNTER_ARRAY_FREE(i32, i32) #1

declare dso_local i32 @free(%struct.nat64lsn_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
