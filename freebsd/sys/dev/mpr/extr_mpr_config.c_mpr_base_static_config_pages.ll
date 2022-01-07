; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_config.c_mpr_base_static_config_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_config.c_mpr_base_static_config_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MPI2_MAN_PG11_ADDLFLAGS2_CUSTOM_TM_HANDLING_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpr_base_static_config_pages(%struct.mpr_softc* %0) #0 {
  %2 = alloca %struct.mpr_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %9 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %9, i32 0, i32 3
  %11 = call i64 @mpr_config_get_ioc_pg8(%struct.mpr_softc* %8, i32* %3, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 5
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %13
  br label %7

20:                                               ; preds = %18, %7
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %23 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %23, i32 0, i32 2
  %25 = call i64 @mpr_config_get_iounit_pg8(%struct.mpr_softc* %22, i32* %3, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 5
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %34

33:                                               ; preds = %27
  br label %21

34:                                               ; preds = %32, %21
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %45, %34
  %36 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %37 = call i32 @mpr_config_get_man_pg11(%struct.mpr_softc* %36, i32* %3, %struct.TYPE_3__* %4)
  store i32 %37, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 5
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %46

45:                                               ; preds = %39
  br label %35

46:                                               ; preds = %44, %35
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %77, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16toh(i32 %51)
  %53 = load i32, i32* @MPI2_MAN_PG11_ADDLFLAGS2_CUSTOM_TM_HANDLING_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %56 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %60 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %62 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 6
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %67 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %66, i32 0, i32 1
  store i32 6, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %49
  %69 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %70 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 60
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %75 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %74, i32 0, i32 1
  store i32 60, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76, %46
  ret void
}

declare dso_local i64 @mpr_config_get_ioc_pg8(%struct.mpr_softc*, i32*, i32*) #1

declare dso_local i64 @mpr_config_get_iounit_pg8(%struct.mpr_softc*, i32*, i32*) #1

declare dso_local i32 @mpr_config_get_man_pg11(%struct.mpr_softc*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
