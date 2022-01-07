; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_mroute.c_del_m6if_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_mroute.c_del_m6if_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mif6 = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@mif6table = common dso_local global %struct.mif6* null, align 8
@nummifs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MIFF_REGISTER = common dso_local global i32 0, align 4
@reg_mif_num = common dso_local global i32 0, align 4
@multicast_register_if6 = common dso_local global i32* null, align 8
@DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"mif %d, nummifs %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @del_m6if_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_m6if_locked(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mif6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load %struct.mif6*, %struct.mif6** @mif6table, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.mif6, %struct.mif6* %7, i64 %10
  store %struct.mif6* %11, %struct.mif6** %4, align 8
  %12 = call i32 (...) @MIF6_LOCK_ASSERT()
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @nummifs, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %80

19:                                               ; preds = %1
  %20 = load %struct.mif6*, %struct.mif6** %4, align 8
  %21 = getelementptr inbounds %struct.mif6, %struct.mif6* %20, i32 0, i32 1
  %22 = load %struct.ifnet*, %struct.ifnet** %21, align 8
  %23 = icmp eq %struct.ifnet* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %80

26:                                               ; preds = %19
  %27 = load %struct.mif6*, %struct.mif6** %4, align 8
  %28 = getelementptr inbounds %struct.mif6, %struct.mif6* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MIFF_REGISTER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load %struct.mif6*, %struct.mif6** %4, align 8
  %35 = getelementptr inbounds %struct.mif6, %struct.mif6* %34, i32 0, i32 1
  %36 = load %struct.ifnet*, %struct.ifnet** %35, align 8
  store %struct.ifnet* %36, %struct.ifnet** %6, align 8
  %37 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %38 = call i32 @if_allmulti(%struct.ifnet* %37, i32 0)
  br label %51

39:                                               ; preds = %26
  %40 = load i32, i32* @reg_mif_num, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32*, i32** @multicast_register_if6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32*, i32** @multicast_register_if6, align 8
  %47 = call i32 @if_detach(i32* %46)
  %48 = load i32*, i32** @multicast_register_if6, align 8
  %49 = call i32 @if_free(i32* %48)
  store i32 -1, i32* @reg_mif_num, align 4
  store i32* null, i32** @multicast_register_if6, align 8
  br label %50

50:                                               ; preds = %45, %42, %39
  br label %51

51:                                               ; preds = %50, %33
  %52 = load %struct.mif6*, %struct.mif6** %4, align 8
  %53 = ptrtoint %struct.mif6* %52 to i32
  %54 = call i32 @bzero(i32 %53, i32 16)
  %55 = load i32, i32* @nummifs, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %70, %51
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.mif6*, %struct.mif6** @mif6table, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mif6, %struct.mif6* %60, i64 %63
  %65 = getelementptr inbounds %struct.mif6, %struct.mif6* %64, i32 0, i32 1
  %66 = load %struct.ifnet*, %struct.ifnet** %65, align 8
  %67 = icmp ne %struct.ifnet* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %73

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %5, align 4
  br label %56

73:                                               ; preds = %68, %56
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* @nummifs, align 4
  %75 = load i32, i32* @DEBUG_ANY, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @nummifs, align 4
  %79 = call i32 @MRT6_DLOG(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %73, %24, %17
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @MIF6_LOCK_ASSERT(...) #1

declare dso_local i32 @if_allmulti(%struct.ifnet*, i32) #1

declare dso_local i32 @if_detach(i32*) #1

declare dso_local i32 @if_free(i32*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @MRT6_DLOG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
