; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_pptp.c_AliasHandlePptpIn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_pptp.c_AliasHandlePptpIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32 }
%struct.alias_link = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.tcphdr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*, %struct.ip*, %struct.alias_link*)* @AliasHandlePptpIn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AliasHandlePptpIn(%struct.libalias* %0, %struct.ip* %1, %struct.alias_link* %2) #0 {
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.ip*, align 8
  %6 = alloca %struct.alias_link*, align 8
  %7 = alloca %struct.alias_link*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.ip* %1, %struct.ip** %5, align 8
  store %struct.alias_link* %2, %struct.alias_link** %6, align 8
  %14 = load %struct.ip*, %struct.ip** %5, align 8
  %15 = call %struct.TYPE_5__* @AliasVerifyPptp(%struct.ip* %14, i32* %10)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %8, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %96

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %42 [
    i32 132, label %20
    i32 128, label %20
    i32 129, label %20
    i32 130, label %23
    i32 131, label %23
    i32 133, label %26
  ]

20:                                               ; preds = %18, %18, %18
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32* %22, i32** %9, align 8
  br label %43

23:                                               ; preds = %18, %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32* %25, i32** %9, align 8
  br label %43

26:                                               ; preds = %18
  %27 = load %struct.libalias*, %struct.libalias** %4, align 8
  %28 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %29 = call i32 @GetDestAddress(%struct.alias_link* %28)
  %30 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %31 = call i32 @GetAliasAddress(%struct.alias_link* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.alias_link* @FindPptpInByCallId(%struct.libalias* %27, i32 %29, i32 %31, i32 %34)
  store %struct.alias_link* %35, %struct.alias_link** %7, align 8
  %36 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %37 = icmp ne %struct.alias_link* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %40 = call i32 @SetExpire(%struct.alias_link* %39, i32 0)
  br label %41

41:                                               ; preds = %38, %26
  br label %96

42:                                               ; preds = %18
  br label %96

43:                                               ; preds = %23, %20
  %44 = load %struct.libalias*, %struct.libalias** %4, align 8
  %45 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %46 = call i32 @GetDestAddress(%struct.alias_link* %45)
  %47 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %48 = call i32 @GetAliasAddress(%struct.alias_link* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.alias_link* @FindPptpInByPeerCallId(%struct.libalias* %44, i32 %46, i32 %48, i32 %50)
  store %struct.alias_link* %51, %struct.alias_link** %7, align 8
  %52 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %53 = icmp ne %struct.alias_link* %52, null
  br i1 %53, label %54, label %96

54:                                               ; preds = %43
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  %57 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %58 = call i32 @GetOriginalPort(%struct.alias_link* %57)
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.ip*, %struct.ip** %5, align 8
  %61 = call i64 @ip_next(%struct.ip* %60)
  %62 = inttoptr i64 %61 to %struct.tcphdr*
  store %struct.tcphdr* %62, %struct.tcphdr** %11, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %69 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ADJUST_CHECKSUM(i32 %67, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 130
  br i1 %73, label %77, label %74

74:                                               ; preds = %54
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 131
  br i1 %76, label %77, label %95

77:                                               ; preds = %74, %54
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 1
  %80 = bitcast %struct.TYPE_5__* %79 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %13, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SetDestCallId(%struct.alias_link* %86, i32 %89)
  br label %94

91:                                               ; preds = %77
  %92 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %93 = call i32 @SetExpire(%struct.alias_link* %92, i32 0)
  br label %94

94:                                               ; preds = %91, %85
  br label %95

95:                                               ; preds = %94, %74
  br label %96

96:                                               ; preds = %17, %41, %42, %95, %43
  ret void
}

declare dso_local %struct.TYPE_5__* @AliasVerifyPptp(%struct.ip*, i32*) #1

declare dso_local %struct.alias_link* @FindPptpInByCallId(%struct.libalias*, i32, i32, i32) #1

declare dso_local i32 @GetDestAddress(%struct.alias_link*) #1

declare dso_local i32 @GetAliasAddress(%struct.alias_link*) #1

declare dso_local i32 @SetExpire(%struct.alias_link*, i32) #1

declare dso_local %struct.alias_link* @FindPptpInByPeerCallId(%struct.libalias*, i32, i32, i32) #1

declare dso_local i32 @GetOriginalPort(%struct.alias_link*) #1

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i32 @ADJUST_CHECKSUM(i32, i32) #1

declare dso_local i32 @SetDestCallId(%struct.alias_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
