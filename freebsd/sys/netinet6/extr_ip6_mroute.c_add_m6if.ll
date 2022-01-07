; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_mroute.c_add_m6if.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_mroute.c_add_m6if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mif6 = type { i32, i64, i64, i64, i64, %struct.ifnet* }
%struct.ifnet = type { i32, i64 }
%struct.mif6ctl = type { i64, i64, i32 }

@MAXMIFS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@mif6table = common dso_local global %struct.mif6* null, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@V_if_index = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@MIFF_REGISTER = common dso_local global i32 0, align 4
@reg_mif_num = common dso_local global i64 0, align 8
@IFT_OTHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"register_mif\00", align 1
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@multicast_register_if6 = common dso_local global %struct.ifnet* null, align 8
@IFF_MULTICAST = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@nummifs = common dso_local global i64 0, align 8
@DEBUG_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"mif #%d, phyint %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mif6ctl*)* @add_m6if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_m6if(%struct.mif6ctl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mif6ctl*, align 8
  %4 = alloca %struct.mif6*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store %struct.mif6ctl* %0, %struct.mif6ctl** %3, align 8
  %7 = call i32 (...) @MIF6_LOCK()
  %8 = load %struct.mif6ctl*, %struct.mif6ctl** %3, align 8
  %9 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MAXMIFS, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 (...) @MIF6_UNLOCK()
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %2, align 4
  br label %136

16:                                               ; preds = %1
  %17 = load %struct.mif6*, %struct.mif6** @mif6table, align 8
  %18 = load %struct.mif6ctl*, %struct.mif6ctl** %3, align 8
  %19 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.mif6, %struct.mif6* %17, i64 %20
  store %struct.mif6* %21, %struct.mif6** %4, align 8
  %22 = load %struct.mif6*, %struct.mif6** %4, align 8
  %23 = getelementptr inbounds %struct.mif6, %struct.mif6* %22, i32 0, i32 5
  %24 = load %struct.ifnet*, %struct.ifnet** %23, align 8
  %25 = icmp ne %struct.ifnet* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = call i32 (...) @MIF6_UNLOCK()
  %28 = load i32, i32* @EADDRINUSE, align 4
  store i32 %28, i32* %2, align 4
  br label %136

29:                                               ; preds = %16
  %30 = load %struct.mif6ctl*, %struct.mif6ctl** %3, align 8
  %31 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.mif6ctl*, %struct.mif6ctl** %3, align 8
  %36 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @V_if_index, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %29
  %41 = call i32 (...) @MIF6_UNLOCK()
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %136

43:                                               ; preds = %34
  %44 = load %struct.mif6ctl*, %struct.mif6ctl** %3, align 8
  %45 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.ifnet* @ifnet_byindex(i64 %46)
  store %struct.ifnet* %47, %struct.ifnet** %5, align 8
  %48 = load %struct.mif6ctl*, %struct.mif6ctl** %3, align 8
  %49 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MIFF_REGISTER, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %43
  %55 = load i64, i64* @reg_mif_num, align 8
  %56 = icmp eq i64 %55, -1
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load i32, i32* @IFT_OTHER, align 4
  %59 = call %struct.ifnet* @if_alloc(i32 %58)
  store %struct.ifnet* %59, %struct.ifnet** %5, align 8
  %60 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %61 = call i32 @if_initname(%struct.ifnet* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  %62 = load i32, i32* @IFF_LOOPBACK, align 4
  %63 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %68 = call i32 @if_attach(%struct.ifnet* %67)
  %69 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %69, %struct.ifnet** @multicast_register_if6, align 8
  %70 = load %struct.mif6ctl*, %struct.mif6ctl** %3, align 8
  %71 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* @reg_mif_num, align 8
  %73 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mif6ctl*, %struct.mif6ctl** %3, align 8
  %77 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %80

78:                                               ; preds = %54
  %79 = load %struct.ifnet*, %struct.ifnet** @multicast_register_if6, align 8
  store %struct.ifnet* %79, %struct.ifnet** %5, align 8
  br label %80

80:                                               ; preds = %78, %57
  br label %100

81:                                               ; preds = %43
  %82 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IFF_MULTICAST, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = call i32 (...) @MIF6_UNLOCK()
  %90 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %90, i32* %2, align 4
  br label %136

91:                                               ; preds = %81
  %92 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %93 = call i32 @if_allmulti(%struct.ifnet* %92, i32 1)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = call i32 (...) @MIF6_UNLOCK()
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %136

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %80
  %101 = load %struct.mif6ctl*, %struct.mif6ctl** %3, align 8
  %102 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.mif6*, %struct.mif6** %4, align 8
  %105 = getelementptr inbounds %struct.mif6, %struct.mif6* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %107 = load %struct.mif6*, %struct.mif6** %4, align 8
  %108 = getelementptr inbounds %struct.mif6, %struct.mif6* %107, i32 0, i32 5
  store %struct.ifnet* %106, %struct.ifnet** %108, align 8
  %109 = load %struct.mif6*, %struct.mif6** %4, align 8
  %110 = getelementptr inbounds %struct.mif6, %struct.mif6* %109, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = load %struct.mif6*, %struct.mif6** %4, align 8
  %112 = getelementptr inbounds %struct.mif6, %struct.mif6* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = load %struct.mif6*, %struct.mif6** %4, align 8
  %114 = getelementptr inbounds %struct.mif6, %struct.mif6* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.mif6*, %struct.mif6** %4, align 8
  %116 = getelementptr inbounds %struct.mif6, %struct.mif6* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load i64, i64* @nummifs, align 8
  %118 = load %struct.mif6ctl*, %struct.mif6ctl** %3, align 8
  %119 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sle i64 %117, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %100
  %123 = load %struct.mif6ctl*, %struct.mif6ctl** %3, align 8
  %124 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* @nummifs, align 8
  br label %127

127:                                              ; preds = %122, %100
  %128 = call i32 (...) @MIF6_UNLOCK()
  %129 = load i32, i32* @DEBUG_ANY, align 4
  %130 = load %struct.mif6ctl*, %struct.mif6ctl** %3, align 8
  %131 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %134 = call i32 @if_name(%struct.ifnet* %133)
  %135 = call i32 @MRT6_DLOG(i32 %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %132, i32 %134)
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %127, %96, %88, %40, %26, %13
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @MIF6_LOCK(...) #1

declare dso_local i32 @MIF6_UNLOCK(...) #1

declare dso_local %struct.ifnet* @ifnet_byindex(i64) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @if_allmulti(%struct.ifnet*, i32) #1

declare dso_local i32 @MRT6_DLOG(i32, i8*, i64, i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
