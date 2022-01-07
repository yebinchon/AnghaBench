; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_free_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_free_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule = type { i64, i64, i32, i32, i32, %struct.TYPE_14__, i64, i64, %struct.TYPE_13__, %struct.TYPE_10__, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@V_pf_tags = common dso_local global i32 0, align 4
@M_PFRULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_free_rule(%struct.pf_rule* %0) #0 {
  %2 = alloca %struct.pf_rule*, align 8
  store %struct.pf_rule* %0, %struct.pf_rule** %2, align 8
  %3 = call i32 (...) @PF_RULES_WASSERT()
  %4 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %5 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %4, i32 0, i32 11
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %10 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %9, i32 0, i32 11
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @tag_unref(i32* @V_pf_tags, i64 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %15 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %14, i32 0, i32 10
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %20 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %19, i32 0, i32 10
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @tag_unref(i32* @V_pf_tags, i64 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %25 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %45 [
    i32 129, label %29
    i32 128, label %37
  ]

29:                                               ; preds = %23
  %30 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %31 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pfi_dynaddr_remove(i32 %35)
  br label %45

37:                                               ; preds = %23
  %38 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %39 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @pfr_detach_table(i64 %43)
  br label %45

45:                                               ; preds = %23, %37, %29
  %46 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %47 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %67 [
    i32 129, label %51
    i32 128, label %59
  ]

51:                                               ; preds = %45
  %52 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %53 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pfi_dynaddr_remove(i32 %57)
  br label %67

59:                                               ; preds = %45
  %60 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %61 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %60, i32 0, i32 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @pfr_detach_table(i64 %65)
  br label %67

67:                                               ; preds = %45, %59, %51
  %68 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %69 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %74 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @pfr_detach_table(i64 %75)
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %79 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %84 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @pfi_kif_unref(i64 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %89 = call i32 @pf_anchor_remove(%struct.pf_rule* %88)
  %90 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %91 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = call i32 @pf_empty_pool(i32* %92)
  %94 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %95 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @counter_u64_free(i32 %96)
  %98 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %99 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @counter_u64_free(i32 %100)
  %102 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %103 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @counter_u64_free(i32 %104)
  %106 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %107 = load i32, i32* @M_PFRULE, align 4
  %108 = call i32 @free(%struct.pf_rule* %106, i32 %107)
  ret void
}

declare dso_local i32 @PF_RULES_WASSERT(...) #1

declare dso_local i32 @tag_unref(i32*, i64) #1

declare dso_local i32 @pfi_dynaddr_remove(i32) #1

declare dso_local i32 @pfr_detach_table(i64) #1

declare dso_local i32 @pfi_kif_unref(i64) #1

declare dso_local i32 @pf_anchor_remove(%struct.pf_rule*) #1

declare dso_local i32 @pf_empty_pool(i32*) #1

declare dso_local i32 @counter_u64_free(i32) #1

declare dso_local i32 @free(%struct.pf_rule*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
