; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_input.c_ip6_hopopts_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_input.c_ip6_hopopts_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ip6_hbh = type { i32 }

@ip6s_exthdrtoolong = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.mbuf**, i32*)* @ip6_hopopts_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_hopopts_input(i32* %0, i32* %1, %struct.mbuf** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mbuf**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip6_hbh*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %15, %struct.mbuf** %10, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call %struct.mbuf* @m_pullup(%struct.mbuf* %18, i32 %22)
  store %struct.mbuf* %23, %struct.mbuf** %10, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %25 = icmp eq %struct.mbuf* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @ip6s_exthdrtoolong, align 4
  %28 = call i32 @IP6STAT_INC(i32 %27)
  %29 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  store %struct.mbuf* null, %struct.mbuf** %29, align 8
  store i32 -1, i32* %5, align 4
  br label %85

30:                                               ; preds = %4
  %31 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %32 = load i32, i32* @caddr_t, align 4
  %33 = call i64 @mtod(%struct.mbuf* %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = inttoptr i64 %36 to %struct.ip6_hbh*
  store %struct.ip6_hbh* %37, %struct.ip6_hbh** %13, align 8
  %38 = load %struct.ip6_hbh*, %struct.ip6_hbh** %13, align 8
  %39 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = shl i32 %41, 3
  store i32 %42, i32* %12, align 4
  %43 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %44, %45
  %47 = call %struct.mbuf* @m_pullup(%struct.mbuf* %43, i32 %46)
  store %struct.mbuf* %47, %struct.mbuf** %10, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %49 = icmp eq %struct.mbuf* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %30
  %51 = load i32, i32* @ip6s_exthdrtoolong, align 4
  %52 = call i32 @IP6STAT_INC(i32 %51)
  %53 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  store %struct.mbuf* null, %struct.mbuf** %53, align 8
  store i32 -1, i32* %5, align 4
  br label %85

54:                                               ; preds = %30
  %55 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %56 = load i32, i32* @caddr_t, align 4
  %57 = call i64 @mtod(%struct.mbuf* %55, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = inttoptr i64 %60 to %struct.ip6_hbh*
  store %struct.ip6_hbh* %61, %struct.ip6_hbh** %13, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %12, align 4
  %69 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %70 = load %struct.ip6_hbh*, %struct.ip6_hbh** %13, align 8
  %71 = bitcast %struct.ip6_hbh* %70 to i32*
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i64 @ip6_process_hopopts(%struct.mbuf* %69, i32* %72, i32 %73, i32* %74, i32* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %54
  %79 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  store %struct.mbuf* null, %struct.mbuf** %79, align 8
  store i32 -1, i32* %5, align 4
  br label %85

80:                                               ; preds = %54
  %81 = load i32, i32* %11, align 4
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %84 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  store %struct.mbuf* %83, %struct.mbuf** %84, align 8
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %78, %50, %26
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i32) #1

declare dso_local i32 @IP6STAT_INC(i32) #1

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

declare dso_local i64 @ip6_process_hopopts(%struct.mbuf*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
