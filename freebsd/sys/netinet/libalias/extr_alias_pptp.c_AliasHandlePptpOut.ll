; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_pptp.c_AliasHandlePptpOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_pptp.c_AliasHandlePptpOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32 }
%struct.alias_link = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tcphdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*, %struct.ip*, %struct.alias_link*)* @AliasHandlePptpOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AliasHandlePptpOut(%struct.libalias* %0, %struct.ip* %1, %struct.alias_link* %2) #0 {
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.ip*, align 8
  %6 = alloca %struct.alias_link*, align 8
  %7 = alloca %struct.alias_link*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.ip* %1, %struct.ip** %5, align 8
  store %struct.alias_link* %2, %struct.alias_link** %6, align 8
  %13 = load %struct.ip*, %struct.ip** %5, align 8
  %14 = call %struct.TYPE_5__* @AliasVerifyPptp(%struct.ip* %13, i32* %10)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %89

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %41 [
    i32 128, label %19
    i32 129, label %19
    i32 130, label %19
    i32 131, label %19
    i32 133, label %31
    i32 132, label %31
  ]

19:                                               ; preds = %17, %17, %17, %17
  %20 = load %struct.libalias*, %struct.libalias** %4, align 8
  %21 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %22 = call i32 @GetOriginalAddress(%struct.alias_link* %21)
  %23 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %24 = call i32 @GetDestAddress(%struct.alias_link* %23)
  %25 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %26 = call i32 @GetAliasAddress(%struct.alias_link* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.alias_link* @AddPptp(%struct.libalias* %20, i32 %22, i32 %24, i32 %26, i32 %29)
  store %struct.alias_link* %30, %struct.alias_link** %7, align 8
  br label %42

31:                                               ; preds = %17, %17
  %32 = load %struct.libalias*, %struct.libalias** %4, align 8
  %33 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %34 = call i32 @GetOriginalAddress(%struct.alias_link* %33)
  %35 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %36 = call i32 @GetDestAddress(%struct.alias_link* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.alias_link* @FindPptpOutByCallId(%struct.libalias* %32, i32 %34, i32 %36, i32 %39)
  store %struct.alias_link* %40, %struct.alias_link** %7, align 8
  br label %42

41:                                               ; preds = %17
  br label %89

42:                                               ; preds = %31, %19
  %43 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %44 = icmp ne %struct.alias_link* %43, null
  br i1 %44, label %45, label %89

45:                                               ; preds = %42
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %50 = call i32 @GetAliasPort(%struct.alias_link* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ip*, %struct.ip** %5, align 8
  %54 = call i64 @ip_next(%struct.ip* %53)
  %55 = inttoptr i64 %54 to %struct.tcphdr*
  store %struct.tcphdr* %55, %struct.tcphdr** %11, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %63 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ADJUST_CHECKSUM(i32 %61, i32 %64)
  %66 = load i32, i32* %10, align 4
  switch i32 %66, label %88 [
    i32 129, label %67
    i32 131, label %67
    i32 132, label %85
  ]

67:                                               ; preds = %45, %45
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 1
  %70 = bitcast %struct.TYPE_5__* %69 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %9, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SetDestCallId(%struct.alias_link* %76, i32 %79)
  br label %84

81:                                               ; preds = %67
  %82 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %83 = call i32 @SetExpire(%struct.alias_link* %82, i32 0)
  br label %84

84:                                               ; preds = %81, %75
  br label %88

85:                                               ; preds = %45
  %86 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %87 = call i32 @SetExpire(%struct.alias_link* %86, i32 0)
  br label %88

88:                                               ; preds = %45, %85, %84
  br label %89

89:                                               ; preds = %16, %41, %88, %42
  ret void
}

declare dso_local %struct.TYPE_5__* @AliasVerifyPptp(%struct.ip*, i32*) #1

declare dso_local %struct.alias_link* @AddPptp(%struct.libalias*, i32, i32, i32, i32) #1

declare dso_local i32 @GetOriginalAddress(%struct.alias_link*) #1

declare dso_local i32 @GetDestAddress(%struct.alias_link*) #1

declare dso_local i32 @GetAliasAddress(%struct.alias_link*) #1

declare dso_local %struct.alias_link* @FindPptpOutByCallId(%struct.libalias*, i32, i32, i32) #1

declare dso_local i32 @GetAliasPort(%struct.alias_link*) #1

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i32 @ADJUST_CHECKSUM(i32, i32) #1

declare dso_local i32 @SetDestCallId(%struct.alias_link*, i32) #1

declare dso_local i32 @SetExpire(%struct.alias_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
