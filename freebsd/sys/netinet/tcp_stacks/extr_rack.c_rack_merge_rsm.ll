; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_merge_rsm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_merge_rsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rack_sendmap = type { i64, i32, i64, i64, i64, i32 }

@r_tnext = common dso_local global i32 0, align 4
@RACK_HAS_FIN = common dso_local global i32 0, align 4
@RACK_TLP = common dso_local global i32 0, align 4
@RACK_RWND_COLLAPSED = common dso_local global i32 0, align 4
@rack_rb_tree_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rack_sendmap* (%struct.tcp_rack*, %struct.rack_sendmap*, %struct.rack_sendmap*)* @rack_merge_rsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rack_sendmap* @rack_merge_rsm(%struct.tcp_rack* %0, %struct.rack_sendmap* %1, %struct.rack_sendmap* %2) #0 {
  %4 = alloca %struct.tcp_rack*, align 8
  %5 = alloca %struct.rack_sendmap*, align 8
  %6 = alloca %struct.rack_sendmap*, align 8
  %7 = alloca %struct.rack_sendmap*, align 8
  store %struct.tcp_rack* %0, %struct.tcp_rack** %4, align 8
  store %struct.rack_sendmap* %1, %struct.rack_sendmap** %5, align 8
  store %struct.rack_sendmap* %2, %struct.rack_sendmap** %6, align 8
  %8 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %9 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %12 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %14 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %17 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %22 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %25 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %3
  %27 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %28 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %33 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %36 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %41 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %46 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %49 = load i32, i32* @r_tnext, align 4
  %50 = call i32 @TAILQ_REMOVE(i32* %47, %struct.rack_sendmap* %48, i32 %49)
  %51 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %52 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %44, %39
  %54 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %55 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @RACK_HAS_FIN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* @RACK_HAS_FIN, align 4
  %62 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %63 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %68 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @RACK_TLP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32, i32* @RACK_TLP, align 4
  %75 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %76 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %66
  %80 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %81 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @RACK_RWND_COLLAPSED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32, i32* @RACK_RWND_COLLAPSED, align 4
  %88 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %89 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %86, %79
  %93 = load i32, i32* @rack_rb_tree_head, align 4
  %94 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %95 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %98 = call %struct.rack_sendmap* @RB_REMOVE(i32 %93, i32* %96, %struct.rack_sendmap* %97)
  store %struct.rack_sendmap* %98, %struct.rack_sendmap** %7, align 8
  %99 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %100 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %92
  %104 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %105 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %110 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %113 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %115 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %108, %103, %92
  %117 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %118 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %119 = call i32 @rack_free(%struct.tcp_rack* %117, %struct.rack_sendmap* %118)
  %120 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  ret %struct.rack_sendmap* %120
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.rack_sendmap*, i32) #1

declare dso_local %struct.rack_sendmap* @RB_REMOVE(i32, i32*, %struct.rack_sendmap*) #1

declare dso_local i32 @rack_free(%struct.tcp_rack*, %struct.rack_sendmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
