; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_ktls.c_ktls_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_ktls.c_ktls_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktls_session = type { i32, %struct.TYPE_2__, i32, i32 (%struct.ktls_session*)*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32*, i32*, i32 }

@ktls_offload_active = common dso_local global i32 0, align 4
@ktls_sw_cbc = common dso_local global i32 0, align 4
@ktls_sw_gcm = common dso_local global i32 0, align 4
@ktls_ifnet_cbc = common dso_local global i32 0, align 4
@ktls_ifnet_gcm = common dso_local global i32 0, align 4
@M_KTLS = common dso_local global i32 0, align 4
@ktls_toe_cbc = common dso_local global i32 0, align 4
@ktls_toe_gcm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ktls_session*)* @ktls_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktls_cleanup(%struct.ktls_session* %0) #0 {
  %2 = alloca %struct.ktls_session*, align 8
  store %struct.ktls_session* %0, %struct.ktls_session** %2, align 8
  %3 = load i32, i32* @ktls_offload_active, align 4
  %4 = call i32 @counter_u64_add(i32 %3, i32 -1)
  %5 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %6 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %47 [
    i32 129, label %8
    i32 130, label %31
  ]

8:                                                ; preds = %1
  %9 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %10 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @MPASS(i32 %13)
  %15 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %16 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %25 [
    i32 132, label %19
    i32 131, label %22
  ]

19:                                               ; preds = %8
  %20 = load i32, i32* @ktls_sw_cbc, align 4
  %21 = call i32 @counter_u64_add(i32 %20, i32 -1)
  br label %25

22:                                               ; preds = %8
  %23 = load i32, i32* @ktls_sw_gcm, align 4
  %24 = call i32 @counter_u64_add(i32 %23, i32 -1)
  br label %25

25:                                               ; preds = %8, %22, %19
  %26 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %27 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %26, i32 0, i32 3
  %28 = load i32 (%struct.ktls_session*)*, i32 (%struct.ktls_session*)** %27, align 8
  %29 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %30 = call i32 %28(%struct.ktls_session* %29)
  br label %47

31:                                               ; preds = %1
  %32 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %33 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %42 [
    i32 132, label %36
    i32 131, label %39
  ]

36:                                               ; preds = %31
  %37 = load i32, i32* @ktls_ifnet_cbc, align 4
  %38 = call i32 @counter_u64_add(i32 %37, i32 -1)
  br label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ktls_ifnet_gcm, align 4
  %41 = call i32 @counter_u64_add(i32 %40, i32 -1)
  br label %42

42:                                               ; preds = %31, %39, %36
  %43 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %44 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @m_snd_tag_rele(i32 %45)
  br label %47

47:                                               ; preds = %1, %42, %25
  %48 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %49 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %75

53:                                               ; preds = %47
  %54 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %55 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %59 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @explicit_bzero(i32* %57, i32 %61)
  %63 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %64 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @M_KTLS, align 4
  %68 = call i32 @free(i32* %66, i32 %67)
  %69 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %70 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  %72 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %73 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %53, %47
  %76 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %77 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %103

81:                                               ; preds = %75
  %82 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %83 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %87 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @explicit_bzero(i32* %85, i32 %89)
  %91 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %92 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @M_KTLS, align 4
  %96 = call i32 @free(i32* %94, i32 %95)
  %97 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %98 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  store i32* null, i32** %99, align 8
  %100 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %101 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %81, %75
  %104 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %105 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @explicit_bzero(i32* %107, i32 8)
  ret void
}

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @m_snd_tag_rele(i32) #1

declare dso_local i32 @explicit_bzero(i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
