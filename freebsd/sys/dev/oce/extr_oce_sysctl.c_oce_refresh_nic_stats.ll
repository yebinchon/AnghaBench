; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_sysctl.c_oce_refresh_nic_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_sysctl.c_oce_refresh_nic_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oce_refresh_nic_stats(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %6 = call i64 @IS_BE2(%struct.TYPE_15__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = call i32 @oce_mbox_get_nic_stats_v0(%struct.TYPE_15__* %9, i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = call i32 @copy_stats_to_sc_be2(%struct.TYPE_15__* %16)
  br label %18

18:                                               ; preds = %15, %8
  br label %68

19:                                               ; preds = %1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = call i64 @IS_BE3(%struct.TYPE_15__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = call i32 @oce_mbox_get_nic_stats_v1(%struct.TYPE_15__* %24, i32* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = call i32 @copy_stats_to_sc_be3(%struct.TYPE_15__* %31)
  br label %33

33:                                               ; preds = %30, %23
  br label %67

34:                                               ; preds = %19
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %36 = call i64 @IS_SH(%struct.TYPE_15__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = call i32 @oce_mbox_get_nic_stats_v2(%struct.TYPE_15__* %39, i32* %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %47 = call i32 @copy_stats_to_sc_sh(%struct.TYPE_15__* %46)
  br label %48

48:                                               ; preds = %45, %38
  br label %66

49:                                               ; preds = %34
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %51 = call i64 @IS_XE201(%struct.TYPE_15__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @oce_mbox_get_pport_stats(%struct.TYPE_15__* %54, i32* %56, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %63 = call i32 @copy_stats_to_sc_xe201(%struct.TYPE_15__* %62)
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %48
  br label %67

67:                                               ; preds = %66, %33
  br label %68

68:                                               ; preds = %67, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @IS_BE2(%struct.TYPE_15__*) #1

declare dso_local i32 @oce_mbox_get_nic_stats_v0(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @copy_stats_to_sc_be2(%struct.TYPE_15__*) #1

declare dso_local i64 @IS_BE3(%struct.TYPE_15__*) #1

declare dso_local i32 @oce_mbox_get_nic_stats_v1(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @copy_stats_to_sc_be3(%struct.TYPE_15__*) #1

declare dso_local i64 @IS_SH(%struct.TYPE_15__*) #1

declare dso_local i32 @oce_mbox_get_nic_stats_v2(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @copy_stats_to_sc_sh(%struct.TYPE_15__*) #1

declare dso_local i64 @IS_XE201(%struct.TYPE_15__*) #1

declare dso_local i32 @oce_mbox_get_pport_stats(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @copy_stats_to_sc_xe201(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
