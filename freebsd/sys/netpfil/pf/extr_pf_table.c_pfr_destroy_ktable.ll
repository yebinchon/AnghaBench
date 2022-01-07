; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_destroy_ktable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_destroy_ktable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { i32, i32, i32**, i32**, %struct.TYPE_2__*, %struct.pfr_ktable*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.pfr_kentryworkq = type { i32 }

@PFR_DIR_MAX = common dso_local global i32 0, align 4
@PFR_OP_TABLE_MAX = common dso_local global i32 0, align 4
@M_PFTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_ktable*, i32)* @pfr_destroy_ktable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_destroy_ktable(%struct.pfr_ktable* %0, i32 %1) #0 {
  %3 = alloca %struct.pfr_ktable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_kentryworkq, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %12 = call i32 @pfr_enqueue_addrs(%struct.pfr_ktable* %11, %struct.pfr_kentryworkq* %5, i32* null, i32 0)
  %13 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %14 = call i32 @pfr_clean_node_mask(%struct.pfr_ktable* %13, %struct.pfr_kentryworkq* %5)
  %15 = call i32 @pfr_destroy_kentries(%struct.pfr_kentryworkq* %5)
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %18 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %23 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %22, i32 0, i32 7
  %24 = bitcast i32** %23 to i8**
  %25 = call i32 @rn_detachhead(i8** %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %28 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %33 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %32, i32 0, i32 6
  %34 = bitcast i32** %33 to i8**
  %35 = call i32 @rn_detachhead(i8** %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %38 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %37, i32 0, i32 5
  %39 = load %struct.pfr_ktable*, %struct.pfr_ktable** %38, align 8
  %40 = icmp ne %struct.pfr_ktable* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %43 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %42, i32 0, i32 5
  %44 = load %struct.pfr_ktable*, %struct.pfr_ktable** %43, align 8
  %45 = load i32, i32* %4, align 4
  call void @pfr_destroy_ktable(%struct.pfr_ktable* %44, i32 %45)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %48 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %53 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %59 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = call i32 @pf_remove_if_empty_ruleset(%struct.TYPE_2__* %60)
  br label %62

62:                                               ; preds = %51, %46
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %101, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @PFR_DIR_MAX, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %97, %67
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @PFR_OP_TABLE_MAX, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %68
  %73 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %74 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %73, i32 0, i32 3
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @counter_u64_free(i32 %83)
  %85 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %86 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %85, i32 0, i32 2
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @counter_u64_free(i32 %95)
  br label %97

97:                                               ; preds = %72
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %68

100:                                              ; preds = %68
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %63

104:                                              ; preds = %63
  %105 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %106 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @counter_u64_free(i32 %107)
  %109 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %110 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @counter_u64_free(i32 %111)
  %113 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %114 = load i32, i32* @M_PFTABLE, align 4
  %115 = call i32 @free(%struct.pfr_ktable* %113, i32 %114)
  ret void
}

declare dso_local i32 @pfr_enqueue_addrs(%struct.pfr_ktable*, %struct.pfr_kentryworkq*, i32*, i32) #1

declare dso_local i32 @pfr_clean_node_mask(%struct.pfr_ktable*, %struct.pfr_kentryworkq*) #1

declare dso_local i32 @pfr_destroy_kentries(%struct.pfr_kentryworkq*) #1

declare dso_local i32 @rn_detachhead(i8**) #1

declare dso_local i32 @pf_remove_if_empty_ruleset(%struct.TYPE_2__*) #1

declare dso_local i32 @counter_u64_free(i32) #1

declare dso_local i32 @free(%struct.pfr_ktable*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
